local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local HttpService = game:GetService("HttpService")
local Lighting = game:GetService("Lighting")
local CoreGui = game:GetService("CoreGui")
local Stats = game:GetService("Stats")
local TeleportService = game:GetService("TeleportService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local AssetService = game:GetService("AssetService")

-- Gethui fallback (cho executor)
local _v2 = (gethui and gethui()) or CoreGui or Players.LocalPlayer:WaitForChild("PlayerGui")

-- Tải WindUI
local _v3 = game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua")
local _v4 = loadstring(_v3)()
local _v5 = _v4:CreateWindow({
    Author = "AwesomeKhfresh",
    Folder = "Dojo Hub - Titan Fishing,
    Icon = "rbxassetid://78617112299549",
    Size = UDim2.fromOffset(560, 460),
    Theme = "Dark",
    Title = "Dojo Hub - Optimized"
})

-- Tab Fishing
local _v6 = _v5:Tab({Icon = "fish", Title = "Fishing"})
local autoFarmEnabled = false
local _v7 = _v6:Toggle({
    Callback = function(value) 
        autoFarmEnabled = value
        -- Thêm logic auto farm tại đây
        if value then
            print("Auto Farm Bật")
        else
            print("Auto Farm Tắt")
        end
    end,
    Description = "Tự động Click vào FishingButton",
    Title = "Auto Farm",
    Value = false
})

local _v8 = _v6:Dropdown({
    Callback = function(selected)
        -- selected là bảng các option được chọn (vì Multi = true)
        print("Kỹ năng được chọn:", table.concat(selected, ", "))
    end,
    Default = "Z",
    Multi = true,
    Options = {"Z", "X", "C", "V"},
    Title = "Select Skills"
})

-- Refresh dropdown (có thể bỏ qua nếu không cần)
task.spawn(function()
    task.wait(0.5)
    _v8:Refresh({"Z", "X", "C", "V"}, true)
    _v8.Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
end)

local autoSkillEnabled = false
local _v9 = _v6:Toggle({
    Callback = function(value)
        autoSkillEnabled = value
        if value then
            print("Auto Skill Bật")
        else
            print("Auto Skill Tắt")
        end
    end,
    Title = "Auto Skill"
})

-- Tab Teleport
local _v10 = _v5:Tab({Icon = "map-pinned", Title = "Teleport"})
local function safeTeleport(position)
    local character = Players.LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = CFrame.new(position)
    else
        warn("Nhân vật chưa sẵn sàng để dịch chuyển")
    end
end

_v10:Button({
    Callback = function()
        safeTeleport(Vector3.new(282, 29.8, 51.2))
    end,
    Title = "Teleport to Island 1"
})

_v10:Button({
    Callback = function()
        safeTeleport(Vector3.new(1491.4, 25.6, -451.1))
    end,
    Title = "Teleport to Island 2"
})

_v10:Button({
    Callback = function()
        safeTeleport(Vector3.new(990, 28.1, 1272))
    end,
    Title = "Teleport to Island 3"
})

_v10:Button({
    Callback = function()
        safeTeleport(Vector3.new(631.4, 28.1, -846.7))
    end,
    Title = "Teleport to Island 4"
})

_v10:Button({
    Callback = function()
        safeTeleport(Vector3.new(-337.1, 29.9, 829.6))
    end,
    Title = "Teleport to Island 5"
})

-- Tab Settings
local _v16 = _v5:Tab({Icon = "settings", Title = "Settings"})

-- Performance Mode: xóa các đối tượng không cần thiết
_v16:Button({
    Callback = function()
        for _, obj in ipairs(game:GetDescendants()) do
            if obj:IsA("ParticleEmitter") or obj:IsA("Smoke") or obj:IsA("Fire") or obj:IsA("Sparkles") then
                obj.Enabled = false
            elseif obj:IsA("Decal") or obj:IsA("Texture") then
                obj.Transparency = 1
            end
        end
        print("Đã tối ưu hiệu suất")
    end,
    Description = "Xóa bỏ vật liệu và chi tiết thừa để mượt hơn",
    Title = "Performance Mode"
})

-- FPS Boost
_v16:Button({
    Callback = function()
        setfpscap(9999)  -- Chỉ hoạt động trong executor
        print("Đã mở khóa FPS")
    end,
    Description = "Mở khóa FPS và giảm chất lượng render",
    Title = "FPS Boost"
})

-- Full Brightness (toggle)
local fullBrightEnabled = false
_v16:Toggle({
    Callback = function(value)
        fullBrightEnabled = value
        if value then
            Lighting.Brightness = 3
            Lighting.GlobalShadows = false
            Lighting.ClockTime = 12
        else
            Lighting.Brightness = 1
            Lighting.GlobalShadows = true
            Lighting.ClockTime = 14  -- hoặc giờ mặc định của game
        end
    end,
    Description = "Giúp nhìn rõ hơn trong khu vực tối",
    Title = "Full Brightness"
})

-- Xóa các đoạn spawn vô dụng
-- (đã bỏ các task.spawn không cần thiết)

-- Tạo nút nổi để toggle UI
local _v20 = Instance.new("ScreenGui", _v2)
_v20.Name = "Dojo Hub"
_v20.ResetOnSpawn = false
_v20.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local button = Instance.new("ImageButton")
button.Parent = _v20
button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
button.Position = UDim2.new(0, 25, 0.5, 0)
button.Size = UDim2.new(0, 55, 0, 55)
button.Image = "rbxassetid://78617112299549"
button.BackgroundTransparency = 0.3
button.Draggable = true  -- Cách đơn giản: dùng Draggable = true

local _v21 = Instance.new("UICorner", button)
_v21.CornerRadius = UDim.new(1, 0)

-- Nếu muốn tự xử lý drag thủ công (phức tạp hơn), có thể dùng Draggable như trên
-- Hoặc giữ lại code cũ đã sửa lỗi:
--[[
local dragging = false
local dragStart = nil
local buttonStartPos = nil

button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        buttonStartPos = button.Position
    end
end)

button.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

UserInputService.InputChanged:Connect(function(input, gpe)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        button.Position = UDim2.new(buttonStartPos.X.Scale, buttonStartPos.X.Offset + delta.X, buttonStartPos.Y.Scale, buttonStartPos.Y.Offset + delta.Y)
    end
end)
]]

-- Click để toggle main window
button.MouseButton1Click:Connect(function()
    _v5:Toggle()  -- WindUI window toggle
end)

-- Dọn cache định kỳ (nếu AssetService hỗ trợ)
task.spawn(function()
    while true do
        task.wait(60)
        pcall(function()
            AssetService:ClearContentCache()
        end)
    end
end)

-- Thông báo khởi động
_v5:Notify({
    Content = "Tối ưu hoàn tất! Đã sẵn sàng câu cá.",
    Duration = 5,
    Title = "Dojo Hub"
})