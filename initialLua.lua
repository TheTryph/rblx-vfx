local module = {}
local modulesFolder = script.Parent.Repo
local newPart = require(modulesFolder.newPart)
local Tween = require(modulesFolder.Tween)

module.Color = Color3.new(0,0,1)

function module:circleExplosion(pos, size)
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

function module:tallExplosion(pos, size)
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

function module:sphereExplosion(pos, size)
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

function module:blockExplosion(pos, size)
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
	["Bust"] = function(pos, size)
		module:sphereExplosion(pos)
		module:circleExplosion(pos)
	end,
	["Pillar"] = function (pos, size)
		module:tallExplosion(pos)
		module:circleExplosion(pos)
	end,
	["LargeThump"] = function(pos, size)
		module:circleExplosion(pos)
	end
}

function module:stockExplosion(explosionName, position, size)
	do
		local explosionFunction = explosionPacks[explosionName]

		if explosionFunction ~= nil then
			
			explosionFunction(position, size)

		else

			warn("Explosion type not found, are you sure you typed it well?")
			
		end
	end
end

return module
