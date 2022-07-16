local HTTPASSETS = {
    ["Main"] = "https://raw.githubusercontent.com/TheTryph/rblx-vfx/main/initialLua.lua?token=GHSAT0AAAAAABWVDN6KYNFA35O2FW7QGEHMYWSTEXQ",
    ["newPart"] = "https://raw.githubusercontent.com/TheTryph/rblx-vfx/main/newPart.lua?token=GHSAT0AAAAAABWVDN6KLPOEZKKR2UEZY2VQYWSTFUA"
}

local Packages = Instance.new("Folder", game.ReplicatedStorage)
Packages.Name = "Packages"
local Repo = Instance.new("Folder", Packages)
Repo.Name = "Repo"

for i,v in pairs(HTTPASSETS) do
    local HTTPSERVICE = game:GetService("HttpService")
    local ScriptContent = HTTPSERVICE:GetAsync(v)
    local ModuleScript = Instance.new("ModuleScript", Packages)
    ModuleScript.Source = ScriptContent
    ModuleScript.Name = i
    if i ~= "Main" then
        ModuleScript.Parent = Repo
    end
end