local URL = "https://raw.githubusercontent.com/TheTryph/rblx-vfx/main/"

local ASSETSTODOWNLOAD = {
    ["Main"] = "initialLua.lua",
    ["newPart"] = "libs/newPart.lua",
    ["Tween"] = "libs/Tween.lua"
}
local Packages = Instance.new("Folder")
Packages.Parent = game.ReplicatedStorage
Packages.Name = "Packages"

for i,v in pairs(ASSETSTODOWNLOAD) do
    local HTTPSERVICE = game:GetService("HttpService")
    local ScriptContent = HTTPSERVICE:GetAsync(URL .. v)

    local Directories = string.split(v, "/")
    Directories[#Directories] = nil

    local viewingFolder = Packages
    for _,d in pairs(Directories) do
        local folderDirectory = viewingFolder:FindFirstChild(d)
        if not folderDirectory then
            local Folder = Instance.new("Folder")
            Folder.Parent = viewingFolder
            Folder.Name = d
            folderDirectory = Folder
        end

        viewingFolder = folderDirectory
    end
    local ModuleScript = Instance.new("ModuleScript")
    ModuleScript.Parent = Packages
    ModuleScript.Source = ScriptContent
    ModuleScript.Name = i
    if i ~= "Main" then
        ModuleScript.Parent = viewingFolder
    end
end
