local Phonk = Instance.new("ScreenGui")
local MAIN = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local BULLLCRAP = Instance.new("Frame")
local NoBodyCaressss = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")

--Properties:

Phonk.Name = "Phonk"
Phonk.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

MAIN.Name = "MAIN"
MAIN.Parent = Phonk
MAIN.BackgroundColor3 = Color3.fromRGB(52, 149, 0)
MAIN.BorderSizePixel = 0
MAIN.Position = UDim2.new(-0.125072032, 0, 0.398000002, 0)
MAIN.Size = UDim2.new(0, 100, 0, 71)


BULLLCRAP.Name = "BULLLCRAP"
BULLLCRAP.Parent = MAIN
BULLLCRAP.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
BULLLCRAP.BackgroundTransparency = 0.999
BULLLCRAP.BorderSizePixel = 0
BULLLCRAP.ClipsDescendants = true
BULLLCRAP.Position = UDim2.new(0.9900738, 0, -0.00498214364, 0)
BULLLCRAP.Size = UDim2.new(0, 142, 0, 71)

NoBodyCaressss.Name = "NoBodyCaressss"
NoBodyCaressss.Parent = BULLLCRAP
NoBodyCaressss.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
NoBodyCaressss.BorderSizePixel = 0
NoBodyCaressss.Position = UDim2.new(-0.697467625, 0, -0.00666228309, 0)
NoBodyCaressss.Size = UDim2.new(0, 100, 0, 71)

TextLabel_3.Parent = NoBodyCaressss
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.0599999987, 0, 0.478873253, 0)
TextLabel_3.Size = UDim2.new(0, 88, 0, 26)
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = "SCRIPT"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 21.000


wait(0.1)

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
Bloom.Size = 10
Bloom.Threshold = 0.1

Blur.Size = 3

ColorCor.Brightness = 0.2
ColorCor.Contrast = 0.5
ColorCor.Saturation = 0
ColorCor.TintColor = Color3.fromRGB(255, 0, 200)

SunRays.Intensity = 0.07
SunRays.Spread = 0.728


Sky.SunAngularSize = 21

Lighting.Ambient = Color3.fromRGB(105,105,150)
Lighting.Brightness = 0.3
Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
Lighting.ColorShift_Top = Color3.fromRGB(0,0,0)
Lighting.EnvironmentDiffuseScale = 0.2
Lighting.EnvironmentSpecularScale = 0.2
Lighting.GlobalShadows = true
Lighting.OutdoorAmbient = Color3.fromRGB(50,0,50)
Lighting.ShadowSoftness = 0
--day and night cycle

local Time = 0.000
local TimeChange = 0.000


while wait(Time) do
 game.Lighting.ClockTime = game.Lighting.ClockTime + TimeChange
end


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
