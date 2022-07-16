local HTTPASSETS = {
    ["Main"] = "https://raw.githubusercontent.com/TheTryph/rblx-vfx/main/initialLua.lua?token=GHSAT0AAAAAABWVDN6LRWJHLVXFY4OZSMHCYWSS3GA",
    ["newPart"] = "https://raw.githubusercontent.com/TheTryph/rblx-vfx/main/newPart.lua?token=GHSAT0AAAAAABWVDN6LBQFZVUVPN7CKER6MYWSS3UQ"
}

for i,v in pairs(HTTPASSETS) do
    local Packages = Instance.new("Folder", game.ReplicatedStorage)
    Packages.Name = "Packages"
    local Repo = Instance.new("Folder", Packages)
    Repo.Name = "Repo"
    local HTTPSERVICE = game:GetService("HttpService")
    local ScriptContent = HTTPSERVICE:GetAsync(v)
    local ModuleScript = Instance.new("ModuleScript", Packages)
    ModuleScript.Content = ScriptContent
    if i ~= "Main" then
        ModuleScript.Parent = Repo
    end
end