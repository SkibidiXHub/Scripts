shared.LoaderTitle = "SHARE BY SKIBDI";
shared.LoaderKeyFrames = {
    [1] = {
        1,
        10
    },
    [2] = {
        2,
        30
    },
    [3] = {
        3,
        60
    },
    [4] = {
        2,
        100
    }
};
local v2 = {
    LoaderData = {
        Name = shared.LoaderTitle or "A Loader",
        Colors = shared.LoaderColors or {
            Main = Color3.fromRGB(0, 0, 0),
            Topic = Color3.fromRGB(200, 200, 200),
            Title = Color3.fromRGB(255, 255, 255),
            LoaderBackground = Color3.fromRGB(40, 40, 40),
            LoaderSplash = Color3.fromRGB(3, 252, 3)
        }
    },
    Keyframes = shared.LoaderKeyFrames or {
        [1] = {
            1,
            10
        },
        [2] = {
            2,
            30
        },
        [3] = {
            3,
            60
        },
        [4] = {
            2,
            100
        }
    }
};
local v3 = {
    [1] = "",
    [2] = "",
    [3] = "",
    [4] = ""
};
function TweenObject(v178, v179, v180)
    game.TweenService:Create(v178, TweenInfo.new(v179, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), v180):Play();
end
function CreateObject(v181, v182)
    local v183 = Instance.new(v181);
    local v184;
    for v416, v417 in pairs(v182) do
        if (v416 ~= "Parent") then
            v183[v416] = v417;
        else
            v184 = v417;
        end
    end
    v183.Parent = v184;
    return v183;
end
local function v4(v186, v187)
    local v188 = Instance.new("UICorner");
    v188.CornerRadius = UDim.new(0, v186);
    v188.Parent = v187;
end
local v5 = CreateObject("ScreenGui", {
    Name = "Core",
    Parent = game.CoreGui
});
local v6 = CreateObject("Frame", {
    Name = "Main",
    Parent = v5,
    BackgroundColor3 = v2.LoaderData.Colors.Main,
    BorderSizePixel = 0,
    ClipsDescendants = true,
    Position = UDim2.new(0.5, 0, 0.5, 0),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0, 0, 0, 0)
});
v4(12, v6);
local v7 = CreateObject("ImageLabel", {
    Name = "UserImage",
    Parent = v6,
    BackgroundTransparency = 1,
    Image = "rbxassetid://125106574805976",
    Position = UDim2.new(0, 15, 0, 10),
    Size = UDim2.new(0, 50, 0, 50)
});
v4(25, v7);
local v8 = CreateObject("TextLabel", {
    Name = "UserName",
    Parent = v6,
    BackgroundTransparency = 1,
    Text = "Welcome to the script BloxFruits",
    Position = UDim2.new(0, 75, 0, 10),
    Size = UDim2.new(0, 200, 0, 50),
    Font = Enum.Font.GothamBold,
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v9 = CreateObject("TextLabel", {
    Name = "Top",
    TextTransparency = 1,
    Parent = v6,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 70),
    Size = UDim2.new(0, 301, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "Loader",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 10,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v10 = CreateObject("TextLabel", {
    Name = "Title",
    Parent = v6,
    TextTransparency = 1,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 90),
    Size = UDim2.new(0, 301, 0, 46),
    Font = Enum.Font.Gotham,
    RichText = true,
    Text = "<b>" .. v2.LoaderData.Name .. "</b>",
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v11 = CreateObject("Frame", {
    Name = "BG",
    Parent = v6,
    AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderBackground,
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, 0, 0, 70),
    Size = UDim2.new(0.8500000238418579, 0, 0, 24)
});
v4(8, v11);
local v12 = CreateObject("Frame", {
    Name = "Progress",
    Parent = v11,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderSplash,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Size = UDim2.new(0, 0, 0, 24)
});
v4(8, v12);
local v13 = CreateObject("TextLabel", {
    Name = "StepLabel",
    Parent = v6,
    BackgroundTransparency = 1,
    Position = UDim2.new(0.5, 0, 1, - 25),
    Size = UDim2.new(1, - 20, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Center,
    AnchorPoint = Vector2.new(0.5, 0.5)
});
function UpdateStepText(v191)
    v13.Text = v3[v191] or "" ;
end
function UpdatePercentage(v193, v194)
    TweenObject(v12, 0.5, {
        Size = UDim2.new(v193 / 100, 0, 0, 24)
    });
    UpdateStepText(v194);
end
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 346, 0, 121)
});
wait();
TweenObject(v9, 0.5, {
    TextTransparency = 0
});
TweenObject(v10, 0.5, {
    TextTransparency = 0
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 0
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 0
});
for v195, v196 in pairs(v2.Keyframes) do
    wait(v196[1]);
    UpdatePercentage(v196[2], v195);
end
UpdatePercentage(100, 4);
TweenObject(v9, 0.5, {
    TextTransparency = 1
});
TweenObject(v10, 0.5, {
    TextTransparency = 1
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 1
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 1
});
wait(0.5);
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 0, 0, 0)
});
wait(0.25);
v5:Destroy();

loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "Skibidi X Hub",
         Animation = "by Skibidi Tonghop"
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
       Image = "http://www.roblox.com/asset/?id=125106574805976",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Script Farm"})
     local Tab2o = MakeTab({Name = "Script Kaitun"})
     local Tab3o = MakeTab({Name = "Nhặt Chest"})
     local Tab4o = MakeTab({Name = "Hop Sever"})
     local Tab5o = MakeTab({Name = "Tổng Hợp Khác"})
     
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "Redz Hub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))(Settings)
  end
  })
    AddButton(Tab1o, {
     Name = "ThienDucScript Banana",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/thienducscript-rgb/Hdhdhd/refs/heads/main/bananahub.txt"))()
  end
  })
  AddButton(Tab1o, {
     Name = "MinGaming",
    Callback = function()
	  getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinUp27Vn"))()
  end
  })
 AddButton(Tab1o, {
     Name = "ThienDucScript Roblox Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/thienducscript-rgb/Hdhdhd/refs/heads/main/sourcescript.txt"))()
  end
  })
  AddButton(Tab1o, {
     Name = "Rise Hub",
    Callback = function()
	  getgenv().Team = "Pirates" --Marines, Pirates
loadstring(game:HttpGet('https://raw.githubusercontent.com/asher-realrise/project/refs/heads/main/loadder.lua'))()
  end
  })
  AddButton(Tab1o, {
     Name = "Banana Premium",
    Callback = function()
	  repeat wait() until game:IsLoaded() and game.Players.LocalPlayer 
getgenv().Key = "JxmTPYUFGcxIPqI" 
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaHub.lua"))()
  end
  })
  AddButton(Tab5o, {
     Name = "DacCauHub TongHop",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Luongdaynetroi/ScriptTongHop/refs/heads/main/.lua"))()
  end
  }) 
  AddButton(Tab1o, {
     Name = "TrongNguyen Hub",
    Callback = function()
	  getgenv().Team = "Pirates" 
loadstring(game:HttpGet("https://raw.githubusercontent.com/trongdeptraihucscript/Main/refs/heads/main/Hoangtrongdepzai.lua"))()
  end
  })
  AddButton(Tab1o, {
     Name = "NazuX Main",
    Callback = function()
	  repeat wait() until game:IsLoaded() and game.Players.LocalPlayer 
loadstring(game:HttpGet("https://luacrack.site/raw.php/NguyenAnhKhoaVN_2279/raw/Main-NazuXHubBF"))()
  end
  })
  AddButton(Tab1o, {
     Name = "Blue X Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
  end
  })
  AddButton(Tab1o, {
     Name = "Gravity Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
  end
  })
  AddButton(Tab1o, {
     Name = "NightX Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/BF-Beta.lua"))()
  end
  })
  AddButton(Tab4o, {
     Name = "Teddy Hop Boss By NightX",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/CrackScript/refs/heads/main/TeddyHub/TeddyHopBossCrack.luau"))()
  end
  })
  AddButton(Tab4o, {
     Name = "NightX Hub Hop Boss",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/WhiteX1208/Scripts/refs/heads/main/HopScript.luau"))()
  end
  })
  AddButton(Tab1o, {
     Name = "Teddy Farm",
    Callback = function()
	  repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))()
  end
  })
  AddButton(Tab1o, {
     Name = "Bacon Hub Main",
    Callback = function()
	  repeat wait() until game:IsLoaded() and game.Players.LocalPlayer 
getgenv().team = "Pirates" -- Pirates or Marines
loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh129150/hack/refs/heads/main/BaconHub.lua"))()
  end
  })
  AddButton(Tab1o, {
     Name = "Hinishi Hub",
    Callback = function()
	  getgenv().team = "Marines" -- Marines or Pirates
_G.Translate = "English"
-- Thai or Russian or Portuguese or Vietnamese
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-Hinishi/Hinishi-Hub/refs/heads/main/Freemium.lua"))()
  end
  })
  AddButton(Tab2o, {
     Name = "Vxeze Auto Bounty",
    Callback = function()
	  repeat task.wait() until game:IsLoaded()
_G.Execute = false
_G.Team = "Marines"
_G.Studio = {
    ["Bounty Hunter"] = {
        ["Player Setting"] = {
            ["Reset Bypass Tp"] = true,
            ["Spam Dash"] = true,
            ["Fps Lock"] = { false, "60" },
            ["Health Setting"] = { 40, 50 },
            ["Custom Pos Y"] = {
                ["Enabled"] = true,
                ["Pos Y"] = 5000
            },
            ["Camera Lock"] = true,
            ["Aim"] = true
        },
        ["Target Setting"] = {
            ["Use All Skill If Race V4"] = {
                ["Enabled"] = true,
                ["Weapons"] = { "Melee", "Gun", "Sword", "Blox Fruit" }
            },
            ["Hunter Method"] = {
                ["Use Move Predict"] = true,
                ["Dogde Skill Target"] = true
            },
            ["Skip Target"] = {
                ["Fruit"] = {
                    ["Enabled"] = true,
                    ["Ignore Devil Fruit"] = { "Buddha", "Leopard", "T-Rex" }
                },
                ["Target Race"] = { "Fishman" },
                ["Race V4"] = true
            }
        },
        ["Setting Skill"] = {
            ["Use"] = { "Melee", "Sword", "Blox Fruit", "Gun" },
            ["Melee"] = {
                ["Enable"] = true,
                ["Delay"] = 0,
                ["Skills"] = {
                    ["Z"] = { ["Enable"] = true, ["HoldTime"] = 0 },
                    ["X"] = { ["Enable"] = true, ["HoldTime"] = 0 },
                    ["C"] = { ["Enable"] = true, ["HoldTime"] = 0 }
                }
            },
            ["Blox Fruit"] = {
                ["Enable"] = false,
                ["Delay"] = 0.3,
                ["Skills"] = {
                    ["Z"] = { ["Enable"] = false, ["HoldTime"] = 0.3 },
                    ["X"] = { ["Enable"] = false, ["HoldTime"] = 0.3 },
                    ["C"] = { ["Enable"] = false, ["HoldTime"] = 0.3 },
                    ["V"] = { ["Enable"] = false, ["HoldTime"] = 0.3 },
                    ["F"] = { ["Enable"] = false, ["HoldTime"] = 0.3 }
                }
            },
            ["Sword"] = {
                ["Enable"] = true,
                ["Delay"] = 0,
                ["Load"] = "Cursed Dual Katana",
                ["Skills"] = {
                    ["Z"] = { ["Enable"] = true, ["HoldTime"] = 0 },
                    ["X"] = { ["Enable"] = true, ["HoldTime"] = 0 }
                }
            },
            ["Gun"] = {
                ["Enable"] = true,
                ["Delay"] = 0.1,
                ["Load"] = "Skull Guitar",
                ["Skills"] = {
                    ["Z"] = { ["Enable"] = true, ["HoldTime"] = 0.5 },
                    ["X"] = { ["Enable"] = true, ["HoldTime"] = 0.5 }
                }
            }
        }
    }
}
_G.Misc = {
    ["Quest"] = {
        ["Hunter"] = false
    },
    ["Set Bounty"] = {
        ["Min"] = 0,
        ["Max"] = 30000000
    },
    ["Chat"] = {
        ["Enabled"] = true,
        ["Message"] = { "Vxeze Hub Auto Bounty On Top | discord.gg/SMT26Vajqv" }
    },
    ["Random"] = {
        ["Fruit & Store"] = true,
        ["Bone"] = true
    }
}
_G.HunterGui = {
    ["Hide_Gui"] = false,
    ["Setting"] = {
        ["Gui"] = {}
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/VxezeHubPremium/refs/heads/main/BF-HunterBounty.lua"))()
  end
  })
  AddButton(Tab1o, {
     Name = "Nana Tv",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/NaNacuti/nanabeo/refs/heads/main/NaNaTVHub.lua"))()
  end
  })
  AddButton(Tab2o, {
     Name = "Gravity Hub Kaitun",
    Callback = function()
	  repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Kaitun.lua"))()
  end
  })
  AddButton(Tab2o, {
     Name = "Hinishi Kaitun",
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
  AddButton(Tab3o, {
     Name = "TrongNguyen Kaitun Chest",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/trongdeptraihucscript/Main/refs/heads/main/TN-Tp-Chest.lua"))()
  end
  })
  AddButton(Tab2o, {
     Name = "Arya Kaitun",
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
  AddButton(Tab2o, {
     Name = "Kaitun V4",
    Callback = function()
	  getgenv().TeddyHub = {
    ["Allies"] = {
        "name","name", 
        "name"
    },
    ["Method"] = "Kill Players After Trial", -- Kill Players After Trial, Reset Player After Trial
    ["MainAccount"] = "name", -- for teleport to server of main account
    ["Team"] = "Marines",
    ["Gear"] = "A-B-B", -- "A-A-B" or ""  NOT GEAR 1 and 5
    ["ResetAfterTrial"] = true
}
loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/d91754ae22d3cd7e"))()
  end
  })
  AddButton(Tab5o, {
     Name = "Tổng Hợp Ko Bt Tên",
    Callback = function()
	  repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/stuckez999/main/refs/heads/main/tonghoproblox.lua"))()
  end
  })
  AddButton(Tab1o, {
     Name = "Nak hub redz",
    Callback = function()
	  getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Naknohack/Nakhubredz/refs/heads/main/Nakredz.txt"))()
  end
  })
  AddButton(Tab1o, {
     Name = "Quantum Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
  end
  })
  AddButton(Tab2o, {
     Name = "Auto Ghoul",
    Callback = function()
	  getgenv().Config = {
    ["Team"] = "Pirates",
    ["Tween Speed"] = 260,
    ["Weapon"] = {"Melee"},
    ["Start Farming"] = true,
    ["Auto Farm Ectoplasm"] = true,
    ["Auto Upgrade Race Ghoul"] = true,
    ["Fps Boost"] = false
}

loadstring(game:HttpGet(" https://raw.githubusercontent.com/SkibidiHub111/Ghoul/refs/heads/main/Ghoul"))()



Cyborg
getgenv().Config = {
    ["Enable"] = true,
    ["Hop Limit"] = 30,
    ["TweenSpeed"] = 230,
    ["Team"] = "Marines",
    ["Webhook"] = {
        ["Url"] = "",
        ["Name"] = "No1Hub", 
        ["Enable"] = true,
        ["PingEveryone"] = true
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiHub111/Url/refs/heads/main/Cyborg"))()
  end
  })