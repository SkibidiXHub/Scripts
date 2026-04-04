local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.10615778, 0, 0.16217947, 0)
ImageButton.Size = UDim2.new(0, 40, 0, 40)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=78617112299549"

UICorner.CornerRadius = UDim.new(1, 10) 
UICorner.Parent = ImageButton

ImageButton.MouseButton1Down:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
end)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
repeat wait() until game:IsLoaded()
local Window = Fluent:CreateWindow({
    Title = "Dojo Hub | Hop Sever",
    SubTitle = "Blox Fruit",
    TabWidth = 157,
    Size = UDim2.fromOffset(450, 300),
    Acrylic = true,
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
        Main0=Window:AddTab({ Title="Dough King" }),
        Main1=Window:AddTab({ Title="Hop Full Moon" }),
        Main2=Window:AddTab({ Title="Hop Near Moon" }),
        Main3=Window:AddTab({ Title="Hop berry" }),
        Main4=Window:AddTab({ Title="Hop Elite" }),
       Main5=Window:AddTab({ Title="Hop Rip_Indra" }),
}
    Tabs.Main0:AddButton({
    Title = "Hop Dough King",
    Description = "",
    Callback = function()
        {
  "count": 10,
  "data": [
    {
      "Age": 143,
      "JobId": "NIGHTHUB|pbop3pGbA3pbpvcIibp3pwbI3p3wxIpbbp3pKpR3ptipjIi3w3p7bA3pxIbzIi3pbGb3pvcNHNH3p8bi3ptipVHt3pba33pbpIi3pwbI3ptipj3pKP73pHtxI3pbi33pHtbpNHHt3pKpR3p3wpj3pAop3ppVpb3pFpb3ppbHtoppb3pKP73popNHNH3pbGb3ppjbzpjvc3pwbI3ppjIipb3ppSp3pNHbz3wbz3pVpb3pbpxIop3pKP73p3wbzti3pFpb3pvcpjxI3p7bA3pvcvcNH3pNbi3pNHHtvcpj3pSpb3ppjopNH3pKP73ppbNHHt3pwbI3ppjvcpVHt3pSpb3popxIopbz3pba33pbppjpjHt3pKpR3pNHbzNH3p8bi3pbpopHt3pwbI3ppbHttiti3ppSp3pvcpbNHxI3ppSp3pHtxIpbbz3p8bi3poppjop3pNbi3pxIbzbz3pKpS3pbzHtxIIi3p7bA3pti=",
      "Name": "Unknown",
      "PlaceId": 7449423635,
      "Players": 10,
      "Sea": "Sea3"
    },
    {
      "Age": 140,
      "JobId": "NIGHTHUB|3wxI3ppSp3ppVNHpjti3pKpR3popNHIi3w3pba33ppVpVop3pwbI3pHtxI3pSpb3p3w3wti3pFpb3pbpIibpvc3pNbi3ppbIi3pNbi3pIibpIixI3pKP73pIixIpVpV3pkbi3ptipVpV3pAop3ppVvc3pGbA3ptitibp3pVpb3pbzpb3pKP73ptibpvc3pbGb3ptipbpV3pwbI3ppVxIbp3pbGb3pvcHtxI3pKpR3pIipVbpNH3pKP73poppb3pFpb3pbpvcHt3pAop3ppbpj3w3pGbA3pxIopvc3w3p8bi3pxIHtti3pKP73pNHvc3pSpb3pNHpV3pkbi3pIiHtxI3w3ppSp3p3wopbp3p7bA3poppVti3p7bA3p3wbpxIbz3pbGb3pbzvcti3p7bA3pxIpjHt3pKpS3ppjHtbp3ppSp3pop3w3wNH3ppSp3ptivc3pSpb3ppjbp3pKpR3ppj=",
      "Name": "Unknown",
      "PlaceId": 100117331123089,
      "Players": 12,
      "Sea": "Sea3"
    },
    {
      "Age": 134,
      "JobId": "NIGHTHUB|3wop3pGbA3ppjti3pwbI3pHtbzpbti3pKpR3pHtIipb3p7bA3ppVopbp3pbGb3ppbpbpV3p8bi3pIibz3pba33pbzpjvcbz3pwbI3ppbbpHt3pKP73ppVpVHtbz3pbi33pHtopti3pKpR3p3wIi3pAop3ppVIi3pFpb3pxIHtpbbz3pKP73pvcNHpj3pbGb3pNHpV3w3pwbI3ppVvc3ppSp3popbzpb3pVpb3pIipVHt3pKP73p3wtibz3pFpb3ppbop3p7bA3pbptibz3pNbi3poppjbz3pSpb3popvcpV3w3pKP73pHtpjpV3pwbI3pIipjvc3pSpb3pbpbppj3pba33pbpHtop3pKpR3pIipjvc3p8bi3pbzHttipj3pwbI3p3wbz3w3ppSp3pvcIipb3ppSp3pti3w3w3p8bi3pIixIbz3pNbi3pbppjxI3pKpS3ppbvc3p7bA3ppbNH=",
      "Name": "Unknown",
      "PlaceId": 7449423635,
      "Players": 10,
      "Sea": "Sea3"
    },
    {
      "Age": 130,
      "JobId": "NIGHTHUB|pj3pKpS3popbz3pKpS3pbzvcHt3pGbA3p3wtibp3pba33ppjNH3pKpS3pxIHtpVpb3p8bi3pbpbpvc3pNbi3pIipjopop3pba33pIibpNHpb3pKP73pxIpbxI3pba33ppj3wHt3pVpb3pIibzbp3pkbi3pNHHt3pbGb3ppjpjpj3pKP73pIiNHpj3pbGb3ppbvcbz3pbi33pIibzopbp3pkbi3p3w3w3pKpR3ppbpV3pKP73ppbIiop3pGbA3pIixI3pKpS3pvcIibzbp3pKpR3popxIbzNH3pwbI3pHtxIpV3pKP73pxINHxI3pAop3pbzpjpb3pba33pbz3w3pFpb3pbppb3pKpS3pti3wbp3pKpR3ppjopIipj3pGbA3ptiHt3pbi33pHtvc3pVpb3p3wpb3pKpR3ppjIiopIi3pba33poppjHt3pSpb3pbpoppb3pkbi3ppb=",
      "Name": "Unknown",
      "PlaceId": 7449423635,
      "Players": 5,
      "Sea": "Sea3"
    },
    {
      "Age": 73,
      "JobId": "NIGHTHUB|xINH3pGbA3pbzpjIi3pwbI3ppjbzxI3pKpR3ppjxI3w3p7bA3pbzbpIi3pbGb3pvcHt3p8bi3ppVvcIi3pba33ppVpb3pwbI3popxI3wpj3pKP73ppVHt3pbi33ppbbppV3pKpR3ppjti3pAop3pNHti3w3pFpb3pvcpbHt3pKP73pxIHtNH3pbGb3pNHpj3pwbI3pNHvc3ppSp3pbppbpV3pVpb3ppjpVpjHt3pKP73poppj3pFpb3pNHxIti3p7bA3poppjxI3pNbi3popbz3pSpb3pvcop3pKP73ppjHtxI3pwbI3pNHbz3pSpb3pxIbzpV3pba33ptibzpV3pKpR3ptixIvc3p8bi3pvcpV3pwbI3popIitipb3ppSp3pbpbztiti3ppSp3pbpbzxINH3p8bi3ptixI3pNbi3pNHpjop3pKpS3pbppVxIHt3p7bA3pIixI=",
      "Name": "Unknown",
      "PlaceId": 7449423635,
      "Players": 11,
      "Sea": "Sea3"
    },
    {
      "Age": 66,
      "JobId": "NIGHTHUB|pb3pSpb3ppjNHpV3ppSp3pHtIibzpb3pAop3pNHvc3pba33pvcbp3pAop3pNHbz3pbGb3pNHIixI3pAop3pvcNHbp3pwbI3ptivc3pKP73pxIbpHt3pVpb3pbpop3pSpb3ppjtiHt3w3pKpS3pbpvc3pNbi3pNHNHIi3pKP73pIiHtbp3pbGb3ppVti3ppSp3pHtxI3pwbI3popbz3pFpb3ppbNHti3pKP73ppjIibpvc3pGbA3ppjpj3p7bA3pHttiop3pba33pxIbppVIi3pGbA3pti3w3pKP73pxItipj3pSpb3p3wIiHt3pbGb3pvcpVxI3p7bA3pNHopvcxI3pFpb3pHtNH3pFpb3pNHpVpj3pFpb3pvcpVNHxI3pbGb3ppVxIvcop3pba33ppbNHbpIi3pAop3pNH3wpV3pNbi3ppboppV3p7bA3pNHxI3w3pAop3p3wxI=",
      "Name": "Unknown",
      "PlaceId": 7449423635,
      "Players": 3,
      "Sea": "Sea3"
    },
    {
      "Age": 63,
      "JobId": "NIGHTHUB|Htti3pGbA3pvcvcbz3pwbI3pbzbzNH3pKpR3p3wtiIi3p7bA3pbpIipjxI3pbGb3p3wbzpVti3p8bi3ppVpbpb3pba33ptixI3pwbI3pvcvcvc3pKP73pNHbptiop3pbi33ptiNHHt3w3pKpR3pHtpbpj3pAop3ppVpV3w3pFpb3pbzHtop3pKP73popti3pbGb3pvcIi3pwbI3ptixIpb3ppSp3p3wHt3pVpb3pxIpVop3pKP73poppj3pFpb3pIibp3w3p7bA3pbpbpti3pNbi3ppjNH3pSpb3pbpIixI3pKP73popNHti3w3pwbI3pvcop3pSpb3ppbbpbz3pba33ppbNHpj3pKpR3pbpbzpb3p8bi3popvc3w3pwbI3ppbHtxI3ppSp3pbpvc3ppSp3ppjIibzHt3p8bi3pbz3wpb3pNbi3poptitipV3pKpS3pvctixIHt3p7bA3pbp=",
      "Name": "Unknown",
      "PlaceId": 7449423635,
      "Players": 11,
      "Sea": "Sea3"
    },
    {
      "Age": 52,
      "JobId": "NIGHTHUB|ti3pSpb3pNH3wxI3ppSp3pvcpVopvc3pAop3pvcvcIipj3pba33ptipVpb3pAop3ppbNH3pbGb3pbpNHpV3pAop3pNHIixI3pwbI3pNHpVpj3pKP73ptiHtIiti3pVpb3popbpbp3pSpb3ppVxI3pKpS3pHtIi3pNbi3pNHNHbz3w3pKP73p3wbzpV3pbGb3pbzbpNH3ppSp3pbzpV3pwbI3pNHNH3pFpb3pIiNH3pKP73pbpbzti3pGbA3popxIpjHt3p7bA3poppVbp3pba33pvcti3pGbA3pHtpV3pKP73pHtbz3pSpb3poppj3pbGb3ppVpj3p7bA3ppVpjpjbz3pFpb3ptiti3pFpb3p3wHtvcpV3pFpb3pHtpbti3pbGb3pbpbp3pba33pbpIipV3pAop3pNHti3pNbi3popoppVpV3p7bA3p3wti3w3pAop3ppVpb=",
      "Name": "Unknown",
      "PlaceId": 7449423635,
      "Players": 3,
      "Sea": "Sea3"
    },
    {
      "Age": 4,
      "JobId": "NIGHTHUB|pV3pGbA3ppbpjvc3pwbI3ptibppj3pKpR3ptiIi3p7bA3poppVvc3pbGb3pbpvcpV3p8bi3pIibp3pba33pNHbpop3pwbI3p3wtiop3pKP73pIipjvc3pbi33ppjHtNH3pKpR3pNHopti3pAop3ppjpbpb3pFpb3pNHNHNH3pKP73pHtpbti3pbGb3poppV3pwbI3p3wxIxI3ppSp3pbzHtNH3pVpb3pvcpbpbIi3pKP73ppVvcpb3pFpb3ppb3wti3p7bA3pbzopvc3pNbi3pvcxIpj3pSpb3pbz3wIi3pKP73pIi3w3pwbI3ppbpbop3pSpb3pIiNHpb3pba33pIiNH3pKpR3ppbvcpj3p8bi3pHtNHpVpV3pwbI3popIibz3ppSp3pNHNHbz3ppSp3ptiHt3p8bi3p3wpjpV3pNbi3ppjtipj3pKpS3pbzpbti3p7bA3ppVpV=",
      "Name": "Unknown",
      "PlaceId": 7449423635,
      "Players": 12,
      "Sea": "Sea3"
    },
    {
      "Age": 1,
      "JobId": "NIGHTHUB|bpti3pKpS3pvcHt3w3pKpS3ppVtiti3pGbA3pbppjpb3pba33pNHNHtiHt3pKpS3pHtNH3p8bi3popvc3pNbi3pNHti3w3pba33pIi3woppj3pKP73pHtpb3pba33pHtop3w3w3pVpb3pNHop3pkbi3ppjxI3pbGb3pbpxIop3pKP73pvcIibpvc3pbGb3pNHbppVxI3pbi33pbpbp3wpV3pkbi3pbz3wop3pKpR3pNHtivc3pKP73poppV3pGbA3pIipV3pKpS3pNHHtNHNH3pKpR3popHtti3pwbI3pIi3wxI3pKP73pIivcpbxI3pAop3pNHtiNH3pba33ppbHtIi3pFpb3ptipj3w3pKpS3pNH3wvc3pKpR3pNHxI3pGbA3pIivc3pbi33ppVIipb3pVpb3pxIti3w3pKpR3pxIxIpb3pba33pxIti3pSpb3ptipbHt3pkbi3pHt=",
      "Name": "Unknown",
      "PlaceId": 7449423635,
      "Players": 6,
      "Sea": "Sea3"
    }
  ],
  "last_update": 1775308294.11017
}

    Tabs.Main0:AddButton({
    Title = "Youtuber",
    Description = "gà gaming",
    Callback = function()
        setclipboard("https://www.youtube.com/@TBoyRoblox08")
    end
})

    Tabs.Main0:AddButton({
    Title = "Youtuber",
    Description = "gà Gamer",
    Callback = function()
        setclipboard("https://www.youtube.com/@gagaming-u2x")
    end
})
    
    Tabs.Main1:AddButton({
    Title="NgocBong",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/ngocbonggaming/script/refs/heads/main/NgocBongVn.lua"))()
  end
})

Tabs.Main1:AddButton({
    Title="min gaming",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinUp27Vn"))()
  end
})

Tabs.Main1:AddButton({
    Title="ak gaming",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/AkGamingEz/refs/heads/main/AkGaming-V3"))()
  end
})

Tabs.Main1:AddButton({
    Title="Đạt THG",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/DatThg/refs/heads/main/DatThgV3Eng"))()
  end
})

Tabs.Main1:AddButton({
    Title="TeddyHub",
    Description="",
    Callback=function()
	  repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TeddyHub.lua"))()
  end
})

Tabs.Main1:AddButton({
    Title="tdt hub",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/2a2ea2a6d621379a"))()
  end
})

Tabs.Main1:AddButton({
    Title="TDT Hub Kaitun",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/TRANDUYTHINH/scriptdt/refs/heads/main/7bc2bab10110ef77%20(1).lua"))()
  end
})

Tabs.Main1:AddButton({
    Title="Lonely Hub Kaitun",
    Description="",
    Callback=function()
	  repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))()
  end
})

Tabs.Main1:AddButton({
    Title="TDT Hub Kaitun",
    Description="",
    Callback=function()
	  getgenv().AutoExecute = true
getgenv().SettingFarm = {
    ["Reset Teleport"] = {
        ["Enabled"] = false,
        ["Delay Reset"] = 3,
        ["Item Dont Reset"] = {
            ["Fruit"] = {
                ["Enabled"] = true,
                ["All Fruit"] = true,
                ["Select Fruit"] = {
                    ["Enabled"] = false,
                    ["Fruit"] = {}
                }
            }
        }
    },
    ["White Screen"] = false,
    ["Lock Fps"] = {
        ["Enabled"] = true,
        ["FPS"] = 360
    },
    ["Get Items"] = {
        ["Saber"] = true,
        ["Godhuman"] = true,
        ["Skull Guitar"] = true,
        ["Mirror Fractal"] = true,
        ["Cursed Dual Katana"] = true,
        ["Upgrade Race V2-V3"] = true,
        ["Auto Pull Lever"] = true,
        ["Shark Anchor"] = true,
    },
    ["Get Rare Items"] = {
        ["Rengoku"] = false,
        ["Dragon Trident"] = false,
        ["Pole (1st Form)"] = false,
        ["Gravity Blade"] = false
    },
    ["Farm Fragments"] = {
        ["Enabled"] = false,
        ["Fragment"] = 50000
    },
    ["Chat"] = {
        ["Enabled"] = true,
        ["Text"] = "",
        ["Delay"] = "150"
    },
    ["Auto Summon Rip Indra"] = true,
    ["Select Hop"] = {
        ["Hop Server If Have Player Near"] = false,
        ["Hop Find Rip Indra Get Valkyrie Helm or Get Tushita"] = true,
        ["Hop Find Dough King Get Mirror Fractal"] = false,
        ["Hop Find Raids Castle [CDK]"] = true,
        ["Hop Find Cake Queen [CDK]"] = true,
        ["Hop Find Soul Reaper [CDK]"] = true,
        ["Hop Find Darkbeard [SG]"] = true,
        ["Hop Find Mirage [ Pull Lever ]"] = false
    },
    ["Farm Mastery"] = {
        ["Melee"] = false,
        ["Sword"] = false
    },
    ["Buy Haki"] = {
        ["Enhancement"] = false,
        ["Skyjump"] = true,
        ["Flash Step"] = true,
        ["Observation"] = true
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip12/LonelyHub/refs/heads/main/LonelyHub-KaitunBF.lua"))()
  end
})

Tabs.Main1:AddButton({
    Title="Masterhub",
    Description="",
    Callback=function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/obfmoonsec/Masterhub/refs/heads/main/obf"))()
  end
})

Tabs.Main1:AddButton({
    Title="Hiru Hub",
    Description="",
    Callback=function()
	  getgenv().Settings = {
    JoinTeam = true,
    Team = "Marines"
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/kiddohiru/Source/main/BloxFruits.lua"))()
  end
})

Tabs.Main1:AddButton({
    Title="Zero X Hub Auto Bounty",
    Description="",
    Callback=function()
	  repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Team = "Pirates"
getgenv().Mode = "Auto Bounty"
getgenv().Config = {
    ["Safe Health"] = {50, 70}, -- {health run, health kill}
    ["Custom Y Run"] = {
        Enabled = true,
        ["Y Run"] = 5000
    },
    ["Hunt Method"] = {
        ["Use Move Predict"] = false,
        ["Hit and Run"] = false,
        ["Aimbot"] = true,
        ["ESP Player"] = true,
        ["Skip Player"] = {"nhinemtheothangkhac2"},
        ["Max Attack Time"] = 60,
        ["Lock Bounty"] = {
            ["Enabled"] = false,
            ["Bounty"] = {0, 30000000}
        }
    },
    ["Stats"] = {
        ["Enable"] = false,
        ["Reset Stats"] = false,
        ["Point"] = {
            ["Points per lift"] = nil,
            ["Melee"] = nil,
            ["Defence"] = nil,
            ["Sword"] = nil,
            ["Gun"] = nil,
            ["Devil Fruit"] = nil
        }
    },
    ["Shop"] = {
        ["Random Fruit"] = false,
        ["Store Fruit"] = true,
        ["Zoro Sword"] = false
    },
    ["Theme"] = {
        Name = "Basic",
        UIUrl = "", -- rbxassetid://yourid hoặc link ảnh (github, imgur)
        Custom = {
            ["Enable"] = false,
            ["title_color"] = Color3.fromRGB(255, 221, 252),
            ["titleback_color"] = Color3.fromRGB(169, 20, 255),
            ["list_color"] = Color3.fromRGB(255, 221, 252),
            ["liststroke_color"] = Color3.fromRGB(151, 123, 207),
            ["button_color"] = Color3.fromRGB(255, 221, 252),
            ["title_font"] = Enum.Font.FredokaOne,
            ["text_font"] = Enum.Font.Gotham,
            ["title_size"] = 40,
            ["text_size"] = 24
        }
    },
    ["Setting"] = {
        ["World"] = 3,
        ["Remove Saved File"] = false,
        ["White Screen"] = false,
        ["Fast Delay"] = 0.5,
        ["Tween Speed"] = 350,
        ["Bypass TP"] = true,
        ["FPS BOOSTER"] = false,
        ["Url"] = "", -- có thể chỉnh thành {url, true} nếu muốn gửi webhook
        ["Select Region"] = {
            ["Enabled"] = true,
            ["Region"] = {"Singapore"} -- United States, Netherlands, Germany, India, Australia
        }
    },
    ["Skip"] = {
        ["Avoid V4"] = false,
        ["Fruit"] = {
            ["Enabled"] = true,
            ["Avoid Fruit"] = {
                "Portal-Portal",
                "Kitsune-Kitsune"
            }
        }
    },
    ["Spam All Skill On V4"] = {
        Enabled = true,
        ["Weapons"] = {"Melee", "Sword", "Gun", "Blox Fruit"}
    },
    ["Items"] = {
        ["Melee"] = {
            Enable = true,
            Delay = 0.4,
            Skills = {
                Z = {Enable = true, HoldTime = 0.3},
                X = {Enable = true, HoldTime = 0.2},
                C = {Enable = true, HoldTime = 0.5}
            }
        },
        ["Sword"] = {
            Enable = true,
            Delay = 0.5,
            Skills = {
                Z = {Enable = true, HoldTime = 1},
                X = {Enable = true, HoldTime = 0}
            }
        },
        ["Gun"] = {
            Enable = true,
            Delay = 0.3,
            Skills = {
                Z = {Enable = true, HoldTime = 0.1},
                X = {Enable = true, HoldTime = 0.1}
            }
        },
        ["Blox Fruit"] = {
            Enable = true,
            Delay = 0.4,
            Skills = {
                Z = {Enable = true, HoldTime = 0.1},
                X = {Enable = true, HoldTime = 0.1},
                C = {Enable = true, HoldTime = 0.15},
                V = {Enable = true, HoldTime = 0.2},
                F = {Enable = true, HoldTime = 0.1}
            }
        }
    }
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/ca16cb42816b395e079fa7a114352ba9.lua"))()
  end
})

Tabs.Main1:AddButton({
    Title="ko bt tên",
    Description="",
    Callback=function()
	  getgenv().Team = "Pirates"
loadstring(game:HttpGet("https://raw.githubusercontent.com/RealMatsune/Rolls-Rocye/refs/heads/main/Loading.lua"))()
  end
})