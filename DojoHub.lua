local vu32 = loadstring(game:HttpGet("https://raw.githubusercontent.com/PlockScripts/Library-ui/refs/heads/main/redz-V5-remake/main.luau"))()
local v466 = vu32:MakeWindow({
    Title = "Dojo Hub Tổng Hợp",
    SubTitle = "[ BETA ]",
    SaveFolder = "Redz | redz lib v5.lua"
})

v466:AddMinimizeButton({
    Button = { Image = "rbxassetid://78617112299549", BackgroundTransparency = 0 },
    Size = UDim2.new(0, 35, 0, 35),
    Corner = { CornerRadius = UDim.new(0.25, 0) },
})

local v484 = v466:MakeTab({"Blox Fruits", ""})
local v485 = v466:MakeTab({"Hop Sever", ""})
local v486 = v466:MakeTab({"Auto Bounty", ""})
local v487 = v466:MakeTab({"Kaitun Farm", ""})

local _ = v484:AddSection({"Blox Fruits"})
v484:AddButton({
    Name = "Redz Hub",
    Description = "",
    Callback = function()
        local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/PlockScripts/newredz/refs/heads/main/Remake-version.luau"))(Settings)
v484:AddButton({
    Name = "Gravity Hub",
    Description = "",
    Callback = function()
        local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
v484:AddButton({
    Name = "Quantum Hub",
    Description = "",
    Callback = function()
        local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()