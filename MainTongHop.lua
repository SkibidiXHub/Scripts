local vu32 = loadstring(game:HttpGet("https://pastefy.app/5bk02Q6b/raw"))()
local v466 = vu32:MakeWindow({
    Title = "Dojo Hub | Tổng Hợp",
    SubTitle = "By real_skibidi",
    SaveFolder = "DojoHub | redz lib v5.lua"
})

v466:AddMinimizeButton({
    Button = { Image = "rbxassetid://78617112299549", BackgroundTransparency = 1},
    Size = UDim2.new(0, 40, 0, 40),
    Corner = { CornerRadius = UDim.new(0.5, 0) },
})

local v484 = v466:MakeTab({"Script Farm", ""})
local v485 = v466:MakeTab({"Kaitun Farm", ""})
local v486 = v466:MakeTab({"Bounty", ""})
local v487 = v466:MakeTab({"Hop Sever", ""})
local v488 = v466:MakeTab({"Premium Script", ""})

local _ = v484:AddSection({"Blox Fruits"})
v484:AddButton({
    Name = "Blue X (Key)",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
    end
})
v484:AddButton({
    Name = "Gravity Hub (No Key)",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
    end
})
v484:AddButton({
    Name = "Redz Hub (No Key)",
    Callback = function()
        local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/PlockScripts/newredz/refs/heads/main/Remake-version.luau"))(Settings)
    end
})