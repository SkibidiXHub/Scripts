local v466 = loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiXHub/ui-library/refs/heads/main/Ui-redzlib"))():MakeWindow({
    Title = "Dojo Hub [ BETA ] | Tổng Hợp",
    SubTitle = "by realdojo",
    SaveFolder = "DojoHub.lua"
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
local v484 = v466:MakeTab({"🌐 Discord", ""})
local v485 = v466:MakeTab({"🍒 Script Farm", ""})
local v486 = v466:MakeTab({"💤 Kaitun Farm", ""})
local v487 = v466:MakeTab({"👑 Premium Script", ""})
local v488 = v466:MakeTab({"💎 Hop Sever", ""})
local v489 = v466:MakeTab({"🏅 Bounty Hunter", ""})
local v490 = v466:MakeTab({"🥈 Auto Chest", ""})
local v491 = v466:MakeTab({"🎖️ Find Fruit", ""})
local v492 = v466:MakeTab({"🏆 Admin", ""})
  v484:AddDiscordInvite({
    Name = "Dojo Hub | Community",
    Description = "https://discord.gg/H19MpeQ0",
    Logo = "rbxassetid://78617112299549",
    Invite = "https://discord.gg/H19MpeQ0"
})
local _ = v485:AddSection({"Blox Fruits"})
  v485:AddButton({
     Name = "Dojo Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiXHub/Scripts/refs/heads/main/Main.lua"))()
  end
  })
  v485:AddButton({
     Name = "Nak Hub V4",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Naknohack/NakHubBF/refs/heads/main/NakHubV4.lua"))()
  end
  })
  v485:AddButton({
     Name = "Redz Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/newredzv3/Scripts/refs/heads/main/main.luau"))()
  end
  })
  v485:AddButton({
     Name = "Xeter V1",
    Callback = function()
      getgenv().Version = "V1" getgenv().Team = "Marines" loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
  end
  })
  v485:AddButton({
     Name = "Xeter V2",
    Callback = function()
      getgenv().Version = "V2" getgenv().Team = "Marines" loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
  end
  })
  v485:AddButton({
     Name = "Xeter V3",
    Callback = function()
      getgenv().Version = "V3"
getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
  end
  })
  v485:AddButton({
     Name = "Xeter V4",
    Callback = function()
      getgenv().Version = "V4"
getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
  end
  })
  v485:AddButton({
     Name = "Orange Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/HieuDepTrai-Z/Dev_Orange/refs/heads/main/OrangeHub.lua"))()
  end
  })
  v485:AddButton({
     Name = "Omg Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
  end
  })
  v485:AddButton({
     Name = "Lemon Hub (Key : Lemon-hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/trieu1082/Lemon-hub/refs/heads/main/Lemon-hub-cute.lua"))()
  end
  })
  v485:AddButton({
     Name = "RealKid Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/trungdao2k4/trauroblox/refs/heads/main/traubluev1"))()
  end
  })
  v485:AddButton({
     Name = "Min Hub V6",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinN"))()
  end
  })
  v485:AddButton({
     Name = "Leo Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/khanghoang95130-byte/LeoMobile/refs/heads/main/LeoMobile.txt"))()
  end
  })
  v485:AddButton({
     Name = "Gravity Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/main/Main.lua"))()
  end
  })
  v485:AddButton({
     Name = "Sigma Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/SigmaHubDangCap/BloxFruit/refs/heads/main/MainBloxFruit.lua"))()
  end
  })
  v485:AddButton({
     Name = "Hdanh Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/hdanhvip/hdanhhub/refs/heads/main/BananaHub.lua.txt"))()
  end
  })
  v485:AddButton({
     Name = "Blue X Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
  end
  })
local _ = v492:AddSection({"Kamui Admin"})
  v492:AddButton({
     Name = "Admin Kamui (Từ 1 Đến 6)",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/AdminKamui.luau"))()
  end
  })