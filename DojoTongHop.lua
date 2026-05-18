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
  v485:AddButton({
     Name = "Teddy Hub",
    Callback = function()
      repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/e86ed284a22672d29e906214e7bbf8b9.lua"))() 
  end
  })
  v485:AddButton({
     Name = "Dac Cau V3",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Luongdaynetroi/Testscript/refs/heads/main/DCHub/BloxFruits/V3"))()
  end
  })
  v485:AddButton({
     Name = "Neji Hub",
    Callback = function()
      repeat wait() until game:IsLoaded() and game.Players.LocalPlayer loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-NejiDepzai/Bloxfruits/refs/heads/main/Main.lua"))()
  end
  })
  v485:AddButton({
     Name = "Datthg HoHo",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/refs/heads/main/BloxFruit/Custom/ThgHub.lua"))()
  end
  })
  v485:AddButton({
     Name = "Nak Hub V4",
    Callback = function()
      getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Naknohack/NakHubBF/refs/heads/main/NakHubV4.lua"))()
  end
  })
  v485:AddButton({
     Name = "Min V5 Hub",
    Callback = function()
      getgenv().Team = "Marines" loadstring(game:HttpGet("https://github.com/LuaCrack/Min/raw/refs/heads/main/MinVnV5"))()
  end
  })
local _ = v485:AddSection({"Kaitun All"})
  v485:AddButton({
     Name = "Gravity Hub Kaitun",
    Callback = function()
      repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Kaitun.lua"))()
  end
  })
  v485:AddButton({
     Name = "Blue Hub Kaitun",
    Callback = function()
      getgenv().Config = {
    ["Setting"] = {
        ["UiCheckItem"] = false,
        ["White Screen"] = false
    },       
    ["MainItem"] = {
        ["Saber"] = true,         
        ["Hallow Scythe"] = true,
        ["GodHuman"] = true,
        ["Skull Guitar"] = true,
        ["Cursed Dual Katana"] = true
    },
    ["MiscItem"] = {
        ["Feathered Visage"] = true,
        ["Pole1st"] = true,
        ["Dragon Trident"] = true,
        ["Spikey Trident"] = true,
        ["Buddy"] = true,
        ["Cavender"] = true,
        ["Twin Hooks"] = true,
        ["Gravity Blade"] = true,
        ["Venom Bow"] = true
    },
    ["Quest"] = {
        ["Race V2"] = true,
        ["Race V3"] = true,
        ["Haki Rainbow"] = true
    },
    ["Webhook"] = {
        ["Enable"] = false,
        ["UrlWebhook"] = "",
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/KaitunBloxFruits.lua"))()
  end
  })
  v485:AddButton({
     Name = "Night Hub Kaitun",
    Callback = function()
      getgenv().Config = {
    Team = "Pirates",
    FarmConfig = {
        ["Out game when done all"] = true,
        ["Bypass Teleport"] = true,
        ["Double Quest(RISK)"] = true
    },
    Items = {
        ["Saber"] = true,
        ["Pole (1st form)"] = true,
        ["Skull Guitar"] = true,
        ["Cursed Dual Katana"] = true,
        ["Godhuman"] = true
    },
    Webhook = {
        ["Enabled"] = false,
        ["Url"] = ""
    }
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/d6c7959dcc94cd24467080d82a56dcf9.lua"))()
  end
  })
  v485:AddButton({
     Name = "Gravity Find Fruit",
    Callback = function()
      getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/FindFruit.lua"))()
  end
  })
  v485:AddButton({
     Name = "HNC Find Fruit",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/hnc-roblox/HNC_Roblox/refs/heads/main/AutoCollectFruit.lua"))()
  end
  })
  v485:AddButton({
     Name = "Kaitun Cyborg",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/mizuharasup/free/refs/heads/main/cy.lua"))()
  end
  })
  v485:AddButton({
     Name = "Kaitun Ghoul",
    Callback = function()
      repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Team = "Marines"
getgenv().Hide_UI = false
_G.Config = {
    Main = {
        ["Auto Start"] = true,
        ["Choose Mode"] = "Auto Ghoul", --// Auto Cyborg
        ["Buy Sword Legendary"] = true,
        ["Buy Haki Color"] = true
    },
    Misc = {
        ["Select Weapon"] = "Melee",
        ["Tweem Speed"] = 350,
        ["FPS Boost"] = false,
        ["Auto Rejoin"] = true,
        ["White Screen"] = false
    }
}

loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/6fed5ee0756a1754"))()
  end
  })
  v485:AddButton({
     Name = "Teddy Hub Kaitun V4",
    Callback = function()
      getgenv().TeddyHub = {
    ["Allies"] = {
        "Name1","Name2", 
        "Name3"
    },
    ["Method"] = "Kill Players After Trial", -- Kill Players After Trial, Reset Player After Trial
    ["MainAccount"] = "Name Main", -- for teleport to server of main account
    ["Team"] = "Marines",
    ["Gear"] = "A-B-B", -- "A-A-B" or ""  NOT GEAR 1 and 5
    ["ResetAfterTrial"] = true
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TeddyHub-KaitunV4.lua"))()
  end
  })
  v485:AddButton({
     Name = "Night Hub Auto Pull Lever",
    Callback = function()
      getgenv().Config = {
    Team = "Pirates", -- uh not work now
    Settings = {
        ToolFarm = "Melee",
        HopDelay = 2
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/PullLever.luau"))()
  end
  })
local _ = v485:AddSection({"Hop Sever"})
  v485:AddButton({
     Name = "Night Hub Hop Sever",
    Callback = function()
      getgenv().Team = "Pirates" -- Marnies
loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/HopScript.luau"))()
  end
  })
  v485:AddButton({
     Name = "Ok Hub Hop Sever",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/fakekuri/Okhubhere/refs/heads/main/Hopserver.lua"))()
  end
  })
  v485:AddButton({
     Name = "Teddy Hub Hop Sever",
    Callback = function()
      repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))()
  end
  })
  v485:AddButton({
     Name = "Hop Sever Vip",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/anuragaming1/Meow_gaming/refs/heads/main/Servervip.lua.txt"))()
  end
  })
local _ = v485:AddSection({"Farm Bounty And PvP"})
  v485:AddButton({
     Name = "Lonely Hub PVP",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip12/LonelyHub/refs/heads/main/LonelyHub-PVP.lua"))()
  end
  })
  v485:AddButton({
     Name = "Hermanos PVP",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/hermanos-dev/hermanos-hub/refs/heads/main/Loader.lua"))()
  end
  })
  v485:AddButton({
     Name = "Teddy Hub Farm Bounty",
    Callback = function()
      getgenv().Config = {
    ["Team"] = "Pirates",
    ["Safe Health"] = { 40, 50 }, ---health dodge run,health back %
    ["Skip"] = {
        ["Fruit"] = {
            ["Enabled"] = true,
            ["Avoid Fruit"] = { "Portal", "Kitsune", "Tiger", "Dragon" }
        },
        ["Avoid V4"] = true
    },
    ["Hunt Method"] = {
        ["Use Move Predict"] = true,
        ["Hit and Run"] = true
    },
    ["Spam All Skill On V4"] = {
        ["Enabled"] = true,
        ["Weapons"] = { "Melee", "Gun", "Sword", "Blox Fruit" }
    },
    ["Chat"] = {
        ["Enabled"] = false,
        ["Message"] = { "ez", "bounty pls", "teddy hub" }
    },
    ["Custom Y Run"] = {
        ["Enabled"] = true,
        ["Y Run"] = 500
    },
    ["Misc"] = {
        ["Turn On V3"] = true,
        ["Turn On V4"] = true,
        ["Delete Map"] = false,
        ["FPS BOOST"] = false,
        ["White Screen"] = false,
        ["Click Delay"] = 0.5,
        ["Spin Bot"] = {
            ["Enable"] = true,
            ["Spin Speed"] = 15,
            ["Spin Radius"] = 10,
        }
        
    },
    ["Items"] = {
        ["Use"] = { "Melee", "Gun", "Sword", "Blox Fruit" },
        ["Melee"] = {
            ["Enable"] = true,
            ["Skills"] = {
                ["Z"] = { ["Enable"] = true, ["HoldTime"] = 0.6 },
                ["X"] = { ["Enable"] = true, ["HoldTime"] = 0.3 },
                ["C"] = { ["Enable"] = true, ["HoldTime"] = 0.5 }
            }
        },
        ["Blox Fruit"] = {
            ["Enable"] = true,
            ["Skills"] = {
                ["Z"] = { ["Enable"] = true, ["HoldTime"] = 0 },
                ["X"] = { ["Enable"] = true, ["HoldTime"] = 0 },
                ["C"] = { ["Enable"] = true, ["HoldTime"] = 0 },
                ["V"] = { ["Enable"] = false, ["HoldTime"] = 0 },
                ["F"] = { ["Enable"] = false, ["HoldTime"] = 0 }
            }
        },
        ["Sword"] = {
            ["Enable"] = true,
            ["Skills"] = {
                ["Z"] = { ["Enable"] = true, ["HoldTime"] = 0.8 },
                ["X"] = { ["Enable"] = true, ["HoldTime"] = 0.5 }
            }
        },
        ["Gun"] = {
            ["Enable"] = true,
            ["Skills"] = {
                ["Z"] = { ["Enable"] = true, ["HoldTime"] = 0 },
                ["X"] = { ["Enable"] = true, ["HoldTime"] = 0 }
            }
        }
    },
    ["Webhook"] = {
        ["Enabled"] = false, 
        ["Url"] = ""---input webhook 
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TeddyHub-BountyEzz.lua"))()
  end
  })
  v485:AddButton({
     Name = "Night Hub Farm Bounty",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/Auto-Bounty.luau"))()
  end
  })
  v485:AddButton({
     Name = "Night M1 Fruit Bounty",
    Callback = function()
      getgenv().Config = {
    Team = "Pirates",
    HideUI = true,
    HuntConfig = {
        ["Earned Notification Enabled"] = true,
        ["Reset Farm (New)"] = false,
        ["Chat"] = false,
        ["Farm Delay"] = 0.22, -- 0.15 - Super Fast(Risk - Kick) | 0.22 Fast | 0.35 Medium | Max 0.5
        ["Webhook"] = {
            Enabled = false,
            Url = ""
        }
    }
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/2ffcdb62773f587bfb9eb0d52bb35b0c.lua"))()
  end
  })
local _ = v485:AddSection({"Script Premium"})