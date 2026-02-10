repeat
    task.wait()
until game:IsLoaded()
game:GetService("Players").LocalPlayer.PlayerGui.Interface.FishingCatchFrame.TimingBar.SuccessArea:GetPropertyChangedSignal("Size"):Connect(function()
    game:GetService("Players").LocalPlayer.PlayerGui.Interface.FishingCatchFrame.TimingBar.SuccessArea.Position = UDim2.new(0.5, 0, 0, 0)
    game:GetService("Players").LocalPlayer.PlayerGui.Interface.FishingCatchFrame.TimingBar.SuccessArea.Size = UDim2.new(1, 0, 1, 0)
end)
local vu1 = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local vu2 = game:GetService("Players")
local vu3 = game:GetService("ReplicatedStorage")
local vu4 = game:GetService("Workspace")
local vu5 = vu2.LocalPlayer
local vu6 = game:GetService("Lighting")
local vu7 = vu6:FindFirstChild("VibrantEffect")
local v8 = vu6:FindFirstChild("VibrantEffect")
game:GetService("RunService")
vu6.ClockTime = 14
vu6.GlobalShadows = false
vu1:AddTheme({
    Name = "Dark",
    Accent = "#18181b",
    Dialog = "#18181b",
    Outline = "#FFFFFF",
    Text = "#FFFFFF",
    Placeholder = "#999999",
    Background = "#0e0e10",
    Button = "#52525b",
    Icon = "#a1a1aa"
})
vu1:AddTheme({
    Name = "Light",
    Accent = "#f4f4f5",
    Dialog = "#f4f4f5",
    Outline = "#000000",
    Text = "#000000",
    Placeholder = "#666666",
    Background = "#ffffff",
    Button = "#e4e4e7",
    Icon = "#52525b"
})
vu1:AddTheme({
    Name = "Gray",
    Accent = "#374151",
    Dialog = "#374151",
    Outline = "#d1d5db",
    Text = "#f9fafb",
    Placeholder = "#9ca3af",
    Background = "#1f2937",
    Button = "#4b5563",
    Icon = "#d1d5db"
})
vu1:AddTheme({
    Name = "Blue",
    Accent = "#1e40af",
    Dialog = "#1e3a8a",
    Outline = "#93c5fd",
    Text = "#f0f9ff",
    Placeholder = "#60a5fa",
    Background = "#1e293b",
    Button = "#3b82f6",
    Icon = "#93c5fd"
})
vu1:AddTheme({
    Name = "Green",
    Accent = "#059669",
    Dialog = "#047857",
    Outline = "#6ee7b7",
    Text = "#ecfdf5",
    Placeholder = "#34d399",
    Background = "#064e3b",
    Button = "#10b981",
    Icon = "#6ee7b7"
})
vu1:AddTheme({
    Name = "Purple",
    Accent = "#7c3aed",
    Dialog = "#6d28d9",
    Outline = "#c4b5fd",
    Text = "#faf5ff",
    Placeholder = "#a78bfa",
    Background = "#581c87",
    Button = "#8b5cf6",
    Icon = "#c4b5fd"
})
vu1:SetNotificationLower(true)
local vu9 = {
    "Dark",
    "Light",
    "Gray",
    "Blue",
    "Green",
    "Purple"
}
local vu10 = 1
if not getgenv().TransparencyEnabled then
    getgenv().TransparencyEnabled = true
end
local vu11 = false
local vu12 = false
local vu13 = false
local vu14 = 50
local vu15 = 0
local vu16 = {
    ["Old Axe"] = "3_7367831688",
    ["Good Axe"] = "112_7367831688",
    ["Strong Axe"] = "116_7367831688",
    Chainsaw = "647_8992824875",
    ["Infernal Sword"] = "2_4340578793",
    Spear = "196_8999010016"
}
local vu17 = false
local vu18 = {}
local vu19 = 75
local vu20 = {
    "Bandage",
    "Bolt",
    "Broken Fan",
    "Broken Microwave",
    "Cake",
    "Carrot",
    "Chair",
    "Coal",
    "Coin Stack",
    "Cooked Morsel",
    "Cooked Steak",
    "Fuel Canister",
    "Iron Body",
    "Leather Armor",
    "Log",
    "MadKit",
    "Metal Chair",
    "MedKit",
    "Old Car Engine",
    "Old Flashlight",
    "Old Radio",
    "Revolver",
    "Revolver Ammo",
    "Rifle",
    "Rifle Ammo",
    "Morsel",
    "Sheet Metal",
    "Steak",
    "Tyre",
    "Washing Machine",
    "Cultist Gem",
    "Gem of the Forest Fragment"
}
local vu21 = {
    "Bunny",
    "Wolf",
    "Alpha Wolf",
    "Bear",
    "Cultist",
    "Crossbow Cultist",
    "Alien",
    "Alien Elite"
}
local vu22 = {}
local vu23 = {}
local vu24 = {}
local vu25 = {}
local vu26 = {}
local vu27 = false
local vu28 = nil
local vu29 = false
local vu30 = false
local vu31 = false
local vu32 = false
local vu33 = false
local vu34 = false
local vu35 = false
local vu36 = false
local vu37 = false
local vu38 = false
local function vu48(pu39, pu40, pu41)
    local vu42 = game.Players.LocalPlayer.Character.HumanoidRootPart
    local vu43 = tick()
    local _ = (pu40.Position - pu39.Position).Magnitude
    local _ = (pu40.Position - pu39.Position).Unit
    spawn(function()
        while tick() - vu43 < pu41 do
            local v44 = (tick() - vu43) / pu41
            local v45 = v44 < 0.5 and 2 * v44 * v44 or 1 - math.pow(- 2 * v44 + 2, 2) / 2
            local v46 = pu39.Position:lerp(pu40.Position, v45)
            local v47 = pu40.Position - v46
            if v47.Magnitude <= 0 then
                vu42.CFrame = CFrame.new(v46)
            else
                vu42.CFrame = CFrame.lookAt(v46, v46 + v47.Unit)
            end
            wait()
        end
        vu42.CFrame = pu40
    end)
    wait(pu41)
end
local function vu57(pu49, pu50, pu51)
    if pu49 and pu49.Parent then
        local vu52 = pu49.Position
        local vu53 = tick()
        spawn(function()
            while tick() - vu53 < pu51 and (pu49 and pu49.Parent) do
                local v54 = (tick() - vu53) / pu51
                local v55 = 1 - math.pow(1 - v54, 3)
                local vu56 = Vector3.new(vu52.X + (pu50.X - vu52.X) * v55, vu52.Y + (pu50.Y - vu52.Y) * v55, vu52.Z + (pu50.Z - vu52.Z) * v55)
                pcall(function()
                    pu49.CFrame = CFrame.new(vu56)
                    pu49.Velocity = Vector3.new(0, 0, 0)
                    pu49.AngularVelocity = Vector3.new(0, 0, 0)
                end)
                wait()
            end
            pcall(function()
                pu49.CFrame = CFrame.new(pu50)
                pu49.Velocity = Vector3.new(0, 0, 0)
                pu49.AngularVelocity = Vector3.new(0, 0, 0)
            end)
        end)
        wait(pu51)
    end
end
local function vu80(p58, pu59)
    if vu27 then
        return
    else
        vu27 = true
        local v60 = game.Players.LocalPlayer
        if v60.Character and v60.Character:FindFirstChild("HumanoidRootPart") then
            local vu61 = v60.Character.HumanoidRootPart
            vu28 = vu61.CFrame
            local v62, v63, v64 = ipairs(p58)
            while true do
                local v65
                v64, v65 = v62(v63, v64)
                if v64 == nil or pu59 and not pu59() then
                    break
                end
                local v66, v67, v68 = ipairs(workspace:GetDescendants())
                local v69 = {}
                while true do
                    local v70
                    v68, v70 = v66(v67, v68)
                    if v68 == nil then
                        break
                    end
                    if v70.Name == v65 and (v70:IsA("BasePart") or v70:IsA("Model")) then
                        local v71 = not v70:IsA("Model") or v70.PrimaryPart or (v70:FindFirstChildWhichIsA("BasePart") or v70)
                        if v71 and v71.Parent ~= v60.Character then
                            table.insert(v69, {
                                item = v70,
                                part = v71
                            })
                        end
                    end
                end
                local v72, v73, v74 = ipairs(v69)
                while true do
                    local v75
                    v74, v75 = v72(v73, v74)
                    if v74 == nil or pu59 and not pu59() then
                        break
                    end
                    local _ = v75.item
                    local vu76 = v75.part
                    if vu76 and vu76.Parent then
                        local v77 = vu76.CFrame + Vector3.new(0, 5, 0)
                        vu48(vu61.CFrame, v77, 1.2)
                        vu57(vu76, vu61.Position + Vector3.new(0, - 1, 0), 0.8)
                        local vu78 = true
                        spawn(function()
                            while vu78 do
                                if pu59 and not pu59() then
                                    vu78 = false
                                    break
                                end
                                if vu76 and (vu76.Parent and (vu61 and vu61.Parent)) then
                                    pcall(function()
                                        local v79 = Vector3.new(math.sin(tick() * 2) * 0.5, - 1 + math.cos(tick() * 3) * 0.2, math.cos(tick() * 2) * 0.5)
                                        vu76.CFrame = CFrame.new(vu61.Position + v79)
                                        vu76.Velocity = Vector3.new(0, 0, 0)
                                        vu76.AngularVelocity = Vector3.new(0, 0, 0)
                                    end)
                                end
                                wait(0.03)
                            end
                        end)
                        vu48(vu61.CFrame, vu28, 1)
                        vu78 = false
                        wait(0.1)
                        pcall(function()
                            vu57(vu76, vu28.Position + Vector3.new(math.random(- 4, 4), 2, math.random(- 4, 4)), 0.5)
                        end)
                    end
                    wait(0.5)
                end
            end
            if vu28 then
                vu61.CFrame = vu28
            end
            vu27 = false
        else
            vu27 = false
        end
    end
end
local vu81 = Vector3.new(0, 19, 0)
local vu82 = nil
local vu83 = false
local vu84 = Vector3.new(21, 20, - 5)
local vu85 = nil
local vu86 = false
local vu87 = {
    "Morsel",
    "Steak",
    "Ribs",
    "Salmon",
    "Mackerel"
}
local vu88 = {}
local vu89 = false
local function vu96(p90)
    local v91, v92, v93 = pairs(vu16)
    while true do
        local v94
        v93, v94 = v91(v92, v93)
        if v93 == nil then
            break
        end
        if not p90 or (v93 == "Old Axe" or (v93 == "Good Axe" or v93 == "Strong Axe")) then
            local v95 = vu5:FindFirstChild("Inventory")
            if v95 then
                v95 = vu5.Inventory:FindFirstChild(v93)
            end
            if v95 then
                return v95, v94
            end
        end
    end
    return nil, nil
end
local function vu98(p97)
    if p97 then
        vu3:WaitForChild("RemoteEvents").EquipItemHandle:FireServer("FireAllClients", p97)
    end
end
local function vu100(p99)
    if p99 then
        vu3:WaitForChild("RemoteEvents").UnequipItemHandle:FireServer("FireAllClients", p99)
    end
end
local function vu109()
    while vu12 do
        local v101 = (vu5.Character or vu5.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
        if v101 then
            local vu102, vu103 = vu96(false)
            if vu102 and vu103 then
                vu98(vu102)
                local v104, v105, v106 = ipairs(vu4.Characters:GetChildren())
                while true do
                    local vu107
                    v106, vu107 = v104(v105, v106)
                    if v106 == nil then
                        break
                    end
                    if vu107:IsA("Model") then
                        local vu108 = vu107:FindFirstChildWhichIsA("BasePart")
                        if vu108 and (vu108.Position - v101.Position).Magnitude <= vu14 then
                            pcall(function()
                                vu3:WaitForChild("RemoteEvents").ToolDamageObject:InvokeServer(vu107, vu102, vu103, CFrame.new(vu108.Position))
                            end)
                        end
                    end
                end
                task.wait(0.1)
            else
                task.wait(1)
            end
        else
            task.wait(0.5)
        end
    end
end
local vu110 = false
local function vu112()
    while vu110 do
        local v111 = {
            Instance.new("Model"),
            Vector3.new(- 41.2053, 1.0633, 29.2236)
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RequestPlantItem"):InvokeServer(unpack(v111))
        task.wait(1)
    end
end
local function vu132()
    while vu13 do
        local v113 = (vu5.Character or vu5.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
        if v113 then
            local vu114, v115 = vu96(true)
            if vu114 and v115 then
                vu98(vu114)
                vu15 = vu15 + 1
                local v116 = {}
                local v117 = vu4:FindFirstChild("Map")
                if v117 then
                    if v117:FindFirstChild("Foliage") then
                        local v118, v119, v120 = ipairs(v117.Foliage:GetChildren())
                        while true do
                            local v121
                            v120, v121 = v118(v119, v120)
                            if v120 == nil then
                                break
                            end
                            if v121:IsA("Model") and (v121.Name == "Small Tree" or v121.Name == "Snowy Small Tree") then
                                table.insert(v116, v121)
                            end
                        end
                    end
                    if v117:FindFirstChild("Landmarks") then
                        local v122, v123, v124 = ipairs(v117.Landmarks:GetChildren())
                        while true do
                            local v125
                            v124, v125 = v122(v123, v124)
                            if v124 == nil then
                                break
                            end
                            if v125:IsA("Model") and v125.Name == "Small Tree" then
                                table.insert(v116, v125)
                            end
                        end
                    end
                end
                local v126, v127, v128 = ipairs(v116)
                while true do
                    local vu129
                    v128, vu129 = v126(v127, v128)
                    if v128 == nil then
                        break
                    end
                    local v130 = vu129:FindFirstChild("Trunk")
                    if v130 and (v130:IsA("BasePart") and (v130.Position - v113.Position).Magnitude <= vu14) then
                        local vu131 = false
                        task.spawn(function()
                            while vu13 and (vu129 and (vu129.Parent and not vu131)) do
                                vu131 = true
                                vu15 = vu15 + 1
                                pcall(function()
                                    vu3:WaitForChild("RemoteEvents").ToolDamageObject:InvokeServer(vu129, vu114, tostring(vu15) .. "_7367831688", CFrame.new(- 2.962610244751, 4.5547881126404, - 75.950843811035, 0.89621275663376, - 1.3894891459643e-8, 0.44362446665764, - 7.994568895775e-10, 1, 3.293635941759e-8, - 0.44362446665764, - 2.9872644802253e-8, 0.89621275663376))
                                end)
                                task.wait(0.5)
                            end
                        end)
                    end
                end
                task.wait(0.1)
            else
                task.wait(1)
            end
        else
            task.wait(0.5)
        end
    end
end
function wiki(p133)
    local v134, v135, v136 = ipairs(vu4.Items:GetChildren())
    local v137 = 0
    while true do
        local v138
        v136, v138 = v134(v135, v136)
        if v136 == nil then
            break
        end
        if v138.Name == p133 then
            v137 = v137 + 1
        end
    end
    return v137
end
function ghn()
    return math.floor(vu5.PlayerGui.Interface.StatBars.HungerBar.Bar.Size.X.Scale * 100)
end
function feed(p139)
    local v140, v141, v142 = ipairs(vu4.Items:GetChildren())
    while true do
        local v143
        v142, v143 = v140(v141, v142)
        if v142 == nil then
            break
        end
        if v143.Name == p139 then
            vu3.RemoteEvents.RequestConsumeItem:InvokeServer(v143)
            break
        end
    end
end
function notifeed(_)
    vu1:Notify({
        Title = "Auto Food Paused",
        Content = "The food is gone",
        Duration = 3
    })
end
local function vu147(pu144, pu145)
    if pu144 and (pu144:IsDescendantOf(workspace) and (pu144:IsA("BasePart") or pu144:IsA("Model"))) then
        local vu146
        if pu144:IsA("Model") then
            vu146 = pu144.PrimaryPart or pu144:FindFirstChildWhichIsA("BasePart") or (pu144:FindFirstChild("Handle") or pu144)
        else
            vu146 = pu144
        end
        if vu146 and vu146:IsA("BasePart") then
            if pu144:IsA("Model") and not pu144.PrimaryPart then
                pcall(function()
                    pu144.PrimaryPart = vu146
                end)
            end
            pcall(function()
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents").RequestStartDraggingItem:FireServer(pu144)
                if pu144:IsA("Model") then
                    pu144:SetPrimaryPartCFrame(CFrame.new(pu145))
                else
                    vu146.CFrame = CFrame.new(pu145)
                end
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents").StopDraggingItem:FireServer(pu144)
            end)
        end
    else
        return
    end
end
local function vu155()
    local v148, v149, v150 = ipairs(workspace:WaitForChild("Items"):GetChildren())
    local v151 = {}
    local v152 = {}
    local v153 = 1
    while true do
        local v154
        v150, v154 = v148(v149, v150)
        if v150 == nil then
            break
        end
        if v154.Name:match("^Item Chest") and not v154:GetAttribute("8721081708ed") then
            table.insert(v151, v154)
            table.insert(v152, "Chest " .. v153)
            v153 = v153 + 1
        end
    end
    return v151, v152
end
local vu156, vu157 = vu155()
local vu158 = vu157[1] or nil
local function vu166()
    local v159, v160, v161 = ipairs(workspace:WaitForChild("Characters"):GetChildren())
    local v162 = {}
    local v163 = {}
    local v164 = 1
    while true do
        local v165
        v161, v165 = v159(v160, v161)
        if v161 == nil then
            break
        end
        if v165.Name:match("^Lost Child") and v165:GetAttribute("Lost") == true then
            table.insert(v162, v165)
            table.insert(v163, v165.Name)
            v164 = v164 + 1
        end
    end
    return v162, v163
end
local vu167, vu168 = vu166()
local vu169 = vu168[1] or nil
function tp1()
    (game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart").CFrame = CFrame.new(0.43132782, 15.77634621, - 1.88620758, - 0.270917892, 0.102997094, 0.957076371, 0.639657021, 0.762253821, 0.0990355015, - 0.719334781, 0.639031112, - 0.272391081)
end
local function vu173()
    local v170 = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Landmarks") and (workspace.Map.Landmarks:FindFirstChild("Stronghold") and workspace.Map.Landmarks.Stronghold:FindFirstChild("Functional") and (workspace.Map.Landmarks.Stronghold.Functional:FindFirstChild("EntryDoors") and workspace.Map.Landmarks.Stronghold.Functional.EntryDoors:FindFirstChild("DoorRight")))
    if v170 then
        v170 = workspace.Map.Landmarks.Stronghold.Functional.EntryDoors.DoorRight:FindFirstChild("Model")
    end
    if v170 then
        local v171 = v170:GetChildren()[5]
        if v171 and v171:IsA("BasePart") then
            local v172 = game.Players.LocalPlayer.Character
            if v172 then
                v172 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            end
            if v172 then
                v172.CFrame = v171.CFrame + Vector3.new(0, 5, 0)
            end
        end
    end
end
local vu174 = false
local vu175 = 1
local vu176 = false
local vu177 = nil
local vu178 = nil
local vu179 = nil
local vu180 = nil
local vu181 = game:GetService("UserInputService")
local function vu193()
    repeat
        task.wait()
    until vu2.LocalPlayer and vu2.LocalPlayer.Character and (vu2.LocalPlayer.Character:WaitForChild("HumanoidRootPart") and vu2.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
    repeat
        task.wait()
    until vu181
    if vu177 or vu178 then
        vu177:Disconnect()
        vu178:Disconnect()
    end
    local vu182 = vu2.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    local vu183 = {
        F = 0,
        B = 0,
        L = 0,
        R = 0,
        Q = 0,
        E = 0
    }
    local vu184 = {
        F = 0,
        B = 0,
        L = 0,
        R = 0,
        Q = 0,
        E = 0
    }
    local vu185 = vu175
    local function v188()
        vu176 = true
        local vu186 = Instance.new("BodyGyro")
        local vu187 = Instance.new("BodyVelocity")
        vu186.P = 90000
        vu186.Parent = vu182
        vu187.Parent = vu182
        vu186.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
        vu186.CFrame = vu182.CFrame
        vu187.Velocity = Vector3.new(0, 0, 0)
        vu187.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
        task.spawn(function()
            while vu176 do
                task.wait()
                if not vu174 and vu2.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                    vu2.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
                end
                if vu183.L + vu183.R ~= 0 or (vu183.F + vu183.B ~= 0 or vu183.Q + vu183.E ~= 0) then
                    vu185 = vu175
                elseif vu183.L + vu183.R == 0 and (vu183.F + vu183.B == 0 and (vu183.Q + vu183.E == 0 and vu185 ~= 0)) then
                    vu185 = 0
                end
                if vu183.L + vu183.R ~= 0 or (vu183.F + vu183.B ~= 0 or vu183.Q + vu183.E ~= 0) then
                    vu187.Velocity = (workspace.CurrentCamera.CoordinateFrame.lookVector * (vu183.F + vu183.B) + (workspace.CurrentCamera.CoordinateFrame * CFrame.new(vu183.L + vu183.R, (vu183.F + vu183.B + vu183.Q + vu183.E) * 0.2, 0).p - workspace.CurrentCamera.CoordinateFrame.p)) * vu185
                    vu184 = {
                        F = vu183.F,
                        B = vu183.B,
                        L = vu183.L,
                        R = vu183.R
                    }
                elseif vu183.L + vu183.R ~= 0 or (vu183.F + vu183.B ~= 0 or (vu183.Q + vu183.E ~= 0 or vu185 == 0)) then
                    vu187.Velocity = Vector3.new(0, 0, 0)
                else
                    vu187.Velocity = (workspace.CurrentCamera.CoordinateFrame.lookVector * (vu184.F + vu184.B) + (workspace.CurrentCamera.CoordinateFrame * CFrame.new(vu184.L + vu184.R, (vu184.F + vu184.B + vu183.Q + vu183.E) * 0.2, 0).p - workspace.CurrentCamera.CoordinateFrame.p)) * vu185
                end
                vu186.CFrame = workspace.CurrentCamera.CoordinateFrame
            end
            vu183 = {
                F = 0,
                B = 0,
                L = 0,
                R = 0,
                Q = 0,
                E = 0
            }
            vu184 = {
                F = 0,
                B = 0,
                L = 0,
                R = 0,
                Q = 0,
                E = 0
            }
            vu185 = 0
            vu186:Destroy()
            vu187:Destroy()
            if vu2.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                vu2.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
            end
        end)
    end
    vu177 = vu181.InputBegan:Connect(function(p189)
        if p189.UserInputType == Enum.UserInputType.Keyboard then
            local v190 = p189.KeyCode.Name
            if v190 == "W" then
                vu183.F = vu175
            elseif v190 == "S" then
                vu183.B = - vu175
            elseif v190 == "A" then
                vu183.L = - vu175
            elseif v190 == "D" then
                vu183.R = vu175
            elseif v190 == "E" then
                vu183.Q = vu175 * 2
            elseif v190 == "Q" then
                vu183.E = - vu175 * 2
            end
            pcall(function()
                workspace.CurrentCamera.CameraType = Enum.CameraType.Track
            end)
        end
    end)
    vu178 = vu181.InputEnded:Connect(function(p191)
        if p191.UserInputType == Enum.UserInputType.Keyboard then
            local v192 = p191.KeyCode.Name
            if v192 == "W" then
                vu183.F = 0
            elseif v192 == "S" then
                vu183.B = 0
            elseif v192 == "A" then
                vu183.L = 0
            elseif v192 == "D" then
                vu183.R = 0
            elseif v192 == "E" then
                vu183.Q = 0
            elseif v192 == "Q" then
                vu183.E = 0
            end
        end
    end)
    v188()
end
local function vu194()
    vu176 = false
    if vu177 then
        vu177:Disconnect()
    end
    if vu178 then
        vu178:Disconnect()
    end
    if vu179 then
        vu179:Disconnect()
    end
    if vu180 then
        vu180:Disconnect()
    end
    if vu2.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
        vu2.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
    end
    pcall(function()
        workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
    end)
end
local function vu196()
    pcall(function()
        vu176 = false
        local v195 = vu2.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if v195:FindFirstChild("BodyVelocity") then
            v195:FindFirstChild("BodyVelocity"):Destroy()
        end
        if v195:FindFirstChild("BodyGyro") then
            v195:FindFirstChild("BodyGyro"):Destroy()
        end
        if vu2.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") then
            vu2.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
        end
        if vu179 then
            vu179:Disconnect()
        end
        if vu180 then
            vu180:Disconnect()
        end
    end)
end
local function vu212()
    vu196()
    vu176 = true
    local vu197 = vu2.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    local vu198 = workspace.CurrentCamera
    local vu199 = Vector3.new()
    local vu200 = Vector3.new(0, 0, 0)
    local vu201 = Vector3.new(9000000000, 9000000000, 9000000000)
    local vu202 = require(vu2.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
    local v203 = Instance.new("BodyVelocity")
    v203.Name = "BodyVelocity"
    v203.Parent = vu197
    v203.MaxForce = vu200
    v203.Velocity = vu200
    local v204 = Instance.new("BodyGyro")
    v204.Name = "BodyGyro"
    v204.Parent = vu197
    v204.MaxTorque = vu201
    v204.P = 1000
    v204.D = 50
    vu179 = vu2.LocalPlayer.CharacterAdded:Connect(function()
        local v205 = vu2.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        local v206 = Instance.new("BodyVelocity")
        v206.Name = "BodyVelocity"
        v206.Parent = v205
        v206.MaxForce = vu200
        v206.Velocity = vu200
        local v207 = Instance.new("BodyGyro")
        v207.Name = "BodyGyro"
        v207.Parent = v205
        v207.MaxTorque = vu201
        v207.P = 1000
        v207.D = 50
    end)
    vu180 = game:GetService("RunService").RenderStepped:Connect(function()
        vu197 = vu2.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        vu198 = workspace.CurrentCamera
        if vu2.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid") and vu197 and (vu197:FindFirstChild("BodyVelocity") and vu197:FindFirstChild("BodyGyro")) then
            local v208 = vu2.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
            local v209 = vu197:FindFirstChild("BodyVelocity")
            local v210 = vu197:FindFirstChild("BodyGyro")
            v209.MaxForce = vu201
            v210.MaxTorque = vu201
            v208.PlatformStand = true
            v210.CFrame = vu198.CoordinateFrame
            v209.Velocity = vu199
            local v211 = vu202:GetMoveVector()
            if v211.X > 0 then
                v209.Velocity = v209.Velocity + vu198.CFrame.RightVector * (v211.X * (vu175 * 50))
            end
            if v211.X < 0 then
                v209.Velocity = v209.Velocity + vu198.CFrame.RightVector * (v211.X * (vu175 * 50))
            end
            if v211.Z > 0 then
                v209.Velocity = v209.Velocity - vu198.CFrame.LookVector * (v211.Z * (vu175 * 50))
            end
            if v211.Z < 0 then
                v209.Velocity = v209.Velocity - vu198.CFrame.LookVector * (v211.Z * (vu175 * 50))
            end
        end
    end)
end
local v213 = game:GetService("Players")
local _ = game:GetService("ReplicatedStorage")
local vu214 = game:GetService("Workspace")
local _ = v213.LocalPlayer
local vu215 = game:GetService("Players")
game:GetService("HttpService")
local vu216 = "Free Version"
local vu217 = "Premium Version"
local vu224 = vu1:CreateWindow({
    Title = "Skira hub | 99 Night in the Forest",
    Icon = "rbxassetid://125106574805976",
    Author = "99 Night in the Forest" .. (function(p218)
        local vu219 = "https://raw.githubusercontent.com/Nhat473/MinhNhat-Key/refs/heads/main/MinhNhatHUB-Premium.lua"
        local v220, v221 = pcall(function()
            return game:HttpGet(vu219)
        end)
        if v220 then
            local v222, _ = loadstring(v221)
            if v222 then
                if v222()[p218] then
                    return vu217
                else
                    return vu216
                end
            else
                return vu216
            end
        else
            return vu216
        end
    end)(vu215.LocalPlayer.Name),
    Folder = "MinhNhatHub",
    Size = UDim2.fromOffset(500, 350),
    Transparent = getgenv().TransparencyEnabled,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 150,
    BackgroundImageTransparency = 0.8,
    HideSearchBar = false,
    ScrollBarEnabled = true,
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function()
            vu10 = vu10 + 1
            if vu10 > # vu9 then
                vu10 = 1
            end
            local v223 = vu9[vu10]
            vu1:SetTheme(v223)
            vu1:Notify({
                Title = "Theme Changed",
                Content = "Switched to " .. v223 .. " theme!",
                Duration = 2,
                Icon = "palette"
            })
            print("Switched to " .. v223 .. " theme")
        end
    }
})
local v225 = vu224
vu224.SetToggleKey(v225, Enum.KeyCode.V)
pcall(function()
    vu224:CreateTopbarButton("TransparencyToggle", "eye", function()
        if getgenv().TransparencyEnabled then
            getgenv().TransparencyEnabled = false
            pcall(function()
                vu224:ToggleTransparency(false)
            end)
            vu1:Notify({
                Title = "Transparency",
                Content = "Transparency disabled",
                Duration = 3,
                Icon = "eye"
            })
            print("Transparency = false")
        else
            getgenv().TransparencyEnabled = true
            pcall(function()
                vu224:ToggleTransparency(true)
            end)
            vu1:Notify({
                Title = "Transparency",
                Content = "Transparency enabled",
                Duration = 3,
                Icon = "eye-off"
            })
            print(" Transparency = true")
        end
        print("Debug - Current Transparency state:", getgenv().TransparencyEnabled)
    end, 990)
end)
local v226 = vu224
vu224.EditOpenButton(v226, {
    Title = "MinhNhat HUB - Open",
    Icon = "monitor",
    CornerRadius = UDim.new(0, 6),
    StrokeThickness = 2,
    Color = ColorSequence.new(Color3.fromRGB(30, 30, 30), Color3.fromRGB(255, 255, 255)),
    Draggable = true
})
local vu227 = {}
local v228 = vu224
vu227.Info = vu224.Tab(v228, {
    Title = "Information",
    Icon = "badge-info",
    Desc = "SkiraHUB"
})
local v229 = vu224
vu227.Main = vu224.Tab(v229, {
    Title = "Main",
    Icon = "rocket",
    Desc = "SkiraHUB"
})
local v230 = vu224
vu227.Auto = vu224.Tab(v230, {
    Title = "Auto",
    Icon = "wrench",
    Desc = "SkiraHUB"
})
local v231 = vu224
vu227.br = vu224.Tab(v231, {
    Title = "Bring",
    Icon = "package",
    Desc = "SkiraHUB"
})
local v232 = vu224
vu227.Combat = vu224.Tab(v232, {
    Title = "Combat",
    Icon = "sword",
    Desc = "SkiraHUB"
})
local v233 = vu224
vu227.Fly = vu224.Tab(v233, {
    Title = "Player",
    Icon = "user",
    Desc = "SkiraHUB"
})
local v234 = vu224
vu227.esp = vu224.Tab(v234, {
    Title = "Esp",
    Icon = "eye",
    Desc = "SkiraHUB"
})
local v235 = vu224
vu227.Tp = vu224.Tab(v235, {
    Title = "Teleport",
    Icon = "map",
    Desc = "SkiraHUB"
})
local v236 = vu224
vu227.More = vu224.Tab(v236, {
    Title = "Script",
    Icon = "crown",
    Desc = "SkiraHUB"
})
local v237 = vu224
vu227.Anti = vu224.Tab(v237, {
    Title = "Anti",
    Icon = "shield",
    Desc = "SkiraHUB"
})
local v238 = vu224
vu227.Vision = vu224.Tab(v238, {
    Title = "Settings",
    Icon = "settings",
    Desc = "SkiraHUB"
})
local v239 = vu224
vu224.SelectTab(v239, 1)
vu227.Combat:Section({
    Title = "Aura",
    Icon = "star"
})
vu227.Combat:Toggle({
    Title = "Kill Aura",
    Value = false,
    Callback = function(p240)
        vu12 = p240
        if p240 then
            task.spawn(vu109)
        else
            local v241, _ = vu96(false)
            vu100(v241)
        end
    end
})
vu227.Combat:Toggle({
    Title = "Chop Aura",
    Value = false,
    Callback = function(p242)
        vu13 = p242
        if p242 then
            task.spawn(vu132)
        else
            local v243, _ = vu96(true)
            vu100(v243)
        end
    end
})
vu227.Combat:Section({
    Title = "Plant Settings",
    Icon = "axe"
})
vu227.Combat:Toggle({
    Title = "Auto Plant",
    Value = false,
    Callback = function(p244)
        vu110 = p244
        if p244 then
            task.spawn(vu112)
        end
    end
})
vu227.Combat:Section({
    Title = "Settings",
    Icon = "settings"
})
vu227.Combat:Slider({
    Title = "Aura Radius",
    Value = {
        Min = 20,
        Max = 800,
        Default = 50
    },
    Callback = function(p245)
        vu14 = math.clamp(p245, 10, 800)
    end
})
vu227.Main:Section({
    Title = "Auto Feed",
    Icon = "utensils"
})
vu227.Main:Dropdown({
    Title = "Select Food",
    Desc = "Choose the food",
    Values = {
        "Apple",
        "Berry",
        "Carrot",
        "Cake",
        "Chili",
        "Cooked Ribs",
        "Cooked Mackerel",
        "Cooked Salmon",
        "Cooked Morsel",
        "Cooked Steak"
    },
    Value = vu18,
    Multi = true,
    Callback = function(p246)
        vu18 = p246
    end
})
vu227.Main:Input({
    Title = "Feed Amount",
    Desc = "Eat when hunger reaches this %",
    Value = tostring(vu19),
    Placeholder = "Ex: 50",
    Numeric = true,
    Callback = function(p247)
        local v248 = tonumber(p247)
        if v248 then
            vu19 = math.clamp(v248, 0, 100)
        end
    end
})
vu227.Main:Toggle({
    Title = "Auto Feed",
    Value = false,
    Callback = function(p249)
        vu17 = p249
        if p249 then
            task.spawn(function()
                while vu17 do
                    task.wait(0.075)
                    if wiki(vu18) == 0 then
                        vu17 = false
                        vu227.Combat:Find("Auto Feed"):SetValue(false)
                        notifeed(vu18)
                        break
                    end
                    if ghn() <= vu19 then
                        feed(vu18)
                    end
                end
            end)
        end
    end
})
vu227.Auto:Section({
    Title = "Auto Upgrade Campfire",
    Icon = "flame"
})
vu227.Auto:Dropdown({
    Title = "Auto Upgrade Campfire",
    Desc = "Choose the items",
    Values = {
        "Log",
        "Coal",
        "Chair",
        "Fuel Canister",
        "Oil Barrel",
        "Biofuel"
    },
    Multi = false,
    AllowNone = true,
    Callback = function(p250)
        vu82 = p250
    end
})
vu227.Auto:Toggle({
    Title = "Auto Upgrade Campfire",
    Value = false,
    Callback = function(p251)
        vu83 = p251
        if p251 then
            task.spawn(function()
                while vu83 do
                    if vu82 then
                        local v252, v253, v254 = ipairs(vu214:WaitForChild("Items"):GetChildren())
                        while true do
                            local v255
                            v254, v255 = v252(v253, v254)
                            if v254 == nil then
                                break
                            end
                            if v255.Name == vu82 then
                                vu147(v255, vu81)
                            end
                        end
                    end
                    task.wait(2)
                end
            end)
        end
    end
})
vu227.Auto:Section({
    Title = "Auto Scrap Items",
    Icon = "cog"
})
vu227.Auto:Dropdown({
    Title = "Auto Scrap Items",
    Desc = "Choose the items",
    Values = {
        "Log",
        "Chair",
        "Tyre",
        "Bolt",
        "Broken Fan",
        "Broken Microwave",
        "Sheet Metal",
        "Old Radio",
        "Washing Machine",
        "Old Car Engine"
    },
    Multi = false,
    AllowNone = true,
    Callback = function(p256)
        vu85 = p256
    end
})
vu227.Auto:Toggle({
    Title = "Auto Scrap Item",
    Value = false,
    Callback = function(p257)
        vu86 = p257
        if p257 then
            task.spawn(function()
                while vu86 do
                    if vu85 then
                        local v258, v259, v260 = ipairs(vu214:WaitForChild("Items"):GetChildren())
                        while true do
                            local v261
                            v260, v261 = v258(v259, v260)
                            if v260 == nil then
                                break
                            end
                            if v261.Name == vu85 then
                                vu147(v261, vu84)
                            end
                        end
                    end
                    task.wait(2)
                end
            end)
        end
    end
})
vu227.Auto:Section({
    Title = "Auto Cook Food",
    Icon = "flame"
})
vu227.Auto:Dropdown({
    Title = "Auto Cook Food",
    Values = vu87,
    Multi = true,
    AllowNone = true,
    Callback = function(p262)
        local v263, v264, v265 = ipairs(vu87)
        while true do
            local v266
            v265, v266 = v263(v264, v265)
            if v265 == nil then
                break
            end
            vu88[v266] = table.find(p262, v266) ~= nil
        end
    end
})
vu227.Auto:Toggle({
    Title = "Auto Cook Food",
    Value = false,
    Callback = function(p267)
        vu89 = p267
    end
})
coroutine.wrap(function()
    while true do
        if vu89 then
            local v268, v269, v270 = pairs(vu88)
            while true do
                local v271
                v270, v271 = v268(v269, v270)
                if v270 == nil then
                    break
                end
                if v271 then
                    local v272, v273, v274 = ipairs(vu4:WaitForChild("Items"):GetChildren())
                    local v275 = v270
                    while true do
                        local v276
                        v274, v276 = v272(v273, v274)
                        if v274 == nil then
                            break
                        end
                        if v276.Name == v275 then
                            vu147(v276, vu81)
                        end
                    end
                end
            end
        end
        task.wait(0.5)
    end
end)()
vu227.Tp:Section({
    Title = "Scan Map",
    Icon = "map"
})
vu227.Tp:Toggle({
    Title = "Scan Map (Essential)",
    Default = false,
    Callback = function(p277)
        vu11 = p277
        if p277 then
            scan_map_was_on = true
            task.spawn(function()
                local v278 = game:GetService("Players").LocalPlayer
                local v279 = (v278.Character or v278.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart", 3)
                if v279 then
                    local v280 = vu214:FindFirstChild("Map")
                    if v280 then
                        local v281 = v280:FindFirstChild("Foliage") or v280:FindFirstChild("Landmarks")
                        if v281 then
                            while vu11 do
                                local v282, v283, v284 = ipairs(v281:GetChildren())
                                local v285 = {}
                                while true do
                                    local v286
                                    v284, v286 = v282(v283, v284)
                                    if v284 == nil then
                                        break
                                    end
                                    if v286.Name == "Small Tree" and v286:IsA("Model") then
                                        local v287 = v286:FindFirstChild("Trunk") or v286.PrimaryPart
                                        if v287 then
                                            table.insert(v285, v287)
                                        end
                                    end
                                end
                                local v288, v289, v290 = ipairs(v285)
                                while true do
                                    local v291
                                    v290, v291 = v288(v289, v290)
                                    if v290 == nil or not vu11 then
                                        break
                                    end
                                    if v291 and v291.Parent then
                                        local v292 = v291.CFrame
                                        local v293 = v292.RightVector
                                        local v294 = v292.Position + v293 * 69 + Vector3.new(0, 15, 69)
                                        v279.CFrame = CFrame.new(v294)
                                        local v295 = Instance.new("Part")
                                        v295.Size = Vector3.new(10, 1, 10)
                                        v295.Anchored = true
                                        v295.CanCollide = true
                                        v295.Transparency = 1
                                        v295.BrickColor = BrickColor.new("Bright yellow")
                                        v295.CFrame = CFrame.new(v294 - Vector3.new(0, 3, 0))
                                        v295.Parent = vu214
                                        game.Debris:AddItem(v295, 1)
                                        task.wait(0.01)
                                    end
                                end
                                task.wait(0.25)
                            end
                        end
                    else
                        return
                    end
                else
                    return
                end
            end)
        else
            if type(tp1) == "function" and scan_map_was_on then
                tp1()
            end
            scan_map_was_on = false
        end
    end
})
vu227.Tp:Section({
    Title = "Teleport",
    Icon = "map"
})
vu227.Tp:Button({
    Title = "Teleport to Campfire",
    Locked = false,
    Callback = function()
        tp1()
    end
})
vu227.Tp:Button({
    Title = "Teleport to Stronghold",
    Locked = false,
    Callback = function()
        vu173()
    end
})
vu227.Tp:Button({
    Title = "Teleport to Safe Zone",
    Callback = function()
        if not vu214:FindFirstChild("SafeZonePart") then
            local v296 = Instance.new("Part")
            v296.Name = "SafeZonePart"
            v296.Size = Vector3.new(30, 3, 30)
            v296.Position = Vector3.new(0, 350, 0)
            v296.Anchored = true
            v296.CanCollide = true
            v296.Transparency = 0.8
            v296.Color = Color3.fromRGB(255, 0, 0)
            v296.Parent = vu214
        end
        local v297 = game:GetService("Players").LocalPlayer;
        (v297.Character or v297.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart").CFrame = CFrame.new(0, 360, 0)
    end
})
vu227.Tp:Button({
    Title = "Teleport to Trader (Bunny Foot)",
    Callback = function()
        local v298 = Vector3.new(- 37.08, 3.98, - 16.33)
        local v299 = game:GetService("Players").LocalPlayer;
        (v299.Character or v299.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart").CFrame = CFrame.new(v298)
    end
})
vu227.Tp:Section({
    Title = "Tree",
    Icon = "tree-deciduous"
})
vu227.Tp:Button({
    Title = "Teleport to Random Tree",
    Callback = function()
        local v300 = game:GetService("Players").LocalPlayer
        local v301 = (v300.Character or v300.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart", 3)
        if v301 then
            local v302 = vu214:FindFirstChild("Map")
            if v302 then
                local v303 = v302:FindFirstChild("Foliage") or v302:FindFirstChild("Landmarks")
                if v303 then
                    local v304, v305, v306 = ipairs(v303:GetChildren())
                    local v307 = {}
                    while true do
                        local v308
                        v306, v308 = v304(v305, v306)
                        if v306 == nil then
                            break
                        end
                        if v308.Name == "Small Tree" and v308:IsA("Model") then
                            local v309 = v308:FindFirstChild("Trunk") or v308.PrimaryPart
                            if v309 then
                                table.insert(v307, v309)
                            end
                        end
                    end
                    if # v307 > 0 then
                        local v310 = v307[math.random(1, # v307)].CFrame
                        local v311 = v310.RightVector
                        local v312 = v310.Position + v311 * 3
                        v301.CFrame = CFrame.new(v312)
                    end
                end
            else
                return
            end
        else
            return
        end
    end
})
vu227.Tp:Section({
    Title = "Children",
    Icon = "eye"
})
local vu314 = vu227.Tp:Dropdown({
    Title = "Select Child",
    Values = vu168,
    Multi = false,
    AllowNone = true,
    Callback = function(p313)
        vu169 = p313[# p313] or vu168[1] or nil
    end
})
vu227.Tp:Button({
    Title = "Refresh List",
    Locked = false,
    Callback = function()
        local v315, v316 = vu166()
        vu168 = v316
        vu167 = v315
        if # vu168 <= 0 then
            vu169 = nil
            vu314:Refresh({
                "No child found"
            })
        else
            vu169 = vu168[1]
            vu314:Refresh(vu168)
        end
    end
})
vu227.Tp:Button({
    Title = "Teleport to Child",
    Locked = false,
    Callback = function()
        if vu169 and vu167 then
            local v317, v318, v319 = ipairs(vu168)
            while true do
                local v320
                v319, v320 = v317(v318, v319)
                if v319 == nil then
                    break
                end
                if v320 == vu169 then
                    local v321 = vu167[v319]
                    if v321 then
                        local v322 = v321.PrimaryPart or v321:FindFirstChildWhichIsA("BasePart")
                        local v323 = v322 and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        if v323 then
                            v323.CFrame = v322.CFrame + Vector3.new(0, 5, 0)
                        end
                    end
                    break
                end
            end
        end
    end
})
vu227.Tp:Section({
    Title = "Chest",
    Icon = "box"
})
local vu325 = vu227.Tp:Dropdown({
    Title = "Select Chest",
    Values = vu157,
    Multi = false,
    AllowNone = true,
    Callback = function(p324)
        vu158 = p324[# p324] or vu157[1] or nil
    end
})
vu227.Tp:Button({
    Title = "Refresh List",
    Locked = false,
    Callback = function()
        local v326, v327 = vu155()
        vu157 = v327
        vu156 = v326
        if # vu157 <= 0 then
            vu158 = nil
            vu325:Refresh({
                "No chests found"
            })
        else
            vu158 = vu157[1]
            vu325:Refresh(vu157)
        end
    end
})
vu227.Tp:Button({
    Title = "Teleport to Chest",
    Locked = false,
    Callback = function()
        if vu158 and vu156 then
            local v328, v329, v330 = ipairs(vu157)
            local v331 = 1
            while true do
                local v332
                v330, v332 = v328(v329, v330)
                if v330 == nil then
                    v330 = v331
                    break
                end
                if v332 == vu158 then
                    break
                end
            end
            local v333 = vu156[v330]
            if v333 then
                local v334 = v333.PrimaryPart or v333:FindFirstChildWhichIsA("BasePart")
                local v335 = v334 and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if v335 then
                    v335.CFrame = v334.CFrame + Vector3.new(0, 5, 0)
                end
            end
        end
    end
})
vu227.br:Section({
    Title = "Junk",
    Icon = "box"
})
vu227.br:Dropdown({
    Title = "Select Junk Items",
    Desc = "Choose items to bring",
    Values = {
        "Tyre",
        "Bolt",
        "Broken Fan",
        "Broken Microwave",
        "Sheet Metal",
        "Old Radio",
        "Washing Machine",
        "Old Car Engine"
    },
    Multi = true,
    AllowNone = true,
    Callback = function(p336)
        vu22 = p336
    end
})
vu227.br:Toggle({
    Title = "Bring Junk Items",
    Desc = "Before you Bring Unlocked 1 zone first!",
    Default = false,
    Callback = function(p337)
        vu29 = p337
        if p337 then
            if # vu22 <= 0 then
                vu29 = false
            else
                vu34 = true
                spawn(function()
                    while vu34 and vu29 do
                        local v338
                        if # vu22 <= 0 or not vu29 then
                            v338 = 0
                        else
                            vu80(vu22, function()
                                return vu29
                            end)
                            v338 = 0
                        end
                        while v338 < 3 and (vu29 and vu34) do
                            wait(0.1)
                            v338 = v338 + 0.1
                        end
                    end
                    vu34 = false
                end)
            end
        else
            vu34 = false
        end
    end
})
vu227.br:Section({
    Title = "Fuel",
    Icon = "flame"
})
vu227.br:Dropdown({
    Title = "Select Fuel Items",
    Desc = "Choose items to bring",
    Values = {
        "Log",
        "Chair",
        "Coal",
        "Fuel Canister",
        "Oil Barrel"
    },
    Multi = true,
    AllowNone = true,
    Callback = function(p339)
        vu23 = p339
    end
})
vu227.br:Toggle({
    Title = "Bring Fuel Items",
    Desc = "Before you Bring Unlocked 1 Zone First!",
    Default = false,
    Callback = function(p340)
        vu30 = p340
        if p340 then
            if # vu23 <= 0 then
                vu30 = false
            else
                vu35 = true
                spawn(function()
                    while vu35 and vu30 do
                        local v341
                        if # vu23 <= 0 or not vu30 then
                            v341 = 0
                        else
                            vu80(vu23, function()
                                return vu30
                            end)
                            v341 = 0
                        end
                        while v341 < 3 and (vu30 and vu35) do
                            wait(0.1)
                            v341 = v341 + 0.1
                        end
                    end
                    vu35 = false
                end)
            end
        else
            vu35 = false
        end
    end
})
vu227.br:Section({
    Title = "Food",
    Icon = "utensils"
})
vu227.br:Dropdown({
    Title = "Select Food Items",
    Desc = "Choose items to bring",
    Values = {
        "Cake",
        "Cooked Steak",
        "Cooked Morsel",
        "Ribs",
        "Salmon",
        "Cooked Salmon",
        "Cooked Ribs",
        "Mackerel",
        "Cooked Mackerel",
        "Steak",
        "Morsel",
        "Berry",
        "Carrot"
    },
    Multi = true,
    AllowNone = true,
    Callback = function(p342)
        vu24 = p342
    end
})
vu227.br:Toggle({
    Title = "Bring Food items",
    Desc = "Before you Bring Unlocked 1 Zone First!",
    Default = false,
    Callback = function(p343)
        vu31 = p343
        if p343 then
            if # vu24 <= 0 then
                vu31 = false
            else
                vu36 = true
                spawn(function()
                    while vu36 and vu31 do
                        local v344
                        if # vu24 <= 0 or not vu31 then
                            v344 = 0
                        else
                            vu80(vu24, function()
                                return vu31
                            end)
                            v344 = 0
                        end
                        while v344 < 3 and (vu31 and vu36) do
                            wait(0.1)
                            v344 = v344 + 0.1
                        end
                    end
                    vu36 = false
                end)
            end
        else
            vu36 = false
        end
    end
})
vu227.br:Section({
    Title = "Medicine",
    Icon = "bandage"
})
vu227.br:Dropdown({
    Title = "Select Medical Items",
    Desc = "Choose items to bring",
    Values = {
        "Bandage",
        "MedKit"
    },
    Multi = true,
    AllowNone = true,
    Callback = function(p345)
        vu25 = p345
    end
})
vu227.br:Toggle({
    Title = "Bring Medical Items",
    Desc = "Before you Bring Unlocked 1 Zone First!",
    Default = false,
    Callback = function(p346)
        vu32 = p346
        if p346 then
            if # vu25 <= 0 then
                vu32 = false
            else
                vu37 = true
                spawn(function()
                    while vu37 and vu32 do
                        local v347
                        if # vu25 <= 0 or not vu32 then
                            v347 = 0
                        else
                            vu80(vu25, function()
                                return vu32
                            end)
                            v347 = 0
                        end
                        while v347 < 3 and (vu32 and vu37) do
                            wait(0.1)
                            v347 = v347 + 0.1
                        end
                    end
                    vu37 = false
                end)
            end
        else
            vu37 = false
        end
    end
})
vu227.br:Section({
    Title = "Equipment",
    Icon = "sword"
})
vu227.br:Dropdown({
    Title = "Select Equipment Items",
    Desc = "Choose items to bring",
    Values = {
        "Revolver",
        "Rifle",
        "Leather Body",
        "Iron Body",
        "Revolver Ammo",
        "Rifle Ammo",
        "Giant Sack",
        "Good Sack",
        "Strong Axe",
        "Good Axe"
    },
    Multi = true,
    AllowNone = true,
    Callback = function(p348)
        vu26 = p348
    end
})
vu227.br:Toggle({
    Title = "Bring Equipment Items",
    Desc = "Before you Bring Unlocked 1 Zone First!",
    Default = false,
    Callback = function(p349)
        vu33 = p349
        if p349 then
            if # vu26 <= 0 then
                vu33 = false
            else
                vu38 = true
                spawn(function()
                    while vu38 and vu33 do
                        local v350
                        if # vu26 <= 0 or not vu33 then
                            v350 = 0
                        else
                            vu80(vu26, function()
                                return vu33
                            end)
                            v350 = 0
                        end
                        while v350 < 3 and (vu33 and vu38) do
                            wait(0.1)
                            v350 = v350 + 0.1
                        end
                    end
                    vu38 = false
                end)
            end
        else
            vu38 = false
        end
    end
})
vu227.Fly:Section({
    Title = "Player Settings",
    Icon = "user"
})
vu227.Fly:Slider({
    Title = "Fly Speed",
    Value = {
        Min = 1,
        Max = 20,
        Default = 1
    },
    Callback = function(p351)
        vu175 = p351
        if vu176 then
            task.spawn(function()
                while vu176 do
                    task.wait(0.1)
                    if game:GetService("UserInputService").TouchEnabled then
                        local v352 = vu215.LocalPlayer.Character
                        if v352 then
                            v352 = vu215.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        end
                        if v352 and v352:FindFirstChild("BodyVelocity") then
                            local v353 = v352:FindFirstChild("BodyVelocity")
                            v353.Velocity = v353.Velocity.Unit * (vu175 * 50)
                        end
                    end
                end
            end)
        end
    end
})
vu227.Fly:Toggle({
    Title = "Enable Fly",
    Value = false,
    Callback = function(p354)
        vu174 = p354
        if vu174 then
            if game:GetService("UserInputService").TouchEnabled then
                vu212()
            else
                vu193()
            end
        else
            vu194()
            vu196()
        end
    end
})
local vu355 = game:GetService("Players")
local vu356 = 16
local function vu359(p357)
    local v358 = vu355.LocalPlayer.Character
    if v358 then
        v358 = vu355.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    end
    if v358 then
        v358.WalkSpeed = p357
    end
end
vu227.Fly:Slider({
    Title = "Speed",
    Value = {
        Min = 16,
        Max = 150,
        Default = 16
    },
    Callback = function(p360)
        vu356 = p360
    end
})
vu227.Fly:Toggle({
    Title = "Enable Speed",
    Value = false,
    Callback = function(p361)
        vu359(p361 and vu356 or 16)
    end
})
vu227.Fly:Section({
    Title = "Power Settings",
    Icon = "flame"
})
local vu362 = game:GetService("Players")
local vu363 = game:GetService("RunService")
local vu364 = nil
vu227.Fly:Toggle({
    Title = "No Clip",
    Value = false,
    Callback = function(p365)
        if p365 then
            vu364 = vu363.Stepped:Connect(function()
                local v366 = vu362.LocalPlayer.Character
                if v366 then
                    local v367, v368, v369 = ipairs(v366:GetDescendants())
                    while true do
                        local v370
                        v369, v370 = v367(v368, v369)
                        if v369 == nil then
                            break
                        end
                        if v370:IsA("BasePart") then
                            v370.CanCollide = false
                        end
                    end
                end
            end)
        elseif vu364 then
            vu364:Disconnect()
            vu364 = nil
        end
    end
})
local vu371 = game:GetService("UserInputService")
local vu372 = game:GetService("Players")
local vu373 = nil
vu227.Fly:Toggle({
    Title = "Inf Jump",
    Value = false,
    Callback = function(p374)
        if p374 then
            vu373 = vu371.JumpRequest:Connect(function()
                local v375 = vu372.LocalPlayer.Character
                if v375 then
                    v375 = v375:FindFirstChildOfClass("Humanoid")
                end
                if v375 then
                    v375:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end)
        elseif vu373 then
            vu373:Disconnect()
            vu373 = nil
        end
    end
})
function createESPText(p376, p377, p378)
    if not p376:FindFirstChild("ESPTexto") then
        local v379 = Instance.new("BillboardGui")
        v379.Name = "ESPTexto"
        v379.Adornee = p376
        v379.Size = UDim2.new(0, 100, 0, 20)
        v379.StudsOffset = Vector3.new(0, 2.5, 0)
        v379.AlwaysOnTop = true
        v379.MaxDistance = 300
        local v380 = Instance.new("TextLabel")
        v380.Parent = v379
        v380.Size = UDim2.new(1, 0, 1, 0)
        v380.BackgroundTransparency = 1
        v380.Text = p377
        v380.TextColor3 = p378 or Color3.fromRGB(255, 255, 0)
        v380.TextStrokeTransparency = 0.2
        v380.TextScaled = true
        v380.Font = Enum.Font.GothamBold
        v379.Parent = p376
    end
end
local function vu390(p381, p382)
    local v383, v384
    if p382 == "item" then
        v383 = vu214:FindFirstChild("Items")
        v384 = Color3.fromRGB(0, 255, 0)
    else
        if p382 ~= "mob" then
            return
        end
        v383 = vu214:FindFirstChild("Characters")
        v384 = Color3.fromRGB(255, 255, 0)
    end
    if v383 then
        local v385, v386, v387 = ipairs(v383:GetChildren())
        while true do
            local v388
            v387, v388 = v385(v386, v387)
            if v387 == nil then
                break
            end
            if v388.Name == p381 then
                local v389 = v388:IsA("BasePart") and v388 and v388 or v388:FindFirstChildWhichIsA("BasePart")
                if v389 then
                    createESPText(v389, v388.Name, v384)
                end
            end
        end
    end
end
local function vu403(p391, p392)
    local v393
    if p392 == "item" then
        v393 = vu214:FindFirstChild("Items")
    else
        if p392 ~= "mob" then
            return
        end
        v393 = vu214:FindFirstChild("Characters")
    end
    if v393 then
        local v394, v395, v396 = ipairs(v393:GetChildren())
        while true do
            local v397
            v396, v397 = v394(v395, v396)
            if v396 == nil then
                break
            end
            if v397.Name == p391 then
                local v398 = v397:IsA("BasePart") and v397 and v397 or v397:FindFirstChildWhichIsA("BasePart")
                if v398 then
                    local v399, v400, v401 = ipairs(v398:GetChildren())
                    while true do
                        local v402
                        v401, v402 = v399(v400, v401)
                        if v401 == nil then
                            break
                        end
                        if v402:IsA("BillboardGui") and v402.Name == "ESPTexto" then
                            v402:Destroy()
                        end
                    end
                end
            end
        end
    end
end
local vu404 = {}
local vu405 = {}
local vu406 = false
local vu407 = false
local vu408 = {}
vu227.esp:Section({
    Title = "Esp Items",
    Icon = "package"
})
vu227.esp:Dropdown({
    Title = "Esp Items",
    Values = vu20,
    Value = {},
    Multi = true,
    AllowNone = true,
    Callback = function(p409)
        vu404 = p409
        if vu406 then
            local v410, v411, v412 = ipairs(vu20)
            while true do
                local v413
                v412, v413 = v410(v411, v412)
                if v412 == nil then
                    break
                end
                if table.find(vu404, v413) then
                    vu390(v413, "item")
                else
                    vu403(v413, "item")
                end
            end
        else
            local v414, v415, v416 = ipairs(vu20)
            while true do
                local v417
                v416, v417 = v414(v415, v416)
                if v416 == nil then
                    break
                end
                vu403(v417, "item")
            end
        end
    end
})
vu227.esp:Toggle({
    Title = "Enable Esp",
    Value = false,
    Callback = function(p418)
        vu406 = p418
        local v419, v420, v421 = ipairs(vu20)
        while true do
            local v422
            v421, v422 = v419(v420, v421)
            if v421 == nil then
                break
            end
            if p418 and table.find(vu404, v422) then
                vu390(v422, "item")
            else
                vu403(v422, "item")
            end
        end
        if p418 then
            local v423 = not vu408.Items and vu214:FindFirstChild("Items")
            if v423 then
                vu408.Items = v423.ChildAdded:Connect(function(p424)
                    local v425 = table.find(vu404, p424.Name) and (p424:IsA("BasePart") and p424 and p424 or p424:FindFirstChildWhichIsA("BasePart"))
                    if v425 then
                        createESP(v425, p424.Name, Color3.fromRGB(0, 255, 0))
                    end
                end)
            end
        elseif vu408.Items then
            vu408.Items:Disconnect()
            vu408.Items = nil
        end
    end
})
vu227.esp:Section({
    Title = "Esp Entity",
    Icon = "user"
})
vu227.esp:Dropdown({
    Title = "Esp Entity",
    Values = vu21,
    Value = {},
    Multi = true,
    AllowNone = true,
    Callback = function(p426)
        vu405 = p426
        if vu407 then
            local v427, v428, v429 = ipairs(vu21)
            while true do
                local v430
                v429, v430 = v427(v428, v429)
                if v429 == nil then
                    break
                end
                if table.find(vu405, v430) then
                    vu390(v430, "mob")
                else
                    vu403(v430, "mob")
                end
            end
        else
            local v431, v432, v433 = ipairs(vu21)
            while true do
                local v434
                v433, v434 = v431(v432, v433)
                if v433 == nil then
                    break
                end
                vu403(v434, "mob")
            end
        end
    end
})
vu227.esp:Toggle({
    Title = "Enable Esp",
    Value = false,
    Callback = function(p435)
        vu407 = p435
        local v436, v437, v438 = ipairs(vu21)
        while true do
            local v439
            v438, v439 = v436(v437, v438)
            if v438 == nil then
                break
            end
            if p435 and table.find(vu405, v439) then
                vu390(v439, "mob")
            else
                vu403(v439, "mob")
            end
        end
        if p435 then
            local v440 = not vu408.Mobs and vu214:FindFirstChild("Characters")
            if v440 then
                vu408.Mobs = v440.ChildAdded:Connect(function(p441)
                    local v442 = table.find(vu405, p441.Name) and (p441:IsA("BasePart") and p441 and p441 or p441:FindFirstChildWhichIsA("BasePart"))
                    if v442 then
                        createESP(v442, p441.Name, Color3.fromRGB(255, 255, 0))
                    end
                end)
            end
        elseif vu408.Mobs then
            vu408.Mobs:Disconnect()
            vu408.Mobs = nil
        end
    end
})
vu227.Main:Section({
    Title = "Misc",
    Icon = "settings"
})
local vu443 = false
local vu444 = nil
local vu445 = {}
vu227.Main:Toggle({
    Title = "Instant Interact",
    Value = false,
    Callback = function(p446)
        vu443 = p446
        if p446 then
            vu445 = {}
            vu444 = task.spawn(function()
                while vu443 do
                    local v447 = vu214
                    local v448, v449, v450 = ipairs(v447:GetDescendants())
                    while true do
                        local v451
                        v450, v451 = v448(v449, v450)
                        if v450 == nil then
                            break
                        end
                        if v451:IsA("ProximityPrompt") then
                            if vu445[v451] == nil then
                                vu445[v451] = v451.HoldDuration
                            end
                            v451.HoldDuration = 0
                        end
                    end
                    task.wait(5)
                end
            end)
        else
            if vu444 then
                vu443 = false
            end
            local v452, v453, v454 = pairs(vu445)
            while true do
                local v455
                v454, v455 = v452(v453, v454)
                if v454 == nil then
                    break
                end
                if v454 and v454:IsA("ProximityPrompt") then
                    v454.HoldDuration = v455
                end
            end
            vu445 = {}
        end
    end
})
vu227.Anti:Section({
    Title = "Anti Monster",
    Icon = "skull"
})
local vu456 = game:GetService("RunService")
local vu457 = game:GetService("ReplicatedStorage")
local vu458 = nil
vu227.Anti:Toggle({
    Title = "Auto Stun Deer (Need Flashlight)",
    Value = false,
    Callback = function(p459)
        if p459 then
            vu458 = vu456.RenderStepped:Connect(function()
                pcall(function()
                    local v460 = vu457:FindFirstChild("RemoteEvents")
                    if v460 then
                        v460 = vu457.RemoteEvents:FindFirstChild("DeerHitByTorch")
                    end
                    local v461 = vu214:FindFirstChild("Characters")
                    if v461 then
                        v461 = vu214.Characters:FindFirstChild("Deer")
                    end
                    if v460 and v461 then
                        v460:InvokeServer(v461)
                    end
                end)
                task.wait(0.1)
            end)
        elseif vu458 then
            vu458:Disconnect()
            vu458 = nil
        end
    end
})
local vu462 = game:GetService("RunService")
local v463 = game:GetService("Players").LocalPlayer
local vu464 = (v463.Character or v463.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
local vu465 = 80
local vu466 = 5
local vu467 = 60
local vu468 = 4
local vu469 = nil
local vu470 = nil
vu227.Anti:Toggle({
    Title = "Escape From Owl",
    Value = false,
    Callback = function(p471)
        if p471 then
            vu469 = vu462.RenderStepped:Connect(function()
                pcall(function()
                    local v472 = vu214:FindFirstChild("Characters")
                    if v472 then
                        v472 = vu214.Characters:FindFirstChild("Owl")
                    end
                    if v472 and v472:FindFirstChild("HumanoidRootPart") then
                        local v473 = vu464.Position
                        local v474 = v472.HumanoidRootPart.Position
                        if (v473 - v474).Magnitude < vu465 then
                            local v475 = (v473 - v474).Unit
                            vu464.CFrame = vu464.CFrame + v475 * vu466
                        end
                    end
                end)
            end)
        elseif vu469 then
            vu469:Disconnect()
            vu469 = nil
        end
    end
})
vu227.Anti:Toggle({
    Title = "Escape From Deer",
    Value = false,
    Callback = function(p476)
        if p476 then
            vu470 = vu462.RenderStepped:Connect(function()
                pcall(function()
                    local v477 = vu214:FindFirstChild("Characters")
                    if v477 then
                        v477 = vu214.Characters:FindFirstChild("Deer")
                    end
                    if v477 and v477:FindFirstChild("HumanoidRootPart") then
                        local v478 = vu464.Position
                        local v479 = v477.HumanoidRootPart.Position
                        if (v478 - v479).Magnitude < vu467 then
                            local v480 = (v478 - v479).Unit
                            vu464.CFrame = vu464.CFrame + v480 * vu468
                        end
                    end
                end)
            end)
        elseif vu470 then
            vu470:Disconnect()
            vu470 = nil
        end
    end
})
vu227.Vision:Section({
    Title = "Vision",
    Icon = "eye"
})
local vu481 = {
    Sky = nil,
    Bloom = nil,
    CampfireEffect = nil
};
(function()
    local v482 = game:GetService("Lighting")
    local v483 = v482:FindFirstChild("Sky")
    local v484 = v482:FindFirstChild("Bloom")
    local v485 = v482:FindFirstChild("CampfireEffect")
    if v483 and not vu481.Sky then
        vu481.Sky = v483.Parent
    end
    if v484 and not vu481.Bloom then
        vu481.Bloom = v484.Parent
    end
    if v485 and not vu481.CampfireEffect then
        vu481.CampfireEffect = v485.Parent
    end
end)()
local vu486 = nil;
(function()
    local v487 = game:GetService("Lighting"):FindFirstChild("ColorCorrection")
    if v487 and not vu486 then
        vu486 = v487.Parent
    end
end)()
vu227.Vision:Toggle({
    Title = "Disable Fog",
    Desc = "",
    Value = false,
    Callback = function(p488)
        local v489 = game:GetService("Lighting")
        if p488 then
            local v490 = v489:FindFirstChild("Sky")
            local v491 = v489:FindFirstChild("Bloom")
            local v492 = v489:FindFirstChild("CampfireEffect")
            if v490 then
                v490.Parent = nil
            end
            if v491 then
                v491.Parent = nil
            end
            if v492 then
                v492.Parent = nil
            end
        else
            local v493 = game:FindFirstChild("Sky", true)
            local v494 = game:FindFirstChild("Bloom", true)
            local v495 = game:FindFirstChild("CampfireEffect", true)
            local v496 = v493 or v489:FindFirstChild("Sky")
            local v497 = v494 or v489:FindFirstChild("Bloom")
            local v498 = v495 or v489:FindFirstChild("CampfireEffect")
            if v496 then
                v496.Parent = vu481.Sky or v489
            end
            if v497 then
                v497.Parent = vu481.Bloom or v489
            end
            if v498 then
                v498.Parent = vu481.CampfireEffect or v489
            end
        end
    end
})
local vu499 = {
    Brightness = nil,
    Ambient = nil,
    OutdoorAmbient = nil,
    ShadowSoftness = nil,
    GlobalShadows = nil,
    Technology = nil
};
(function()
    local v500 = game:GetService("Lighting")
    if not vu499.Brightness then
        vu499.Brightness = v500.Brightness
        vu499.Ambient = v500.Ambient
        vu499.OutdoorAmbient = v500.OutdoorAmbient
        vu499.ShadowSoftness = v500.ShadowSoftness
        vu499.GlobalShadows = v500.GlobalShadows
        vu499.Technology = v500.Technology
    end
end)()
vu227.Vision:Toggle({
    Title = "Disable NightCampFire Effect",
    Desc = "",
    Value = false,
    Callback = function(p501)
        local v502 = game:GetService("Lighting")
        if p501 then
            local v503 = v502:FindFirstChild("ColorCorrection")
            if v503 then
                if not vu486 then
                    vu486 = v503.Parent
                end
                v503.Parent = nil
            end
        else
            local v504 = v502:FindFirstChild("ColorCorrection") or game:FindFirstChild("ColorCorrection", true)
            if v504 then
                v504.Parent = v502
            end
        end
    end
})
vu227.Vision:Section({
    Title = "Visual",
    Icon = "lightbulb"
})
vu227.Vision:Toggle({
    Title = "Full Bright",
    Desc = "",
    Value = false,
    Callback = function(p505)
        if p505 then
            vu6.ClockTime = 14
            vu6.Brightness = 2.2
            vu6.Ambient = Color3.new(1, 1, 1)
            vu6.OutdoorAmbient = Color3.new(1, 1, 1)
            vu6.ShadowSoftness = 0
            vu6.GlobalShadows = false
            vu6.Technology = Enum.Technology.Compatibility
        else
            vu6.Brightness = vu499.Brightness
            vu6.Ambient = vu499.Ambient
            vu6.OutdoorAmbient = vu499.OutdoorAmbient
            vu6.ShadowSoftness = vu499.ShadowSoftness
            vu6.GlobalShadows = vu499.GlobalShadows
            vu6.Technology = vu499.Technology
        end
    end
})
local vu506 = false
local vu507 = vu6.FogStart
local vu508 = vu6.FogEnd
vu227.Vision:Toggle({
    Title = "No Fog",
    Desc = "",
    Value = false,
    Callback = function(p509)
        vu506 = p509
        if not p509 then
            vu6.ClockTime = 14
            vu6.GlobalShadows = false
            vu6.FogStart = vu507
            vu6.FogEnd = vu508
        end
    end
})
vu462.Heartbeat:Connect(function()
    if vu506 and (vu6.FogStart ~= 100000 or vu6.FogEnd ~= 100000) then
        vu6.ClockTime = 14
        vu6.GlobalShadows = false
        vu6.FogStart = 100000
        vu6.FogEnd = 100000
        print("[MinhNhatHUB] hi 3")
    end
end)
if not v8 then
    vu6.ClockTime = 14
    vu6.GlobalShadows = false
    local v510 = Instance.new("ColorCorrectionEffect")
    v510.Name = "VibrantEffect"
    v510.Saturation = 0.5
    v510.Contrast = 0.2
    v510.Brightness = 0.1
    v510.Enabled = false
    v510.Parent = vu6
end
vu227.Vision:Toggle({
    Title = "Vibrant Colors",
    Value = false,
    Callback = function(p511)
        if p511 then
            vu6.ClockTime = 14
            vu6.GlobalShadows = false
            vu6.Ambient = Color3.fromRGB(180, 180, 180)
            vu6.OutdoorAmbient = Color3.fromRGB(170, 170, 170)
            vu6.ColorShift_Top = Color3.fromRGB(255, 230, 200)
            vu6.ColorShift_Bottom = Color3.fromRGB(200, 240, 255)
            if vu7 then
                vu7.Enabled = true
            end
        else
            if vu7 then
                vu7.Enabled = false
            end
            vu6.ClockTime = 14
            vu6.GlobalShadows = false
            vu6.Ambient = Color3.new(0, 0, 0)
            vu6.OutdoorAmbient = Color3.new(0, 0, 0)
            vu6.ColorShift_Top = Color3.new(0, 0, 0)
            vu6.ColorShift_Bottom = Color3.new(0, 0, 0)
            print("[MinhNhatHUB] hi 1")
        end
    end
})
vu227.Vision:Section({
    Title = "Low Graphic",
    Icon = "user-cog"
})
vu227.Vision:Button({
    Title = "FPS Boost (By MinhNhat)",
    Callback = function()
        pcall(function()
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            local v512 = game:GetService("Lighting")
            v512.Brightness = 1
            v512.FogEnd = 1000000
            v512.GlobalShadows = false
            v512.EnvironmentDiffuseScale = 0
            v512.EnvironmentSpecularScale = 0
            v512.ClockTime = 14
            v512.OutdoorAmbient = Color3.new(0, 0, 0)
            local v513 = vu214:FindFirstChildOfClass("Terrain")
            if v513 then
                v513.WaterWaveSize = 0
                v513.WaterWaveSpeed = 0
                v513.WaterReflectance = 0
                v513.WaterTransparency = 0
            end
            local v514, v515, v516 = ipairs(v512:GetDescendants())
            while true do
                local v517
                v516, v517 = v514(v515, v516)
                if v516 == nil then
                    break
                end
                if v517:IsA("PostEffect") or (v517:IsA("BloomEffect") or (v517:IsA("ColorCorrectionEffect") or (v517:IsA("SunRaysEffect") or v517:IsA("BlurEffect")))) then
                    v517.Enabled = false
                end
            end
            local v518, v519, v520 = ipairs(game:GetDescendants())
            while true do
                local v521
                v520, v521 = v518(v519, v520)
                if v520 == nil then
                    break
                end
                if v521:IsA("ParticleEmitter") or v521:IsA("Trail") then
                    v521.Enabled = false
                elseif v521:IsA("Texture") or v521:IsA("Decal") then
                    v521.Transparency = 1
                end
            end
            local v522 = vu214
            local v523, v524, v525 = ipairs(v522:GetDescendants())
            while true do
                local v526
                v525, v526 = v523(v524, v525)
                if v525 == nil then
                    break
                end
                if v526:IsA("BasePart") then
                    v526.CastShadow = false
                end
            end
        end)
        print("[Roblox] FPS Boost Applied")
    end
})
local v527 = game:GetService("RunService")
local vu528 = game:GetService("Stats")
local vu529 = vu214.CurrentCamera
local vu530 = true
local vu531 = true
local vu532 = 0
local vu533 = tick()
local vu534 = 0
local function v537(p535)
    local v536 = Drawing.new("Text")
    v536.Size = 16
    v536.Position = Vector2.new(vu529.ViewportSize.X - 110, p535)
    v536.Color = Color3.fromRGB(0, 255, 0)
    v536.Center = false
    v536.Outline = true
    v536.Visible = true
    return v536
end
local vu538 = v537(10)
local vu539 = v537(30)
local v540 = vu529
vu529.GetPropertyChangedSignal(v540, "ViewportSize"):Connect(function()
    vu538.Position = Vector2.new(vu529.ViewportSize.X - 110, 10)
    vu539.Position = Vector2.new(vu529.ViewportSize.X - 110, 30)
end)
v527.RenderStepped:Connect(function()
    vu532 = vu532 + 1
    if tick() - vu533 >= 1 then
        vu534 = vu532
        vu532 = 0
        vu533 = tick()
        if vu530 then
            vu538.Text = string.format("FPS: %d", vu534)
            vu538.Color = vu534 >= 50 and Color3.fromRGB(0, 255, 0) or (vu534 >= 30 and Color3.fromRGB(255, 165, 0) or Color3.fromRGB(255, 0, 0))
            vu538.Visible = true
        else
            vu538.Visible = false
        end
        if vu531 then
            local v541 = vu528.Network.ServerStatsItem["Data Ping"]
            local v542 = v541 and math.floor(v541:GetValue()) or 0
            local v543 = Color3.fromRGB(0, 255, 0)
            local v544 = "Ping: "
            if v542 > 120 then
                v543 = Color3.fromRGB(255, 0, 0)
                v544 = "Ew Wifi Ping: "
            elseif v542 > 60 then
                v543 = Color3.fromRGB(255, 165, 0)
            end
            vu539.Text = string.format("%s%d ms", v544, v542)
            vu539.Color = v543
            vu539.Visible = true
        else
            vu539.Visible = false
        end
    end
end)
vu227.Vision:Section({
    Title = "Show Status",
    Icon = "settings-2"
})
vu227.Vision:Toggle({
    Title = "Show FPS",
    Default = true,
    Callback = function(p545)
        vu530 = p545
        vu538.Visible = p545
    end
})
vu227.Vision:Toggle({
    Title = "Show Ping",
    Default = true,
    Callback = function(p546)
        vu531 = p546
        vu539.Visible = p546
    end
})
vu227.More:Section({
    Title = "Immortal",
    Icon = "gem"
})
vu227.More:Button({
    Title = "God Mode",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MinhNhatHUB/God-Mode/refs/heads/main/99%20Night%20In%20The%20Forest.lua"))()
    end
})
Info = vu227.Info
if not ui then
    ui = {}
end
if not ui.Creator then
    ui.Creator = {}
end
function ui.Creator.Request(pu547)
    local vu548 = game:GetService("HttpService")
    local v550, v551 = pcall(function()
        if not vu548.RequestAsync then
            return {
                Body = vu548:GetAsync(pu547.Url),
                StatusCode = 200,
                Success = true
            }
        end
        local v549 = vu548:RequestAsync({
            Url = pu547.Url,
            Method = pu547.Method or "GET",
            Headers = pu547.Headers or {}
        })
        return {
            Body = v549.Body,
            StatusCode = v549.StatusCode,
            Success = v549.Success
        }
    end)
    if v550 then
        return v551
    end
    error("HTTP Request failed: " .. tostring(v551))
end
local vu552 = "2u4enVshHx"
local vu553 = "https://discord.com/api/v10/invites/" .. vu552 .. "?with_counts=true&with_expiration=true";
(function()
    local v555, v556 = pcall(function()
        local v554 = {
            Url = vu553,
            Method = "GET",
            Headers = {
                ["User-Agent"] = "RobloxBot/1.0",
                Accept = "application/json"
            }
        }
        return game:GetService("HttpService"):JSONDecode(ui.Creator.Request(v554).Body)
    end)
    if v555 and (v556 and v556.guild) then
        local vu557 = Info:Paragraph({
            Title = v556.guild.name,
            Desc = " <font color=\"#52525b\">\226\151\143</font> Member Count : " .. tostring(v556.approximate_member_count) .. "\n <font color=\"#16a34a\">\226\151\143</font> Online Count : " .. tostring(v556.approximate_presence_count),
            Image = "https://cdn.discordapp.com/icons/" .. v556.guild.id .. "/" .. v556.guild.icon .. ".png?size=1024",
            ImageSize = 42
        })
        Info:Button({
            Title = "Update Info",
            Callback = function()
                local v559, v560 = pcall(function()
                    local v558 = {
                        Url = vu553,
                        Method = "GET"
                    }
                    return game:GetService("HttpService"):JSONDecode(ui.Creator.Request(v558).Body)
                end)
                if v559 and (v560 and v560.guild) then
                    vu557:SetDesc(" <font color=\"#52525b\">\226\151\143</font> Member Count : " .. tostring(v560.approximate_member_count) .. "\n <font color=\"#16a34a\">\226\151\143</font> Online Count : " .. tostring(v560.approximate_presence_count))
                    vu1:Notify({
                        Title = "Discord Info Updated",
                        Content = "Successfully refreshed Discord statistics",
                        Duration = 2,
                        Icon = "refresh-cw"
                    })
                else
                    vu1:Notify({
                        Title = "Update Failed",
                        Content = "Could not refresh Discord info",
                        Duration = 3,
                        Icon = "alert-triangle"
                    })
                end
            end
        })
        Info:Button({
            Title = "Copy Discord Invite",
            Callback = function()
                setclipboard("https://discord.gg/" .. vu552)
                vu1:Notify({
                    Title = "Copied!",
                    Content = "Discord invite copied to clipboard",
                    Duration = 2,
                    Icon = "clipboard-check"
                })
            end
        })
    else
        Info:Paragraph({
            Title = "Error fetching Discord Info",
            Desc = "Unable to load Discord information. Check your internet connection.",
            Image = "triangle-alert",
            ImageSize = 26,
            Color = "Red"
        })
        print("Discord API Error:", v556)
    end
end)()
Info:Divider()
Info:Section({
    Title = "MinhNhatHUB Information",
    TextXAlignment = "Center",
    TextSize = 17
})
Info:Divider()
Info:Paragraph({
    Title = "Main Owner",
    Desc = "@nhataulhc86",
    Image = "rbxassetid://119789418015420",
    ImageSize = 30,
    Thumbnail = "",
    ThumbnailSize = 0,
    Locked = false
})
Info:Paragraph({
    Title = "Discord",
    Desc = "Join our discord for more scripts!",
    Image = "rbxassetid://113191664721910",
    ImageSize = 30,
    Thumbnail = "",
    ThumbnailSize = 0,
    Locked = false,
    Buttons = {
        {
            Icon = "copy",
            Title = "Copy Link",
            Callback = function()
                setclipboard("https://discord.gg/2u4enVshHx")
                print("Copied discord link to clipboard!")
            end
        }
    }
})