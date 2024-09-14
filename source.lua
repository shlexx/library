-- HUGEEE credits to infinite yield
local prefix = ";"
local source = {}
local commands = {}
local ts = game:GetService("TweenService")
local inSettings = false
local keepmenuopen = false

function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

local random = Instance.new("ScreenGui")
local e = Instance.new("Frame")
local b = Instance.new("Frame")
local c = Instance.new("ImageButton")
local d = Instance.new("TextLabel")
local g = Instance.new("Frame")
local f = Instance.new("TextBox")
local h = Instance.new("ScrollingFrame")
local i = Instance.new("UIListLayout")
local j = Instance.new("Frame")
local k = Instance.new("TextLabel")
local m = Instance.new("TextBox")
local l = Instance.new("TextLabel")
local n = Instance.new("Frame")
local a = Instance.new("TextLabel")
local _o = Instance.new("ImageLabel")
random.Name = randomString()
random.Parent = gethui() or game.CoreGui.RobloxGui or game.CoreGui
e.Name = "e"
e.Parent = random
e.AnchorPoint = Vector2.new(1, 1)
e.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
e.BorderColor3 = Color3.fromRGB(0, 0, 0)
e.BorderSizePixel = 0
e.Position = UDim2.new(1, 0, 1, 0)
e.Size = UDim2.new(0, 250, 0, 220)
b.Name = "b"
b.Parent = e
b.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
b.BackgroundTransparency = 1.000
b.BorderColor3 = Color3.fromRGB(0, 0, 0)
b.BorderSizePixel = 0
b.Size = UDim2.new(0, 250, 0, 20)
c.Name = "c"
c.Parent = b
c.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
c.BackgroundTransparency = 1.000
c.BorderColor3 = Color3.fromRGB(0, 0, 0)
c.BorderSizePixel = 0
c.Position = UDim2.new(0.920000017, 0, 0, 0)
c.Size = UDim2.new(0, 20, 0, 20)
c.ZIndex = 2
c.Image = "rbxassetid://1204397029"
d.Name = "d"
d.Parent = b
d.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
d.BorderColor3 = Color3.fromRGB(0, 0, 0)
d.BorderSizePixel = 0
d.Size = UDim2.new(0, 250, 0, 20)
d.Font = Enum.Font.SourceSans
d.Text = "example"
d.TextColor3 = Color3.fromRGB(255, 255, 255)
d.TextSize = 18.000
g.Name = "g"
g.Parent = b
g.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
g.BorderColor3 = Color3.fromRGB(0, 0, 0)
g.BorderSizePixel = 0
g.Position = UDim2.new(0, 0, 1, 0)
g.Size = UDim2.new(0, 250, 0, 25)
f.Name = "f"
f.Parent = g
f.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
f.BorderColor3 = Color3.fromRGB(0, 0, 0)
f.BorderSizePixel = 0
f.Position = UDim2.new(0.0199999996, 0, 0, 0)
f.Size = UDim2.new(0, 240, 0, 25)
f.Font = Enum.Font.SourceSans
f.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
f.PlaceholderText = "Command Bar"
f.Text = ""
f.TextColor3 = Color3.fromRGB(255, 255, 255)
f.TextSize = 18.000
f.TextXAlignment = Enum.TextXAlignment.Left
h.Name = "h"
h.Parent = e
h.Active = true
h.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
h.BackgroundTransparency = 1.000
h.BorderColor3 = Color3.fromRGB(0, 0, 0)
h.BorderSizePixel = 0
h.Position = UDim2.new(0.0199999996, 0, 0.204545453, 0)
h.Size = UDim2.new(0, 245, 0, 175)
h.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
h.CanvasSize = UDim2.new(0, 0, 0, 0)
h.ScrollBarThickness = 8
h.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
h.VerticalScrollBarInset = Enum.ScrollBarInset.Always
h.AutomaticCanvasSize = Enum.AutomaticSize.Y
h.Visible = false
i.Name = "i"
i.Parent = h
i.SortOrder = Enum.SortOrder.LayoutOrder
j.Name = "j"
j.Parent = e
j.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
j.BackgroundTransparency = 1.000
j.BorderColor3 = Color3.fromRGB(0, 0, 0)
j.BorderSizePixel = 0
j.Position = UDim2.new(0, 0, 0.204545453, 0)
j.Size = UDim2.new(1, 0, 0.795454562, 0)
j.Visible = false
j.ZIndex = 2
k.Name = "k"
k.Parent = j
k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
k.BackgroundTransparency = 1.000
k.BorderColor3 = Color3.fromRGB(0, 0, 0)
k.BorderSizePixel = 0
k.Position = UDim2.new(0.0199999996, 0, 0, 0)
k.Size = UDim2.new(0, 240, 0, 25)
k.Font = Enum.Font.SourceSans
k.Text = "Prefix"
k.TextColor3 = Color3.fromRGB(255, 255, 255)
k.TextSize = 14.000
k.TextXAlignment = Enum.TextXAlignment.Left
m.Name = "m"
m.Parent = k
m.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
m.BorderColor3 = Color3.fromRGB(0, 0, 0)
m.BorderSizePixel = 0
m.Position = UDim2.new(0.904166639, 0, 0.0799999982, 0)
m.Size = UDim2.new(0, 20, 0, 20)
m.Font = Enum.Font.SourceSansBold
m.Text = prefix
m.TextColor3 = Color3.fromRGB(0, 0, 0)
m.TextSize = 14.000
l.Name = "l"
l.Parent = j
l.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
l.BackgroundTransparency = 1.000
l.BorderColor3 = Color3.fromRGB(0, 0, 0)
l.BorderSizePixel = 0
l.Position = UDim2.new(0.0199999996, 0, 0.142857149, 0)
l.Size = UDim2.new(0, 240, 0, 25)
l.Font = Enum.Font.SourceSans
l.Text = "Keep Menu Open"
l.TextColor3 = Color3.fromRGB(255, 255, 255)
l.TextSize = 14.000
l.TextXAlignment = Enum.TextXAlignment.Left
n.Name = "n"
n.Parent = l
n.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
n.BorderColor3 = Color3.fromRGB(0, 0, 0)
n.BorderSizePixel = 0
n.Position = UDim2.new(0.903999984, 0, 0.0799999982, 0)
n.Size = UDim2.new(0, 20, 0, 20)
a.Name = "a"
a.Parent = n
a.BackgroundColor3 = Color3.fromRGB(150, 150, 151)
a.BorderColor3 = Color3.fromRGB(0, 0, 0)
a.BorderSizePixel = 0
a.Position = UDim2.new(0, 2, 0, 2)
a.Size = UDim2.new(0, 15, 0, 15)
a.Visible = false
a.Font = Enum.Font.SourceSans
a.Text = ""
a.TextColor3 = Color3.fromRGB(0, 0, 0)
a.TextSize = 14.000
_o.Name = "_o"
_o.Parent = e
_o.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_o.BackgroundTransparency = 1.000
_o.BorderColor3 = Color3.fromRGB(0, 0, 0)
_o.BorderSizePixel = 0
_o.Position = UDim2.new(0.300000012, 0, 0.340909094, 0)
_o.Size = UDim2.new(0, 100, 0, 100)
_o.Image = "http://www.roblox.com/asset/?id=90844484964694"

function source:Change(Config)
	_o.Image = "http://www.roblox.com/asset/?id=" .. Config.StartImage or "http://www.roblox.com/asset/?id=90844484964694"
	d.Text = Config.Name or "example"
end

function source:AddCommand(Config)
	local CMD = Instance.new("TextLabel")
	CMD.Name = "CMD"
	CMD.Parent = h
	CMD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CMD.BackgroundTransparency = 1.000
	CMD.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CMD.BorderSizePixel = 0
	CMD.Size = UDim2.new(0, 200, 0, 20)
	CMD.Font = Enum.Font.SourceSans
	CMD.TextColor3 = Color3.fromRGB(255, 255, 255)
	CMD.TextSize = 18.000
	CMD.TextXAlignment = Enum.TextXAlignment.Left
	CMD.Text = Config.Name or "DefaultCommand"
	table.insert(commands,Config.Name or "DefaultCommand")
end

function source:AddEmptyCommand()
	local CMD = Instance.new("TextLabel")
	CMD.Name = "EMPTY_CMD"
	CMD.Parent = h
	CMD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CMD.BackgroundTransparency = 1.000
	CMD.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CMD.BorderSizePixel = 0
	CMD.Size = UDim2.new(0, 200, 0, 20)
	CMD.Font = Enum.Font.SourceSans
	CMD.TextColor3 = Color3.fromRGB(255, 255, 255)
	CMD.TextSize = 18.000
	CMD.TextXAlignment = Enum.TextXAlignment.Left
	CMD.Text = ""
end

_o:TweenSize(UDim2.new(0,0,0,0),Enum.EasingStyle.Quart,Enum.EasingDirection.Out,0.25)
_o:Destroy()
