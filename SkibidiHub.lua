-- ✅ MẪU CHUẨN CHO NGƯỜI MỚI | TÉO HUB 🍎
-- Giữ nguyên giao diện thật, chỉ thêm hướng dẫn 👈 ngay bên cạnh dòng cần sửa

repeat task.wait() until game:IsLoaded()

-- 🟢 Nút mở menu chính
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "ControlGUI"
	screenGui.Parent = game.CoreGui

	local toggleButton = Instance.new("ImageButton")
	toggleButton.Size = UDim2.new(0, 50, 0, 50)
	toggleButton.Position = UDim2.new(0.15, 0, 0.15, 0)
	toggleButton.Image = "rbxassetid://125106574805976"
	toggleButton.ScaleType = Enum.ScaleType.Fit
	toggleButton.BackgroundTransparency = 1
	toggleButton.Parent = screenGui


	local isFluentVisible = true
	local dragging, dragInput, dragStart, startPos

	local function update(input)
		local delta = input.Position - dragStart
		toggleButton.Position = UDim2.new(
			startPos.X.Scale,
			startPos.X.Offset + delta.X,
			startPos.Y.Scale,
			startPos.Y.Offset + delta.Y
		)
	end

	toggleButton.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = toggleButton.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	toggleButton.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if dragging and input == dragInput then
			update(input)
		end
	end)

	toggleButton.MouseButton1Click:Connect(function()
		isFluentVisible = not isFluentVisible
		if isFluentVisible then
			Window:Minimize(false)
		else
			Window:Minimize(true)
		end
	end)
-- 🟣 Giao diện Fluent
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
repeat wait() until game:IsLoaded()

-- 🪟 Cửa sổ chính
local Window = Fluent:CreateWindow({
	Title = "Skibidi V2 Hub",         -- 👈 đổi thành tên script của bạn
	SubTitle = "By Skibidi Hub",              -- 👈 đổi mô tả phụ
	TabWidth = 157,
	Size = UDim2.fromOffset(450, 300),
	Acrylic = true,
	Theme = "Dark",                   -- 👈 đổi màu chủ đạo: Amethyst, Dark, Aqua, Light,...
	MinimizeKey = Enum.KeyCode.End
})

-- 📑 Các tab (mục chính)
local Tabs = {
	Main0 = Window:AddTab({ Title = "Blox Fruits" }),  -- 👈 đổi tên tab 1
	Main1 = Window:AddTab({ Title = "Escape Tsunami" }),  -- 👈 đổi tên tab 2
	Main2 = Window:AddTab({ Title = "99 Đêm" }),     -- 👈 đổi tên tab 3
	Main3 = Window:AddTab({ Title = "Meme Sea" }),        -- 👈 đổi tên tab 4
	Main4 = Window:AddTab({ Title = "King Legaxy" }),    -- 👈 đổi tên tab 5
}

------------------------------------------------
-- TAB 1: Ví dụ thêm script
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
	Title = "Redz Hub",                             -- 👈 tên nút hiển thị
	Description = "",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
        local Settings = {
    JoinTeam = "Pirates"; -- Pirates / Marines
    Translator = true;   -- true / false
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/20f318386e3fbf069ee3fa797cfc9f34.lua"))()(Settings) -- 👈 link script tải
	end
})
Tabs.Main1:AddButton({
	Title = "Trẩu v9",                             -- 👈 tên nút hiển thị
	Description = "",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/trungdao2k4/buffalo/refs/heads/main/traurobloxv9.lua"))() -- 👈 link script tải
	end
})
Tabs.Main1:AddButton({
	Title = "Nak hub v3",                             -- 👈 tên nút hiển thị
	Description = "",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		getgenv().Team = "Marines"
_G.Mode = "VietNammess" or English 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Naknohack/NakHubBF/refs/heads/main/NakHubV3.txt"))() -- 👈 link script tải
	end
})