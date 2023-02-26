local Vignette = true

local Lighting = game:GetService("Lighting")
local StarterGui = game:GetService("StarterGui")
local Bloom = Instance.new("BloomEffect")
local Blur = Instance.new("BlurEffect")
local ColorCor = Instance.new("ColorCorrectionEffect")
local SunRays = Instance.new("SunRaysEffect")
local Sky = Instance.new("Sky")
local Atm = Instance.new("Atmosphere")


for i, v in pairs(Lighting:GetChildren()) do
	if v then
		v:Destroy()
	end
end

Bloom.Parent = Lighting
Blur.Parent = Lighting
ColorCor.Parent = Lighting
SunRays.Parent = Lighting
Sky.Parent = Lighting
Atm.Parent = Lighting

if Vignette == true then
	local Gui = Instance.new("ScreenGui")
	Gui.Parent = StarterGui
	Gui.IgnoreGuiInset = true
	
	local ShadowFrame = Instance.new("ImageLabel")
	ShadowFrame.Parent = Gui
	ShadowFrame.AnchorPoint = Vector2.new(0.5,1)
	ShadowFrame.Position = UDim2.new(0.5,0,1,0)
	ShadowFrame.Size = UDim2.new(1,0,1.05,0)
	ShadowFrame.BackgroundTransparency = 1
	ShadowFrame.Image = "rbxassetid://4576475446"
	ShadowFrame.ImageTransparency = 0.3
	ShadowFrame.ZIndex = 10
end

Bloom.Intensity = 0.3
Bloom.Size = 10
Bloom.Threshold = 0.8

Blur.Size = 5

ColorCor.Brightness = 0.1
ColorCor.Contrast = 0.5
ColorCor.Saturation = -0.3
ColorCor.TintColor = Color3.fromRGB(255, 235, 203)

SunRays.Intensity = 0.075
SunRays.Spread = 0.727

Sky.SkyboxBk = "http://www.roblox.com/asset/?id=4498828382"
Sky.SkyboxDn = "http://www.roblox.com/asset/?id=4498828812"
Sky.SkyboxFt = "http://www.roblox.com/asset/?id=4498829917"
Sky.SkyboxLf = "http://www.roblox.com/asset/?id=4498830911"
Sky.SkyboxRt = "http://www.roblox.com/asset/?id=4498830417"
Sky.SkyboxUp = "http://www.roblox.com/asset/?id=4498831746"
Sky.SunAngularSize = 0

Lighting.Ambient = Color3.fromRGB(109, 110, 108)
Lighting.Brightness = 0.13
Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
Lighting.ColorShift_Top = Color3.fromRGB(0,0,0)
Lighting.EnvironmentDiffuseScale = 0.2
Lighting.EnvironmentSpecularScale = 0.2
Lighting.GlobalShadows = true
Lighting.OutdoorAmbient = Color3.fromRGB(0,0,0)
Lighting.ShadowSoftness = 0.3
Lighting.ClockTime = 15
Lighting.GeographicLatitude = 45
Lighting.ExposureCompensation = 0.5

Atm.Density = 0.564
Atm.Offset = 0.556
Atm.Color = Color3.fromRGB(161, 165, 162)
Atm.Decay = Color3.fromRGB(161, 165, 162)
Atm.Glare = 0.36
Atm.Haze = 1.72

local Color 		= Color3.new(0.9, 0.95, 1)	-- Color of the rain.
local DropWidth 	= 0.05 					-- The width of the long shape used for the rain part
local DropLength	= 2.6					-- The length of the long shape used for the rain part.
local EffectRadius	= 50					-- Distance around the camera that rain spawns in.
local Material		= Enum.Material.Glass	-- Material of the part that makes the 
local Rate 			= 35					-- Snow particles spawned per second

local X_SPEED		= 0						-- The speed on the world X axis. Use this to create a windy effect.
local Z_SPEED		= 0						-- Same as above, but for world Z.
--These values are angles, so a good value for very strong wind is 45
-----------------
--[[MAIN CODE]]--
-----------------
function CircleCFrame(Origin) --Able to cast a CFrame in a circle around an origin point.
	local X = math.random(0, EffectRadius) - (EffectRadius / 2)
	local Z = math.random(0, EffectRadius) - (EffectRadius / 2)
	local Y = math.random(0, EffectRadius) + 5
	return CFrame.new(Origin) * CFrame.new(X, Y, Z)
end

function CreateRain(OriginPoint)
	--Create
	local Part = Instance.new("Part")
	Part.TopSurface = Enum.SurfaceType.Smooth
	Part.BottomSurface = Enum.SurfaceType.Smooth
	Part.CanCollide = false
	Part.Size = Vector3.new(DropWidth, DropLength, DropWidth)
	Part.Color = Color
	Part.Material = Material
	Part.Transparency = 0.25
	Part.CFrame = CircleCFrame(OriginPoint)
	Part.Orientation = Vector3.new(X_SPEED, 0, Z_SPEED)
	Part.Velocity = Part.CFrame.upVector * -100


	--Parent
	
	game:GetService("Debris"):AddItem(Part, 10)
end

while wait(1/Rate) do
	CreateRain(workspace.CurrentCamera.CoordinateFrame.p)
end
