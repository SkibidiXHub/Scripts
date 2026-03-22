-- 1️⃣ KHAI BÁO KEY & LINK GET KEY
local key = "hoanganhcomeback" -- Key bạn đặt
local keyLink = "https://anotepad.com/notes/46e9di94" -- Link khi ấn "Get Key"

-- 2️⃣ GIAO DIỆN NHẬP KEY
local CoreGui = game:GetService("CoreGui")
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local CheckButton = Instance.new("TextButton")
local GetKeyButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Name = "KeySystem"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Frame.Size = UDim2.new(0, 300, 0, 160)
Frame.Position = UDim2.new(0.5, -150, 0.5, -80)
UICorner.Parent = Frame

-- 🔴 Nút thoát (dấu X)
local CloseButton = Instance.new("TextButton")
CloseButton.Parent = Frame
CloseButton.Text = "X"
CloseButton.Size = UDim2.new(0, 25, 0, 25)
CloseButton.Position = UDim2.new(1, -30, 0, 5) -- góc phải trên khung
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
CloseButton.TextColor3 = Color3.fromRGB(255,255,255)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextSize = 18

local closeCorner = Instance.new("UICorner", CloseButton)
closeCorner.CornerRadius = UDim.new(0, 5)

CloseButton.MouseButton1Click:Connect(function()
	ScreenGui:Destroy() -- ấn X sẽ tắt giao diện
end)
TextBox.Parent = Frame
TextBox.PlaceholderText = "Enter the key here !"
TextBox.Text = ""
TextBox.Size = UDim2.new(0.9, 0, 0, 35)
TextBox.Position = UDim2.new(0.05, 0, 0.25, 0)
TextBox.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
UICorner:Clone().Parent = TextBox

CheckButton.Parent = Frame
CheckButton.Text = "Check the key ✅"
CheckButton.Size = UDim2.new(0.4, 0, 0, 30)
CheckButton.Position = UDim2.new(0.05, 0, 0.65, 0)
CheckButton.BackgroundColor3 = Color3.fromRGB(80, 170, 80)
UICorner:Clone().Parent = CheckButton

GetKeyButton.Parent = Frame
GetKeyButton.Text = "Get key"
GetKeyButton.Size = UDim2.new(0.4, 0, 0, 30)
GetKeyButton.Position = UDim2.new(0.55, 0, 0.65, 0)
GetKeyButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
UICorner:Clone().Parent = GetKeyButton

GetKeyButton.MouseButton1Click:Connect(function()
	setclipboard(keyLink)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Copied the link";
		Text = "Dán lên trình duyệt để lấy key nhé!";
		Duration = 4;
	})
end)

local keyOk = false
CheckButton.MouseButton1Click:Connect(function()
	if TextBox.Text == key then
		keyOk = true
		ScreenGui:Destroy()
		game.StarterGui:SetCore("SendNotification", {
			Title = "Success 🎉";
			Text = "Key đúng! Script sẽ khởi chạy.";
			Duration = 3;
		})
	else
		game.StarterGui:SetCore("SendNotification", {
			Title = "Wrong key ❌";
			Text = "Hãy ấn nút 'Lấy key' để lấy key mới.";
			Duration = 3;
		})
	end
end)

-- 3️⃣ CHỜ NHẬP KEY ĐÚNG MỚI CHẠY SCRIPT CHÍNH
repeat task.wait() until keyOk == true

-- 👉 DÁN CODE CHÍNH CỦA BẠN NGAY DƯỚI DÒNG NÀY 👇
------------------------------------------------------
-- ↓ TOÀN BỘ CODE CỦA BẠN (bắt đầu từ dòng: local ScreenGui = Instance.new("ScreenGui"))
-- ✅ MẪU CHUẨN CHO NGƯỜI MỚI | TÉO HUB 🍎
-- Giữ nguyên giao diện thật, chỉ thêm hướng dẫn 👈 ngay bên cạnh dòng cần sửa

repeat task.wait() until game:IsLoaded()

-- 🟢 Nút mở menu chính
local CoreGui = game:GetService("CoreGui")
local VirtualInputManager = game:GetService("VirtualInputManager")
local UserInputService = game:GetService("UserInputService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ControlButtonGUI"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local ToggleButton = Instance.new("ImageButton")
ToggleButton.Size = UDim2.new(0, 90, 0, 90)
ToggleButton.Position = UDim2.new(0.15, 0, 0.15, 0)
ToggleButton.BackgroundTransparency = 1
ToggleButton.BorderSizePixel = 0
ToggleButton.Image = "rbxassetid://78617112299549"
ToggleButton.ScaleType = Enum.ScaleType.Fit
ToggleButton.Parent = ScreenGui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(1, 0)
Corner.Parent = ToggleButton

ToggleButton.MouseButton1Click:Connect(function()
    VirtualInputManager:SendKeyEvent(true, "End", false, game)
    VirtualInputManager:SendKeyEvent(false, "End", false, game)
end)

-- 🟣 Giao diện Fluent
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
repeat wait() until game:IsLoaded()

-- 🪟 Cửa sổ chính
local Window = Fluent:CreateWindow({
	Title = "Dojo Hub : Tổng Hợp",         -- 👈 đổi thành tên script của bạn
	SubTitle = "by real_skibidi",              -- 👈 đổi mô tả phụ
	TabWidth = 157,
	Size = UDim2.fromOffset(450, 300),
	Acrylic = true,
	Theme = "Dark",                   -- 👈 đổi màu chủ đạo: Amethyst, Dark, Aqua, Light,...
	MinimizeKey = Enum.KeyCode.End
})

-- 📑 Các tab (mục chính)
local Tabs = {
	Main0 = Window:AddTab({ Title = "Discord" }),  -- 👈 đổi tên tab 1
	Main1 = Window:AddTab({ Title = "Blox Fruits" }),  -- 👈 đổi tên tab 2
	Main2 = Window:AddTab({ Title = "Kaitun Farm" }),     -- 👈 đổi tên tab 3
	Main3 = Window:AddTab({ Title = "Auto Bounty" }),        -- 👈 đổi tên tab 4
	Main4 = Window:AddTab({ Title = "99 Night" }),    -- 👈 đổi tên tab 5
	Main5 = Window:AddTab({ Title = "Tổng Hợp Khác" }) -- 👈 đổi tên tab 6
    Main6 = Window:AddTab({ Title = "Script Linh Tinh" }) -- 👈 đổi tên tab 7
}

------------------------------------------------
-- TAB 1: Các kênh tiktok
------------------------------------------------
Tabs.Main0:AddButton({
	Title = "Discord",              -- 👈 tên nút
	Description = "Giao Lưu",-- 👈 mô tả nút
	Callback = function()
		setclipboard("https://discord.gg/dojo-hub")  -- 👈 link sao chép
	end
})

------------------------------------------------
-- TAB 2: Ví dụ thêm script
------------------------------------------------
Tabs.Main1:AddButton({
	Title = "speed hub🌱",                             -- 👈 tên nút hiển thị
	Description = "",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))() -- 👈 link script tải
	end
})
Tabs.Main1:AddButton({
	Title = "Xeter V2",                             -- 👈 tên nút hiển thị
	Description = "",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
    	getgenv().Version = "V2"
getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))() -- 👈 link script tải
	end
})