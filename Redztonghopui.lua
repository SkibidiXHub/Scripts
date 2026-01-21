local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/UiRedzV5/refs/heads/main/DemoUi.lua"))();

   local Windows = redzlib:MakeWindow({
    Title = "TrongNguyen Hub",
    SubTitle = "By TrongNguyen",
    SaveFolder = "Blox Fruits.lua"
})
Windows:AddMinimizeButton({
  Button = { Image = "rbxassetid://13115173160430", BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 6) }
})

------ Tab
    local Tab1o = MakeTab({Name = "Blox Fruits"})
    local Tab2o = MakeTab({Name = "Kaitun Blox Fruits"})
    local Tab3o = MakeTab({Name = "Auto Bounty"})
----- BUTTON

    AddButton(Tab1o, {
     Name = "Redz Hub 100%",
    Callback = function()
	  loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/20f318386e3fbf069ee3fa797cfc9f34.lua"))()
  end
  })
  AddButton(Tab1o, {
     Name = "Trade Scam",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/MeowOnTopHub/MeowHub/refs/heads/main/loader.luau"))()
  end
  })
  AddButton(Tab1o, {
     Name = "NazuX",
    Callback = function()
	  repeat wait() until game:IsLoaded() and game.Players.LocalPlayer 
loadstring(game:HttpGet("https://luacrack.site/raw.php/NguyenAnhKhoaVN_2279/raw/Main-NazuXHubBF"))()
  end
  })