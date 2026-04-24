local v466 = loadstring(game:HttpGet("https://raw.githubusercontent.com/PlockScripts/Library-ui/refs/heads/main/redz-V5-remake/main.luau"))():MakeWindow({
    Title = "Dojo Hub | Tổng Hợp",
    SubTitle = "Bởi realdojo",
    SaveFolder = "DojoX.lua"
})
local l_ScreenGui_0 = Instance.new("ScreenGui")
l_ScreenGui_0.Name = "ControlGUI"
l_ScreenGui_0.Parent = game.CoreGui
local l_ImageButton_0 = Instance.new("ImageButton")
l_ImageButton_0.Size = UDim2.new(0, 50, 0, 50)
l_ImageButton_0.Position = UDim2.new(0.15, 0, 0.15, 0)
l_ImageButton_0.Image = "rbxassetid://78617112299549"
l_ImageButton_0.BackgroundTransparency = 1
l_ImageButton_0.Parent = l_ScreenGui_0
local l_UICorner_0 = Instance.new("UICorner")
l_UICorner_0.CornerRadius = UDim.new(0.25, 0)
l_UICorner_0.Parent = l_ImageButton_0
local l_UIStroke_0 = Instance.new("UIStroke")
l_UIStroke_0.Thickness = 2
l_UIStroke_0.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
l_UIStroke_0.Parent = l_ImageButton_0
local v471 = {
    Color3.fromRGB(255, 0, 0),
    Color3.fromRGB(255, 127, 0),
    Color3.fromRGB(255, 255, 0),
    Color3.fromRGB(0, 255, 0),
    Color3.fromRGB(0, 255, 255),
    Color3.fromRGB(0, 0, 255),
    Color3.fromRGB(139, 0, 255)
}
task.spawn(function()
    local v472 = 1
    while true do
        l_UIStroke_0.Color = v471[v472]
        v472 = v472 % #v471 + 1
        task.wait(0.3)
    end
end)
local v473 = true
local v474 = nil
local v475 = nil
local v476 = nil
local v477 = nil
local function v480(v478)
    local v479 = v478.Position - v476
    l_ImageButton_0.Position = UDim2.new(v477.X.Scale, v477.X.Offset + v479.X, v477.Y.Scale, v477.Y.Offset + v479.Y)
end
l_ImageButton_0.InputBegan:Connect(function(v481)
    if v481.UserInputType == Enum.UserInputType.Touch or v481.UserInputType == Enum.UserInputType.MouseButton1 then
        v474 = true
        v476 = v481.Position
        v477 = l_ImageButton_0.Position
        v481.Changed:Connect(function()
            if v481.UserInputState == Enum.UserInputState.End then
                v474 = false
            end
        end)
    end
end)
l_ImageButton_0.InputChanged:Connect(function(v482)
    if v482.UserInputType == Enum.UserInputType.Touch or v482.UserInputType == Enum.UserInputType.MouseMovement then
        v475 = v482
    end
end)
game:GetService("UserInputService").InputChanged:Connect(function(v483)
    if v474 and v483 == v475 then
        v480(v483)
    end
end)
l_ImageButton_0.MouseButton1Click:Connect(function()
    v473 = not v473
    if v473 then
        v466:Minimize(false)
    else
        v466:Minimize(true)
    end
end)

v466:SetNotify({
    Name = "Dojo Hub Loaded !",
    Description = "Dojo Hub Tải Thành Công !",
    Logo = "rbxassetid://78617112299549",
    Duration = 5
})

local v484 = v466:MakeTab({"🌐 Info", ""})
local v485 = v466:MakeTab({"🍎 Blox Fruits", ""})
local v486 = v466:MakeTab({"🍇 Kaitun Farm", ""})
local v487 = v466:MakeTab({"👑 Script Premium", ""})
local v488 = v466:MakeTab({"🍉 Kaitun Bounty", ""})
local v489 = v466:MakeTab({"💎 Hop Sever", ""})
local v490 = v466:MakeTab({"💰 Kaitun Chest", ""})

  v484:AddDiscordInvite({
    Name = "Tiktok - Dojo Hub",
    Description = "https://www.tiktok.com/@hoanganhnemayban230",
    Logo = "rbxassetid://78617112299549",
    Invite = "Dojo On Top"
})
local _ = v485:AddSection({"No Key"})
  v485:AddButton({
     Name = "Redz Hub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/newredzv3/Scripts/refs/heads/main/main.luau"))(Settings)
  end
  })
  v485:AddButton({
     Name = "Zinner Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://github.com/HoangNguyenk8/Roblox/blob/main/BF-Main.luau?raw=true"))()
  end
  })
  v485:AddButton({
     Name = "Gravity Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
  end
  })
  v485:AddButton({
     Name = "Dark Hub",
    Callback = function()
	  getgenv().Team = "Pirates"
loadstring(game:HttpGet("https://raw.githubusercontent.com/trongdeptraihucscript/Main/refs/heads/main/DarkXScript.lua"))()
  end
  })
  v485:AddButton({
     Name = "Ngọc Bổng Gaming",
    Callback = function()
	  getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/NgocBong/refs/heads/main/NgocBongVn"))()
  end
  })
  v485:AddButton({
     Name = "Night Mystic",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-NightMystic/Night-Mystic-/refs/heads/main/NightMystic"))()
  end
  })
  v485:AddButton({
     Name = "Maru Hub (Fake)",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-Yiner/MaruHubFree/refs/heads/main/main.lua"))()
  end
  })
  v485:AddButton({
     Name = "Banana Hub (Fake)",
    Callback = function()
      loadstring(game:HttpGet(" https://raw.githubusercontent.com/longhihilonghihi-hub/Dev-BananaHub/refs/heads/main/BananaHub.txt"))()
  end
  })
  v485:AddButton({
     Name = "Bacon Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh129150/hack/refs/heads/main/Bloxfruits.lua"))()
  end
  })
  v485:AddButton({
     Name = "Quantum Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
  end
  })