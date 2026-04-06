local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "Dojo Hub 🏆",
    Text = "Đang khởi động script vui lòng đợi khởi động",
    Icon = "rbxassetid://78617112299549",
    Duration = 6
})
-- 🍎 Dojo ScrVn 🇻🇳 Cinematic Intro
local CoreGui = game:GetService("CoreGui")

-- Giao diện chính
local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false

-- Lớp làm mờ nền
local BlurFrame = Instance.new("Frame", ScreenGui)
BlurFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BlurFrame.BackgroundTransparency = 0.4 -- Độ mờ nền
BlurFrame.Size = UDim2.new(1, 0, 1, 0)

-- Hiệu ứng chữ
local TextLabel = Instance.new("TextLabel", ScreenGui)
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "Dojo Hub"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextStrokeTransparency = 0.2
TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 170, 255)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.TextScaled = true
TextLabel.TextTransparency = 1 -- Bắt đầu ẩn

-- Hiệu ứng fade in/out
local TweenService = game:GetService("TweenService")

local fadeIn = TweenService:Create(TextLabel, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0})
local fadeOut = TweenService:Create(TextLabel, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {TextTransparency = 1})
local fadeBg = TweenService:Create(BlurFrame, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundTransparency = 1})

-- Chạy hiệu ứng
fadeIn:Play()
task.wait(2) -- hiển thị chữ trong 2 giây
fadeOut:Play()
fadeBg:Play()

-- Xoá sau 3.5s
task.wait(3.5)
ScreenGui:Destroy()
local WindUI =
loadstring(game:HttpGet("https://raw.githubusercontent.com/teoscrvn/T-ng-h-p-/refs/heads/main/Script%20test%20(1).txt"))()

--🔹 Tạo Window
local Window = WindUI:CreateWindow({
    Title = "Dojo Hub | Tổng Hợp",
    Size = UDim2.fromOffset(580, 340),
    Theme = "Dark",
    Transparent = true
})
Window:EditOpenButton({
    Title = "Open UI 🇻🇳",
    Icon = "monitor", -- hoặc icon khác
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"),
        Color3.fromHex("F89B29")
    ),
    Draggable = true,
})

local Tabs = {}

Tabs.Home0 = Window:Tab({Title = "Script Farm"})
Tabs.Home1 = Window:Tab({Title = "Kaitun Farm"})
Tabs.Home2 = Window:Tab({Title = "Kaitun Chest"})
Tabs.Home3 = Window:Tab({Title = "Hop Sever"})
Tabs.Home4 = Window:Tab({Title = "Kaitun V4"})
Tabs.Home5 = Window:Tab({Title = "Script Premium"})

-- Nút chung
Tabs.Home0:Button({
    Title = "Redz Hub (real not fake)",
    Callback = function()
        local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/PlockScripts/newredz/refs/heads/main/Remake-version.luau"))(Settings)
    end
})
Tabs.Home0:Button({
    Title = "Trẩu Banana V1",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/trungdao2k4/trauroblox/refs/heads/main/traubluev1"))()
    end
})
Tabs.Home0:Button({
    Title = "Omg Hub (key)",
    Callback = function()
        local Settings = {
    JoinTeam = "Pirates"; -- Pirates / Marines
    Translator = true;   -- true / false
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/20f318386e3fbf069ee3fa797cfc9f34.lua"))()(Settings)