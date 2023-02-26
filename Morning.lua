game.Lighting.ClockTime = 7

local Lighting = game:GetService("Lighting")
local StarterGui = game:GetService("StarterGui")
local Bloom = Instance.new("BloomEffect")
local Blur = Instance.new("BlurEffect")
local ColorCor = Instance.new("ColorCorrectionEffect")
local SunRays = Instance.new("SunRaysEffect")
local Sky = Instance.new("Sky")
local Atm = Instance.new("Atmosphere")
local Gui = Instance.new("ScreenGui")
local ShadowFrame = Instance.new("ImageLabel")

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
Gui.Parent = StarterGui
ShadowFrame.Parent = Gui

Bloom.Intensity = 0.05
Bloom.Size = 17
Bloom.Threshold = 0.1

Blur.Size = 2

ColorCor.Brightness = 0.2
ColorCor.Contrast = 0.9
ColorCor.Saturation = 0.2
ColorCor.TintColor = Color3.fromRGB(255, 235, 203)

SunRays.Intensity = 0.08
SunRays.Spread = 0.728


Sky.SunAngularSize = 21

Lighting.Ambient = Color3.fromRGB(106,106,106)
Lighting.Brightness = 0.4
Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
Lighting.ColorShift_Top = Color3.fromRGB(0,0,0)
Lighting.EnvironmentDiffuseScale = 0.2
Lighting.EnvironmentSpecularScale = 0.2
Lighting.GlobalShadows = true
Lighting.OutdoorAmbient = Color3.fromRGB(0,0,0)
Lighting.ShadowSoftness = 0
--day and night cycle

Lighting.GeographicLatitude = 45
Lighting.ExposureCompensation = 0.5

Atm.Density = 0.364
Atm.Offset = 0.556
Atm.Color = Color3.fromRGB(199, 175, 166)
Atm.Decay = Color3.fromRGB(44, 39, 33)
Atm.Glare = 0.45
Atm.Haze = 1.72

ShadowFrame.AnchorPoint = Vector2.new(0.5,1)
ShadowFrame.Position = UDim2.new(0.5,0,1,0)
ShadowFrame.Size = UDim2.new(1,0,1.05,0)
ShadowFrame.BackgroundTransparency = 1
ShadowFrame.Image = "rbxassetid://4576475446"
ShadowFrame.ImageTransparency = 0.3
