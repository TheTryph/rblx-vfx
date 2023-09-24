--[[

INSTRUCTIONS:

How to use
Each function contains the following parameters:
dur - Duration of the tween
prop - Table property
inst - Instance to tween

Functions:

tween(dur, prop, inst) - An ordinary tween with the Enum.EasingStyle.Sine as easingstyle







]]

local tween = {}
local tweenService = game:GetService("TweenService")

function tween.tween(dur, prop, inst)
	local tweenInfo = TweenInfo.new(dur, Enum.EasingStyle.Sine,Enum.EasingDirection.Out, 0)
	tweenService:Create(inst, tweenInfo, prop):Play()
	print("Tween is now tweening.")
end

return tween