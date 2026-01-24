local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/UiRedzV5/refs/heads/main/DemoUi.lua"))();

   local Windows = redzlib:MakeWindow({
    Title = "Skira TongHop",
    SubTitle = "By Phongdz",
    SaveFolder = "Blox Fruits.lua"
})
Windows:AddMinimizeButton({
  Button = { Image = "rbxassetid://131151731604309", BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 6) }
})

local TabDiscord = Windows:MakeTab({"Blox Fruits","home"})
local TabFarm = Windows:MakeTab({"Kaitun Blox Fruits","star"})
local TabFarm = Windows:MakeTab({"99 Night","night"})

local Tabdiscord:AddButton({
    Title = "Death Step",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_ = ReplicatedStorage.Remotes.CommF_
        CommF_:InvokeServer("BuyDeathStep")
    end
})