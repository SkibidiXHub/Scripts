local v466 = loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiXHub/ui-library/refs/heads/main/Ui-redzlib"))():MakeWindow({
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
local v484 = v466:MakeTab({"🌐 Info", ""})
local v485 = v466:MakeTab({"🍎 Blox Fruits", ""})
local v486 = v466:MakeTab({"🍇 Kaitun Farm", ""})
local v487 = v466:MakeTab({"👑 Script Premium", ""})
local v488 = v466:MakeTab({"🍉 Kaitun Bounty", ""})
local v489 = v466:MakeTab({"💎 Hop Sever", ""})
local v490 = v466:MakeTab({"💰 Kaitun Chest", ""})
local v491 = v466:MakeTab({"🍔 Collect Fruit"})

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
  v485:AddButton({
     Name = "Nak Hub V4",
    Callback = function()
      getgenv().Team = "Marines" loadstring(game:HttpGet("https://raw.githubusercontent.com/Naknohack/NakHubBF/refs/heads/main/NakHubV4.lua"))()
  end
  })
  v485:AddButton({
     Name = "Dragon Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/dragonhubdev/dragonwitheveryone/refs/heads/main/Main-BF.lua"))()
  end
  })
local _ = v485:AddSection({"Key"})
  v485:AddButton({
     Name = "Omg Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
  end
  })
  v485:AddButton({
     Name = "RealKid Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/trungdao2k4/trauroblox/refs/heads/main/traubluev1"))()
  end
  })
  v485:AddButton({
     Name = "Blue X Hub",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
  end
  })
  v485:AddButton({
     Name = "Đạt Thg (Hoho)",
    Calback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/refs/heads/main/BloxFruit/Custom/ThgHub.lua"))()
  end
  })
  v485:AddButton({
     Name = "Rubu Hub (Hoho)",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/refs/heads/main/BloxFruit/Custom/RubuHub.lua"))()
  end
  })
local _ = v486:AddSection({"Kaitun Farm"})
  v486:AddButton({
     Name = "Teddy Kaitun",
    Callback = function()
      loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/8cffffd967953fe7"))()
  end
  })
  v486:AddButton({
     Name = "Xero Kaitun",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/kaitun.lua"))() 
  end
  })
  v486:AddButton({
     Name = "Orange Kaitun",
    Callback = function()
      repeat wait() until game:IsLoaded() and game.Players.LocalPlayer getgenv().Config = {  ["Auto Farm"] = true,  ["Settings"] = {  ["FPS Boost"] = true,  } ,  ["Melee"] = {  ["All Melee V1"] = true,  ["Super Huamn"] = true,  ["Dragon Talon"] = true,  ["Sharkman Karate"] = true,  ["Elechic Claw"] = true,  ["GodHuman"] = true,  },  ["Sword"] = {  ["All Sword"] = true,  ["Saber"] = true,  ["Pole"] = true,  ["Rengoku"] = true,  ["Midnight Blade"] = true,  ["Soul Cane"] = true,  ["Gravity Cane"] = true,  ["Dragon Trident"] = true,  ["Legendary Sword"] = true,  ["True Triple Katana"] = true,  ["Twin Hooks"] = true,  ["Canvander"] = true,  ["Buddy Sword"] = true,  ["Hallow Scythe"] = true,  ["Yama"] = true,  ["Tushita"] = true,  ["Cursed Dual Katana"] = true,  },  ["Gun"] = {  ["All Gun"] = true,  ["Acidum Rifle"] = true,  ["Kabucha"] = true,  ["Serpent Bow"] = true,  ["Soul Guitar"] = true,  },  ["Race"] = {  ["Auto V2"] = true,  ["Auto V3"] = true,  }, } loadstring(game:HttpGet("https://raw.githubusercontent.com/HieuDepTrai-Z/Dev_OrangeVip/refs/heads/main/OrangeKaitun.lua"))()
  end
  })
  v486:AddButton({
     Name = "Night Hub Kaitun",
    Callback = function()
      getgenv().Config = {     Team = "Pirates",     FarmConfig = {         ["Out game when done all"] = true,         ["Bypass Teleport"] = true,         ["Double Quest(RISK)"] = true     },     Items = {         ["Saber"] = true,         ["Pole (1st form)"] = true,         ["Skull Guitar"] = true,         ["Cursed Dual Katana"] = true,         ["Godhuman"] = true     },     Webhook = {         ["Enabled"] = false,         ["Url"] = ""     } } loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/d6c7959dcc94cd24467080d82a56dcf9.lua"))()
  end
  })
  v486:AddButton({
     Name = "Hinishi Hub Kaitun",
    Callback = function()
      _G.Hinishi_Hub_Kaitun_Blox_Fruits = {
    ["Misc"] = {
        ["Hop If Admin Join"] = true,
        ["Unlock Dough Chip"] = true,
        ["Auto Aura RGB"] = true,
        ["Auto Pull Lever"] = true,
        ["Big Hitbox"] = true
    },
    ["Upgrade Race"] = {
        ["Race"] = {"Human","Fishman","Skypiea","Mink"},
        ["Upgrade Race V3"] = true,
        ["Lock Race Select"] = true
    },
    ["Fighting Styles"] = {
        ["Melee V2"] = true,
        ["Godhuman"] = true
    },
    ["Swords"] = {
        ["True Triple Katana"] = true,
        ["Cursed Dual Katana"] = true,
        ["Shark Anchor"] = true,
        ["Saber"] = true,
        ["Midnight Blade"] = true,
        ["Shisui"] = true,
        ["Saddi"] = true,
        ["Wando"] = true,
        ["Yama"] = true,
        ["Koko"] = false,
        ["Rengoku"] = true,
        ["Canvander"] = true,
        ["Buddy Sword"] = true,
        ["Twin Hooks"] = true,
        ["Spikey Trident"] = true,
        ["Hallow Scryte"] = true,
        ["Dark Dagger"] = true,
        ["Tushita"] = true
    },
    ["Guns"] = {
        ["Soul Guitar"] = true,
        ["Kabucha"] = true,
        ["Acidum Rifle"] = true,
        ["Serpent Bow"] = true
    },
    ["BloxFruits"] = {
        ["Sub Fruits"] = {"Rocket-Rocket","Spin-Spin"},
        ["Safe Fruits"] = {"Dragon-Dragon","T-Rex-T-Rex","Kitsune-Kitsune"}
    },
    ["Mastery"] = {
        ["Blox Fruit"] = true,
        ["Fighting Styles"] = true,
        ["Swords"] = true
    },
    ["Settings"] = {
        ["Tween Speed"] = 300,
        ["Fix Lag"] = true,
        ["Safe Mode"] = false
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-Hinishi/Hinishi-Hub/refs/heads/main/Kaitun"))()
  end
  })
  v486:AddButton({
     Name = "Arya Hub Kaitun",
    Callback = function()
      Config = {
Team = "Pirates",
Configuration = {
HopWhenIdle = true,
AutoHop = true,
AutoHopDelay = 60 * 60,
FpsBoost = false,
BlackScreen = true
},
Items = {
-- Melees
AutoFullyMelees = true,
-- Swords
Saber = true,
CursedDualKatana = false,
-- Guns
SoulGuitar = false,
-- Upgrades
RaceV2 = true
},
Settings = {
StayInSea2UntilHaveDarkFragments = false
}
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/hhl29042008-ops/script/refs/heads/main/cac"))()
  end
  })
local _ = v487:AddSection({"Premium"})
   v487:AddButton({
      Name = "Banana Hub Premium (Reset Key Mỗi Ngày)",
     Callback = function()
       repeat wait() until game:IsLoaded() and game.Players.LocalPlayer 
getgenv().Key = "vstiaQFAZpIACShSwHMQvbAnQDSdurkY" 
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaHub.lua"))()
  end
  })
  v487:AddButton({
     Name = "Maru Hub Premium (Reset Key Mỗi Ngày",
    Callback = function()
      getgenv().Key = "MARU-1M54-4bPn-9Mwp-Ta21"
getgenv().id = "11293710461937282 "
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
  end
  })
local _ = v488:AddSection({"Script PvP"})
   v488:AddButton({
      Name = "Hermanos Dev",
     Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/hermanos-dev/hermanos-hub/refs/heads/main/Loader.lua"))()
  end
  })
  v488:AddButton({
     Name = "Lonely Hub PVP",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip12/LonelyHub/refs/heads/main/LonelyHub-PVP.lua"))()
  end
  })
  v488:AddButton({
     Name = "Tobi Hub M1 Fruit",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/TopiHub1909/TopiHub/refs/heads/main/Attack_Aura_Fruit_M1"))()
  end
  })