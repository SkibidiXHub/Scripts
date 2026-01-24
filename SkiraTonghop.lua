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
local TabMain = Windows:MakeTab({"Kaitun Blox Fruits","star"})
local TabFarm = Windows:MakeTab({"99 Night","night"})
Main:AddSection("Main Farm")

local TabMain:AddButton({
  Name = "Kaitun Skira Hub",
  Description = "",
  Default = false,
  Callback = function()
    repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiXHub/Scripts/refs/heads/main/ChestTPSkira.lua"))()
  end
})