local bearlib =loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiXHub/ui-library/refs/heads/main/uibanana-library"))()
local Window = bearlib:MakeWindow({
    Title = "Dojo Hub | Tổng Hợp",
    SubTitle = "Make by skibidi",
    SaveFolder = false,
    Image = "78617112299549"
})
------ Tab
local Tab0o = Window:MakeTab({
    Title = "info",
    Icon = ""
})
local Tab1o = Window:MakeTab({
    Title = "Script Farm",
    Icon = ""
})
local Tab2o = Window:MakeTab({
    Title = "Kaitun Farm,
    Icon = ""
})
local Tab3o = Window:MakeTab({
    Title = "Hop Sever",
    Icon = ""
})
local Tab4o = Window:MakeTab({
    Title = "Bounty",
    Icon = ""
})
local Tab5o = Window:MakeTab({
    Title = "Settings",
    Icon = ""
})
-----Trong tab
Tab0o:AddDiscordInvite({
    Name = "Discord",
    Description = "",
    Logo = "rbxassetid://78617112299549",
    Invite = "Cặc ko có đâu"
})
Tab0o:AddParagraph({Title = "New Script BETA Version 1.0"})
Tab0o:AddParagraph({Title = "Chúc Anh Em Thi Tốt Nhé"})
local RunService = game:GetService("RunService")
local FPSLabel = nil

-- Tạo Label FPS trong Tab Info
pcall(function()
    if Tab0o.AddLabel then
        FPSLabel = Tab0o:AddLabel("FPS: Đang tính...")
    elseif Tab0o.CreateLabel then
        FPSLabel = Tab0o:CreateLabel("FPS: Đang tính...")
    elseif Tab0o.AddParagraph then
        FPSLabel = Tab0o:AddParagraph({Title = "FPS Monitor", Content = "FPS: Đang tính..."})
    end
end)

-- Cập nhật FPS mỗi 3 giây
local lastUpdate = 0
RunService.RenderStepped:Connect(function(deltaTime)
    -- Kiểm tra nếu đã qua 3 giây chưa
    if tick() - lastUpdate >= 3 then
        local fps = math.floor(1 / deltaTime)
        local fpsText = "FPS: " .. tostring(fps)

        if FPSLabel then
            if FPSLabel.Set then
                FPSLabel:Set(fpsText)
            elseif FPSLabel.SetTitle then
                FPSLabel:SetTitle(fpsText)
            elseif FPSLabel.SetDesc then
                FPSLabel:SetDesc(fpsText)
            elseif FPSLabel.Text then
                FPSLabel.Text = fpsText
            end
        end
        
        lastUpdate = tick() -- Cập nhật lại thời gian
    end
end)
Tab1o:AddSection("Scripr Farm")
Tab1o:AddButton({
    Title = "Redz Hub (No Key)",
    Callback = function()
        local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/newredzv3/Scripts/refs/heads/main/main.luau"))(Settings)
   end
   })
Tab1o:AddButton({
    Title = "Quantum Onyx (No Key)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
   end
   })