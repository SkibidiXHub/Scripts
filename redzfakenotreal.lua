```local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/UiRedzV5/refs/heads/main/DemoUi.lua"))();

   local Windows = redzlib:MakeWindow({
    Title = "Anura Gaming",
    SubTitle = "Youtuber Top 1",
    SaveFolder = "Blox Fruits.lua"
})
Windows:AddMinimizeButton({
  Button = { Image = "rbxassetid://131151731604309", BackgroundTransparency = 0 },
  Corner = { CornerRadius = UDim.new(0, 6) }
})

local Farm = Windows:MakeTab({"Farm","Info"})

Farm:AddSection("Main Farm")

    Farm:AddToogle({
    Name = "Auto Cày Cấp",
    Callback = function()
    end
})
    Farm:AddToogle({
    Name = "Auto Quái Gần",
    Callback = function()
    end
})
    Farm:AddToogle({
    Name = "Auto Nhà Máy",
    Callback = function()
    end
})

Farm:AddSection("Cặc Cha")
    Farm:AddToogle({
    Name = "Bú Cu Ronaldo",
    Callback = function()
    end
})