local vu32 = loadstring(game:HttpGet("https://raw.githubusercontent.com/PlockScripts/Library-ui/refs/heads/main/redz-V5-remake/main.luau"))()
local v466 = vu32:MakeWindow({
    Title = "Dojo Hub | Sailor Piece [ TESTING ]",
    SubTitle = "[ TESTING NO KEY ]",
    SaveFolder = "Redz | redz lib v5.lua"
})

v466:AddMinimizeButton({
    Button = { Image = "rbxassetid://15298567397", BackgroundTransparency = 0 },
    Size = UDim2.new(0, 35, 0, 35),
    Corner = { CornerRadius = UDim.new(0.25, 0) },
})

local v484 = v466:MakeTab({"Main Farm", "home"})
local v485 = v466:MakeTab({"Stack Farm", "sword"})
local v486 = v466:MakeTab({"Local Player", "visual"})
local v487 = v466:MakeTab({"Misc", "settings"})

v484:AddDropdown({
    Name = "Kích Thước UI",
    Description = "",
    Options = {
        "Small",
        "Large",
        "Bigger"
    },
    Default = "Large",
    Callback = function(p36)
        if p36 == "Small" then
            vu32:SetScale(900)
        elseif p36 == "Large" then
            vu32:SetScale(450)
        elseif p36 == "Bigger" then
            vu32:SetScale(300)  
        else
            vu32:SetScale(450)
        end
    end
})

v485:AddToggle({
    Name = "Tự Động Level [ BETA ]",
    Description = "",
    Default = false,
    Callback = function(state)
        _G.AutoFarm = state
        StopTween(_G.AutoFarm)
    end
})