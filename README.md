# rblx-vfx
A simple module for roblox VFX

## Installation guide:

Download the latest release of the module in the releases tab.

# Documentation:

## Functions:
Module's functions:

`module:circleExplosion(pos : Vector3, size : Number)`
Ideal for making circle explosions

`module:tallExplosion(pos : Vector3, size : Number)`
Ideal for making tall circle explosions

`module:sphericalExplosion(pos : Vector3, size : Number)`
Ideal for making spherical explosions

`module:blockExplosion(pos : Vector3, size : Number)`
Ideal for making cubical explosions. (Proposed by TheTryph at 24th september 2023.)

`module:stockExplosion(explosionName : stockExplosionName, pos : Vector3, size : Number)`
Ideal for making stock explosions mentioned below.

## Properties
Module's properties

`module.Color = Color3`
Sets the color that the parts use, by default it is blue

## Stock Explosions:
Used by `module:stockExplosions(explosionName, pos, size)`

`Bust`
`Pillar`
`LargeThump`

# API:

`void module:circleExplosion(pos : Vector3, size : Number)`
`void module:tallExplosion(pos : Vector3, size : Number)`
`void module:sphericalExplosion(pos : Vector3, size : Number)`
`void module:blockExplosion(pos : Vector3, size : Number)`
`void module:stockExplosion(explosionName, pos, size)`
`Color3 module.Color`