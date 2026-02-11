--[[ 
    OPTIMIZED FAST ATTACK (SIÊU TỐC)
    - Đã loại bỏ giới hạn tốc độ.
    - Đã gộp các luồng xử lý.
]]

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local Player = Players.LocalPlayer
local Modules = ReplicatedStorage:WaitForChild("Modules")
local Net = Modules:WaitForChild("Net")
local RegisterAttack = Net:WaitForChild("RE/RegisterAttack")
local RegisterHit = Net:WaitForChild("RE/RegisterHit")
local ShootGunEvent = Net:WaitForChild("RE/ShootGunEvent")

-- Cấu hình cực đại
getgenv().PMT_GunFast = true
getgenv().PMT_GunFast_Delay = 0 -- Không có độ trễ súng
getgenv().PMT_GunFast_PrimeEvery = 0 -- Prime súng liên tục

local Config = {
    AttackDistance = 100, -- Tăng nhẹ tầm đánh
    AttackMobs = true,
    AttackPlayers = true,
    AttackCooldown = 0, -- KHÔNG CÓ COOLDOWN
    HitboxLimbs = {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso"}, 
    AutoClickEnabled = true
}

local FastAttack = {}
FastAttack.__index = FastAttack

function FastAttack.new()
    local self = setmetatable({
        EnemyRootPart = nil,
        _GunLastPrime = 0,
        _GunLastShot = 0,
        _LastGunTargetModel = nil,
        HitFunction = nil
    }, FastAttack)

    -- Cố gắng lấy hàm đánh từ client gốc để bypass anti-cheat (nếu có)
    pcall(function()
        local ls = Player:WaitForChild("PlayerScripts"):FindFirstChildOfClass("LocalScript")
        if ls and getsenv then 
            self.HitFunction = getsenv(ls)._G.SendHitsToServer 
        end
    end)
    return self
end

function FastAttack:IsEntityAlive(e)
    local h = e and e:FindFirstChild("Humanoid")
    return h and h.Health > 0
end

-- Hàm tìm quái/người chơi gần nhất cực nhanh
function FastAttack:GetBladeHits(c, dist)
    local pos = c:GetPivot().Position
    local bh = {}
    dist = dist or Config.AttackDistance

    local function proc(folder)
        if not folder then return end
        for _, e in ipairs(folder:GetChildren()) do
            if e ~= c and self:IsEntityAlive(e) then
                local root = e:FindFirstChild("HumanoidRootPart")
                if root and (pos - root.Position).Magnitude <= dist then
                    -- Ưu tiên đánh vào Head hoặc RootPart để chắc chắn trúng
                    local hitPart = e:FindFirstChild("Head") or root 
                    table.insert(bh, {e, hitPart})
                    self.EnemyRootPart = root -- Lưu lại mục tiêu chính
                end
            end
        end
    end

    if Config.AttackMobs then proc(Workspace:FindFirstChild("Enemies")) end
    if Config.AttackPlayers then proc(Workspace:FindFirstChild("Characters")) end
    return bh
end

function FastAttack:Attack()
    if not Config.AutoClickEnabled then return end
    
    local char = Player.Character
    if not char or not self:IsEntityAlive(char) then return end
    
    local tool = char:FindFirstChildOfClass("Tool")
    if not tool then return end

    -- Xử lý Súng (Gun) siêu tốc
    if tool.ToolTip == "Gun" and getgenv().PMT_GunFast then
        -- Prime súng (nạp đạn ảo)
        pcall(function() tool:Activate() end)
        
        -- Bắn
        local targets = self:GetBladeHits(char, 120)
        local targetParams = targets[1] -- Lấy mục tiêu gần nhất
        if targetParams then
            local enemyModel = targetParams[1]
            local enemyPart = targetParams[2]
            
            -- Bắn thẳng vào vị trí mục tiêu
            pcall(function()
                ShootGunEvent:FireServer(enemyPart.Position, {enemyPart})
            end)
        end
        return -- Kết thúc xử lý súng để không bị kẹt với Melee
    end

    -- Xử lý Cận chiến (Melee/Sword/Fruit)
    local hits = self:GetBladeHits(char)
    if #hits > 0 then
        -- Gửi tín hiệu tấn công (Swing)
        RegisterAttack:FireServer(0) 
        
        -- Gửi tín hiệu trúng đòn (Hit) ngay lập tức
        if self.HitFunction then
            -- Dùng hàm game gốc nếu lấy được (an toàn hơn)
            self.HitFunction(self.EnemyRootPart, hits)
        else
            -- Dùng hàm giả lập (nhanh hơn nhưng rủi ro kick cao hơn)
            -- Cấu trúc: {Head, { {Model, HitPart}, ... } }
            local args = {nil, {}}
            args[1] = hits[1][2] -- Head hoặc part đầu tiên
            
            for i, v in ipairs(hits) do
                args[2][i] = v -- {Model, Part}
            end
            
            RegisterHit:FireServer(unpack(args))
        end
    end
end

-- KHỞI CHẠY
local AttackInstance = FastAttack.new()

-- Sử dụng Heartbeat: Chạy mỗi frame (nhanh hơn loop while do thông thường)
RunService.Heartbeat:Connect(function()
    pcall(function()
        AttackInstance:Attack()
    end)
end)

-- Hook function để đè lên hành động đánh thường của người chơi (nếu click tay)
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    if method == "FireServer" and self.Name == "RegisterAttack" then
        AttackInstance:Attack() -- Gọi Fast Attack khi click
        return -- Chặn tín hiệu gốc để tránh spam thừa
    end
    return old(self, ...)
end)
setreadonly(mt, true)

print("⚡ Ultra Fast Attack  ⚡")