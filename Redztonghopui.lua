local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SLK-gaming/New-Gui/refs/heads/main/New-Redz.lua"))()

   local Window = redzlib:MakeWindow({
  Title = "TrongNguyen Hub",
  SubTitle = "By TrongNguyen",
  SaveFolder = "Redz Mod.lua"
})
Windows:AddMinimizeButton({
  Button = { Image = "rbxassetid://13115173160430", BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 6) }
})

local TabDiscord = Window:MakeTab({"Discord", "info"})