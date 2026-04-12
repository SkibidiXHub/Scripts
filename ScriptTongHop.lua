-- 1️⃣ KHAI BÁO KEY & LINK GET KEY
local key = "WatermelonNgon" -- Key bạn đặt
local keyLink = "https://anotepad.com/notes/t2bxnrks" -- Link khi ấn "Get Key"

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
TextBox.PlaceholderText = "Nhập key tại đây"
TextBox.Text = ""
TextBox.Size = UDim2.new(0.9, 0, 0, 35)
TextBox.Position = UDim2.new(0.05, 0, 0.25, 0)
TextBox.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
UICorner:Clone().Parent = TextBox

CheckButton.Parent = Frame
CheckButton.Text = "Kiểm tra key ✅"
CheckButton.Size = UDim2.new(0.4, 0, 0, 30)
CheckButton.Position = UDim2.new(0.05, 0, 0.65, 0)
CheckButton.BackgroundColor3 = Color3.fromRGB(80, 170, 80)
UICorner:Clone().Parent = CheckButton

GetKeyButton.Parent = Frame
GetKeyButton.Text = "Lấy key 🔑"
GetKeyButton.Size = UDim2.new(0.4, 0, 0, 30)
GetKeyButton.Position = UDim2.new(0.55, 0, 0.65, 0)
GetKeyButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
UICorner:Clone().Parent = GetKeyButton

GetKeyButton.MouseButton1Click:Connect(function()
	setclipboard(keyLink)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Đã copy link 🔗";
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
			Title = "Thành công 🎉";
			Text = "Key đúng! Script sẽ khởi chạy.";
			Duration = 3;
		})
	else
		game.StarterGui:SetCore("SendNotification", {
			Title = "Sai key ❌";
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

loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "Dojo Hub | Tổng Hợp",
         Animation = "[ BETA 1.0 ]"
         },
        Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"1234"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=78617112299549",
       Size = {40, 40},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Script Farm"})
     local Tab2o = MakeTab({Name = "Script Kaitun Farm"})
     local Tab3o = MakeTab({Name = "Kaitun Bounty"})
     local Tab4o = MakeTab({Name = "Kaitun V4"})
     local Tab5o = MakeTab({Name = "Hop Sever"})
     local Tab6o = MakeTab({Name = "Admin Kamui"})
------- BUTTON
    
AddButton(Tab1o, {
     Name = "Teddy Hub",
    Callback = function()
	  repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/e86ed284a22672d29e906214e7bbf8b9.lua"))() 
  end
  })
AddButton(Tab1o, {
     Name = "Omg Hub (Key)",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
  end
  })
AddButton(Tab1o, {
     Name = "Gravity Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
  end
  })
AddButton(Tab1o, {
     Name = "Trẩu Banana (Key)",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/trungdao2k4/trauroblox/refs/heads/main/traubluev1"))()
  end
  })
AddButton(Tab6o, {
     Name = "Kamui (Từ 1 đến 6)
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/AdminKamui.luau"))()
  end
  })