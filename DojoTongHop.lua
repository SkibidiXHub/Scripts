local v466 = loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiXHub/ui-library/refs/heads/main/Ui-redzlib"))():MakeWindow({
    Title = "Dojo Hub [ BETA VERSION ] | Tổng Hợp",
    SubTitle = "By realdojo✅",
    SaveFolder = "AllScript.lua"
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
local v484 = v466:MakeTab({"Discord", ""})
local v485 = v466:MakeTab({"Blox Fruits", ""})
local v486 = v466:MakeTab({"Steal A Brainrot", ""})
local v487 = v466:MakeTab({"99 Night", ""})
local v488 = v466:MakeTab({"Grow A Garden", ""})
local v489 = v466:MakeTab({"MM2", ""})
local v490 = v466:MakeTab({"Tsunami Brainrot", ""})
local v491 = v466:MakeTab({"Blue Lock", ""})
local v492 = v466:MakeTab({"Sailor Piece", ""})
local v493 = v466:MakeTab({"King Legacy", ""})
local v494 = v466:MakeTab({"Meme Sea", ""})
local v495 = v466:MakeTab({"Dead Rails", ""})
local v496 = v466:MakeTab({"Fix Lag", ""})
  v484:AddDiscordInvite({
    Name = "Dojo Hub | Community",
    Description = "https://discord.gg/UcoW71G",
    Logo = "rbxassetid://78617112299549",
    Invite = "https://discord.gg/UcoW71G"
})
local _ = v485:AddSection({"Main Farm"})
  v485:AddButton({
     Name = "Redz Hub (Support Sever Vip)",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/PlockScripts/Testes/refs/heads/main/main.luau"))()
  end
  })
  v485:AddButton({
     Name = "Adz Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/AnDepZaiHubBeta.lua"))()
  end
  })
  v485:AddButton({
     Name = "Blue Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
  end
  })
  v485:AddButton({
     Name = "Gravity Hub (Premium)",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/MainPremium.lua"))()
  end
  })
  v485:AddButton({
     Name = "Gravity Hub (Freemium)",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
  end
  })
  v485:AddButton({
     Name = "Tày Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/VTDROBLOX/Animehub/refs/heads/main/Tayhub.txt"))()
  end
  })
  v485:AddButton({
     Name = "Night Hub",
    Callback = function()
      script_key = "" -- default is FREEMIUM]
loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/BF-Beta.lua"))()
  end
  })
  v485:AddButton({
     Name = "Quantum Onyx",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
  end
  })
  v485:AddButton({
     Name = "Banana Cat Hub (Fake)",
    Callback = function()
      repeat wait() until game:IsLoaded() and game.Players.LocalPlayer 
getgenv().Key = "XyZpQrStUvWxYzAbCdEfGhIjKl"
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuemmm/vthangsiitink/refs/heads/main/BananaHub.lua"))()
  end
  })
  v485:AddButton({
     Name = "MeoLazy Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/MeoLazy/Script/refs/heads/main/V1.lua"))()
  end
  })
  v485:AddButton({
     Name = "Nataov Hub",
    Callback = function()
      repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Team =  "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-AnhTuansitink/NatAov-Hub/refs/heads/main/ILoveYou.lua"))()
  end
  })
  v485:AddButton({
     Name = "Hoho Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
  end
  })
  v485:AddButton({
     Name = "Speed Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
  end
  })
  v485:AddButton({
     Name = "Banana Hub (Fake 2)",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/BananaHub/refs/heads/main/CombackVersion"))()
  end
  })
  v485:AddButton({
     Name = "RealKid Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/trungdao2k4/trauroblox/refs/heads/main/traubluev1"))()
  end
  })
  v485:AddButton({
     Name = "Nht X Hub",
    Callback = function()
      getgenv().Team = "Pirates"  loadstring(game:HttpGet("https://raw.githubusercontent.com/trongdeptraihucscript/Main/refs/heads/main/Hoangtrongdepzai.lua"))()
  end
  })
  v485:AddButton({
     Name = "Xeter V1",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
  end
  })
  v485:AddButton({
     Name = "Xeter V2",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
  end
  })
  v485:AddButton({
     Name = "Xeter V3",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
  end
  })
  v485:AddButton({
     Name = "Xeter V4",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
  end
  })
  v485:AddButton({
     Name = "Draco Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRyx/DracoMain/refs/heads/main/DracoHubMainV1.txt"))()
  end
  })
local _ = v485:AddSection({"Kaitun Farm"})
  v485:AddButton({
     Name = "Gravity Hub Kaitun",
    Callback = function()
      repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Kaitun.lua"))()
  end
  })