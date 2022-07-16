local module = {}
local modulesFolder = game.ReplicatedStorage.Packages.Repo
local newPart = require(modulesFolder.newPart)
local Tween = require(modulesFolder.Tween)

function module:circleExplosion(pos)
    local Circle = newPart {
        Shape = Enum.PartType.Cylinder,
        Name = "VFX",
		Size = Vector3.new(1,10,10),
		Anchored = true,
		Orientation = Vector3.new(0,0,-90),
		Material = Enum.Material.Neon,
		Color = Color3.new(0,0,1),
		Position = pos
	}
	Tween.tween(3, {
		Transparency = 1,
		Size = Vector3.new(1,50,50),
	}, Circle)
	game.Debris:AddItem(Circle, 3)
end

function module:tallExplosion(pos)
	local Circle = newPart {
		Shape = Enum.PartType.Cylinder,
		Name = "VFX",
		Size = Vector3.new(1000,10,10),
		Anchored = true,
		Orientation = Vector3.new(0,0,-90),
		Material = Enum.Material.Neon,
		Color = Color3.new(0,0,1),
		Position = pos
	}
	Tween.tween(3, {
		Transparency = 1,
		Size = Vector3.new(1000,50,50),
	}, Circle)
	game.Debris:AddItem(Circle, 3)
end

function module:sphereExplosion(pos)
	local Sphere = newPart {
		Shape = Enum.PartType.Ball,
		Name = "VFX",
		Size = Vector3.new(10,10,10),
		Anchored = true,
		Orientation = Vector3.new(0,0,-90),
		Material = Enum.Material.Neon,
		Color = Color3.new(0,0,1),
		Position = pos
	}
	Tween.tween(3, {
		Transparency = 1,
		Size = Vector3.new(50,50,50),
	}, Sphere)
	game.Debris:AddItem(Sphere, 3)
end

return module