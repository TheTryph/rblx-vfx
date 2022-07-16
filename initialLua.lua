local module = {}
local modulesFolder = game.ReplicatedStorage.Packages.Repo
local newPart = require(modulesFolder.newPart)

function module:circleExplosion(pos)
    local Circle = newPart {
        Shape = "Circle",
        Name = "VFX",
        Size = Vector3.new(1,1,1)
    }
    print("Circle Made")
end

return module