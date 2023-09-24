local module = {}
local modulesFolder = script.Parent.Repo
local newPart = require(modulesFolder.newPart)
local Tween = require(modulesFolder.Tween)

module.Color = Color3.new(0,0,1)

function module:circleExplosion(pos)
    local Circle = newPart {
        Shape = Enum.PartType.Cylinder,
        Name = "VFX",
		Size = Vector3.new(1,10,10),
		Anchored = true,
		Orientation = Vector3.new(0,0,-90),
		Material = Enum.Material.Neon,
		Color = module.Color,
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
		Color = module.Color,
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
		Color = module.Color,
		Position = pos
	}
	Tween.tween(3, {
		Transparency = 1,
		Size = Vector3.new(50,50,50),
	}, Sphere)
	game.Debris:AddItem(Sphere, 3)
end

function module:blockExplosion(pos)
	local Block = newPart {
		Name="VFX",
		Size=Vector3.new(10,10,10),
		Anchored = true,
		Material = Enum.Material.Neon,
		Color = module.Color,
		Position = pos
	}
	Tween.tween(3, {Transparency = 1, Size = Vector3.new(50,50,50)}, Block)
	game.Debris:AddItem(Sphere, 3)
end

local explosionPacks = {
	["Bust"] = function(pos)
		module:sphereExplosion(pos)
		module:circleExplosion(pos)
	end
}

function module:stockExplosion(explosionName, position)
	do
		local explosionFunction = explosionPacks[explosionName]

		if explosionFunction ~= nil then
			
			explosionFunction(position)

		else

			warn("Explosion type not found, are you sure you typed it well?")
			
		end
	end
end

return module
