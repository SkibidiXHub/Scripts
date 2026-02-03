local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/discoart/FluentPlus/refs/heads/main/release.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
-- local window fluent
local Window = Fluent:CreateWindow({
    Title = "Skira BETA (Beta 1.0)",
    SubTitle = " by SkiraHub",
    TitleIcon = "rbxassetid://125106574805976", 
    Image = "rbxassetid://125106574805976", 
    DropdownsOutsideWindow = true,
    Size = UDim2.fromOffset(500, 350),
    TabWidth = 180,
    Acrylic = true,
    Theme = "Dark",
    Search = true,
    MinimizeKey = Enum.KeyCode.LeftControl, 

    UserInfo = false,
    UserInfoTop = true,
    UserInfoTitle = game:GetService("Players").LocalPlayer.DisplayName,
    UserInfoSubtitle = "User",
    UserInfoSubtitleColor = Color3.fromRGB(255, 255, 255)
})