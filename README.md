# rblx-vfx
A simple module for roblox VFX

## Installation guide: (You need to have HTTPENABLED turned on!)

Execute the following command into the studio's command bar.

```local f = loadstring(game.HttpService:GetAsync("https://raw.githubusercontent.com/TheTryph/rblx-vfx/main/compiler.lua")) f()```

*For the non HTTPSenabled experiences:*:

```game.HttpService.HttpEnabled = true local f = loadstring(game.HttpService:GetAsync("https://raw.githubusercontent.com/TheTryph/rblx-vfx/main/compiler.lua")) f() game.HttpService.HttpEnabled = false```

(Note: A Packages folder will be created in ReplicatedStorage, you can rename it whatever you want to, as long as the descendants of the folder aren't touched.)

# Documentation:

## Functions:
Module's functions:

`module:circleExplosion(pos : Vector3)`
Ideal for making circle explosions

`module:tallExplosion(pos : Vector3)`
Ideal for making tall circle explosions

`module:sphericalExplosion(pos : Vector3)`
Ideal for making spherical explosions

`module:blockExplosion(pos : Vector3)`
Ideal for making cubical explosions. (Proposed by TheTryph at 24th september 2023.)

`module:stockExplosion(explosionName : stockExplosionName, pos : Vector3)`

## Properties
Module's properties

`module.Color = Color3`
Sets the color that the parts use, by default it is blue


# API:

`void module:circleExplosion(pos : Vector3)`
`void module:tallExplosion(pos : Vector3)`
`void module:sphericalExplosion(pos : Vector3)`
`void module:blockExplosion(pos : Vector3)`
`Color3 module.Color`