local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Tên GUI
local guiName = "Script Đã Tắt Vui Lòng Vào Tiktok Để Nhận Script Mới"

-- Nếu đã có thì bật lại
local oldGui = playerGui:FindFirstChild(guiName)
if oldGui then
    oldGui.Enabled = true
    return
end

-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = guiName
screenGui.ResetOnSpawn = false
screenGui.Enabled = true
screenGui.Parent = playerGui

-- Frame chính
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Active = true
frame.Draggable = true -- kéo được
frame.Parent = screenGui

-- Nút tắt
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 100, 0, 40)
closeBtn.Position = UDim2.new(0.5, -50, 1, -50)
closeBtn.Text = "Close"
closeBtn.Parent = frame

closeBtn.MouseButton1Click:Connect(function()
    screenGui.Enabled = false
end)

-- Nút mở lại (luôn hiện)
local openBtn = Instance.new("TextButton")
openBtn.Size = UDim2.new(0, 120, 0, 50)
openBtn.Position = UDim2.new(0, 20, 0, 20)
openBtn.Text = "Open GUI"
openBtn.Parent = playerGui

openBtn.MouseButton1Click:Connect(function()
    screenGui.Enabled = true
end) 