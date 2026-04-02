local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StarterGui = game:GetService("StarterGui")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local Player = Players.LocalPlayer
local Terrain = Workspace:FindFirstChildOfClass("Terrain")
getgenv().Config = {
    Team = "Marines",
    DelayLoad = 18
}
local NOTIFY_TITLE = "Dojo Hub Loaded"
local NOTIFY_ICON = "rbxassetid://78617112299549"
local NOTIFY_TIME = 10
local callCount = 0
local MAX_CALL = 2
local Settings = {
    AntiAdmin = {
        Enabled = true,
        AdminList = {
            "red_game43", "rip_indra", "Axiore", "Polkster", "wenlocktoad",
            "Daigrock", "toilamvidamme", "oofficialnoobie", "Uzoth", "Azarth",
            "arlthmetic", "Death_King", "Lunoven", "TheGreateAced", "rip_fud",
            "drip_mama", "layandikit12", "Hingoi"
        },
        HopDelay = 5,
        CheckInterval = 30
    },
    AutoRejoin = {
        Enabled = true, 
        MaxAttempts = 5,
        RejoinDelay = 5,
        CurrentAttempts = 0
    }
}
local function Notify(text)
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = NOTIFY_TITLE,
            Text = text,
            Icon = NOTIFY_ICON,
            Duration = NOTIFY_TIME
        })
    end)
end
local function SetTeam()
    if callCount >= MAX_CALL then return end
    callCount += 1
    pcall(function()
        ReplicatedStorage:WaitForChild("Remotes")
            :WaitForChild("CommF_")
            :InvokeServer("SetTeam", Config.Team)
    end)
end
local function ApplyFPSBoost()
    Lighting.FogStart = 1e9
    Lighting.FogEnd = 1e9
    for _, v in ipairs(Lighting:GetChildren()) do
        if v:IsA("Sky") or v:IsA("Atmosphere") then
            v:Destroy()
        elseif v:IsA("PostEffect") then
            v.Enabled = false
        end
    end
    Lighting.GlobalShadows = false
    Lighting.ClockTime = 12
    Lighting.Brightness = 1.2
    Lighting.OutdoorAmbient = Color3.new(1,1,1)    
    if Terrain then
        Terrain.WaterWaveSize = 0
        Terrain.WaterWaveSpeed = 0
        Terrain.WaterReflectance = 0
        Terrain.WaterTransparency = 1
    end    
    local function IsPlayerModel(model)
        return Players:GetPlayerFromCharacter(model) ~= nil
    end    
    local function IsTreeObject(obj)
        local n = obj.Name:lower()
        if n:find("tree") or n:find("leaf") or n:find("bush")
            or n:find("foliage") or n:find("plant") or n:find("palm") then
            return true
        end
        if obj:IsA("MeshPart") then
            return true
        end
        return false
    end    
    local function Clean(v)
        if v:IsA("Model") then
            if v:FindFirstChildOfClass("Humanoid") and not IsPlayerModel(v) then
                v:Destroy()
                return
            end
            if IsTreeObject(v) then
                v:Destroy()
                return
            end
        end
        if v:IsA("BasePart") then
            v.Material = Enum.Material.SmoothPlastic
            v.CastShadow = false
            v.Reflectance = 0
            v.Color = Color3.fromRGB(130,130,130)
        end
        if v:IsA("Decal") or v:IsA("Texture") then
            v:Destroy()
        elseif v:IsA("ParticleEmitter") then
            v:Destroy()
        elseif v:IsA("Trail") then
            v:Destroy()
        elseif v:IsA("Fire")
            or v:IsA("Smoke")
            or v:IsA("SpotLight")
            or v:IsA("PointLight")
            or v:IsA("SurfaceLight") then
            v.Enabled = false
        end
    end    
    for _, v in ipairs(Workspace:GetDescendants()) do
        Clean(v)
    end    
    Workspace.DescendantAdded:Connect(function(v)
        task.wait()
        Clean(v)
    end)
end
local function IsAdmin(playerName)
    for _, adminName in pairs(Settings.AntiAdmin.AdminList) do
        if string.lower(playerName) == string.lower(adminName) then
            return true
        end
    end
    return false
end
local function FindNewServer()
    local servers = {}
    local nextCursor = ""  
    repeat
        local success, response = pcall(function()
            return HttpService:JSONDecode(game:HttpGet(
                "https://games.roblox.com/v1/games/" .. game.PlaceId .. 
                "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. nextCursor
            ))
        end)      
        if success and response and response.data then
            for _, server in pairs(response.data) do
                if server.playing < server.maxPlayers and server.id ~= game.JobId then
                    table.insert(servers, server.id)
                end
            end
            nextCursor = response.nextPageCursor or ""
        else
            break
        end
    until #servers >= 3 or nextCursor == ""    
    return #servers > 0 and servers[math.random(1, #servers)] or nil
end
local function HopToNewServer()
    if not Settings.AntiAdmin.Enabled then return end    
    print("[Protection] Đang tìm server mới...")    
    local newServerId = FindNewServer()
    if newServerId then
        print("[Protection] Đang chuyển sang server: " .. newServerId)        
        Notify("Phát hiện admin! Đang chuyển server...")       
        task.wait(Settings.AntiAdmin.HopDelay)        
        TeleportService:TeleportToPlaceInstance(game.PlaceId, newServerId, Players.LocalPlayer)
    else
        print("[Protection] Không tìm thấy server phù hợp!")
    end
end
local function CheckForAdmins()
    if not Settings.AntiAdmin.Enabled then return end    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer and IsAdmin(player.Name) then
            print("[Protection] Phát hiện admin: " .. player.Name)
            HopToNewServer()
            return
        end
    end
end
local function IsKickPromptVisible()
    local promptGui = CoreGui:FindFirstChild("RobloxPromptGui")
    if promptGui then
        local promptOverlay = promptGui:FindFirstChild("promptOverlay")
        if promptOverlay then
            for _, child in pairs(promptOverlay:GetChildren()) do
                if child.Name == "ErrorPrompt" then
                    local messageArea = child:FindFirstChild("MessageArea")
                    if messageArea and messageArea:FindFirstChild("ErrorFrame") then
                        return true
                    end
                end
            end
        end
    end
    return false
end
local function PerformRejoin()
    if not Settings.AutoRejoin.Enabled or 
       Settings.AutoRejoin.CurrentAttempts >= Settings.AutoRejoin.MaxAttempts then
        print("[Protection] Đã đạt giới hạn rejoin!")
        return
    end  
    Settings.AutoRejoin.CurrentAttempts = Settings.AutoRejoin.CurrentAttempts + 1  
    print(string.format(
        "[Protection] Rejoin lần %d/%d",
        Settings.AutoRejoin.CurrentAttempts,
        Settings.AutoRejoin.MaxAttempts
    ))  
    Notify("Đã bị kick! Đang rejoin...")    
    task.wait(Settings.AutoRejoin.RejoinDelay)    
    local success = pcall(function()
        TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)
    end)    
    if not success then
        task.wait(Settings.AutoRejoin.RejoinDelay)
        PerformRejoin()
    end
end
local function InitProtectionSystem()
    print("[Protection] Đang khởi động hệ thống bảo vệ...")   
    if Settings.AntiAdmin.Enabled then
        print("[Protection] Anti-Admin: Đã bật")
        Notify("Anti-Admin: Đã bật!")        
        CheckForAdmins()
        Players.PlayerAdded:Connect(function(player)
            task.wait(1)
            if Settings.AntiAdmin.Enabled and player ~= Players.LocalPlayer and IsAdmin(player.Name) then
                print("[Protection] Admin mới join: " .. player.Name)
                HopToNewServer()
            end
        end)        
        task.spawn(function()
            while task.wait(Settings.AntiAdmin.CheckInterval) do
                if Settings.AntiAdmin.Enabled then
                    CheckForAdmins()
                else
                    break
                end
            end
        end)
    end   
    if Settings.AutoRejoin.Enabled then
        print("[Protection] Auto-Rejoin: Đã bật")
        Notify("Auto-Rejoin: Đã bật!")        
        local promptGui = CoreGui:FindFirstChild("RobloxPromptGui")
        if promptGui then
            local promptOverlay = promptGui:FindFirstChild("promptOverlay")
            if promptOverlay then
                promptOverlay.ChildAdded:Connect(function(child)
                    if Settings.AutoRejoin.Enabled and child.Name == "ErrorPrompt" then
                        task.wait(1)
                        if IsKickPromptVisible() then
                            PerformRejoin()
                        end
                    end
                end)
            end
        end        
        Players.PlayerRemoving:Connect(function(player)
            if Settings.AutoRejoin.Enabled and player == Players.LocalPlayer then
                task.wait(2)
                if not player:IsDescendantOf(game) then
                    PerformRejoin()
                end
            end
        end)        
        task.spawn(function()
            while task.wait(10) do
                if Settings.AutoRejoin.Enabled and IsKickPromptVisible() then
                    PerformRejoin()
                end
            end
        end)
    end
end
task.delay(2, SetTeam)
Player.CharacterAdded:Connect(function()
    if callCount < MAX_CALL then
        task.delay(1.5, SetTeam)
    end
end)
Notify("khanhlyHUB đã kích hoạt!")
ApplyFPSBoost()
print("[System] FPS Boost đã áp dụng")
InitProtectionSystem()
print("[System] Protection System đã khởi động")
print("[System] Đang chờ " .. Config.DelayLoad .. "s để load script...")
Notify("Đang chờ " .. Config.DelayLoad .. "s để load script...")
task.wait(Config.DelayLoad)
local MAIN_SCRIPT_URL = "https://raw.githubusercontent.com/khoavipok/khanhlyHUB/refs/heads/main/Autofarm%20chest%20Pranium"
local success, err = pcall(function()
    loadstring(game:HttpGet(MAIN_SCRIPT_URL))()
end)
if success then
    Notify("Script đã load xong!")
    print("[System] Script loaded successfully!")
else
    Notify("Không load được script!")
    warn("[System] Loader Error:", err)
end
if getgenv()._CopiedLink then return end
getgenv()._CopiedLink = true
local LINK_TO_COPY = "https://discord.gg/JakeiN81M"
task.wait(1)
pcall(function()
    setclipboard(LINK_TO_COPY)
end)
warn("Dojo Hub")
