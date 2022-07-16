# rblx-vfx
A simple module for roblox VFX

## Installation guide: (You need to have HTTPENABLED turned on!)

Execute the following command into the studio's command bar.

```local f = loadstring(game.HttpService:GetAsync("https://raw.githubusercontent.com/TheTryph/rblx-vfx/main/compiler.lua")) f()```

(Note: A Packages folder will be created in ReplicatedStorage, you can rename it whatever you want to, as long as the descendants of the folder aren't touched.)

# Documentation:

`module:circleExplosion(pos)`
Ideal for making circle explosions


`module:tallExplosion(pos)`
Ideal for making tall circle explosions

`module:sphericalExplosion(pos)`
Ideal for making spherical explosions

`module.Color = color3`
Sets the color that the parts use, by default it is blue
