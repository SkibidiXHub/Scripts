--[[
This source was beautified by HNC Roblox
]]--
Beautify_By_HNC_Roblox = Beautify_By_HNC_Roblox:AddSection({
"Dungeon-Vip"
})

Beautify_By_HNC_Roblox:AddToggle({
["Name"] = "Auto Join Dungeon Server",
["Description"] = "Click ServerBrowserButton 1 time then click Dungeon 3 times",
["Default"] = false,
["Callback"] = function(IsToggled)
AutoJoinDungeonServer = IsToggled
end
})

task.spawn(function()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local DungeonPlaceId = 73902483975735

local function IsDungeonGame()
return game.PlaceId == DungeonPlaceId
end

local function ClickButtonOnce(Button, AttributeName)
if not Button or not Button.Parent then
return false
end

AttributeName = AttributeName or "ClickedOnce"

if Button:GetAttribute(AttributeName) then
return false
end

Button:SetAttribute(AttributeName, true)

local Success = pcall(function()
Button:Activate()
end)

if not Success then
pcall(function()
if firesignal and Button.Activated then
firesignal(Button.Activated)
end
end)
end

return true
end

local function ClickButton(Button)
if not Button or not Button.Parent then
return false
end

pcall(function()
Button:Activate()
end)

pcall(function()
if firesignal and Button.Activated then
firesignal(Button.Activated)
end
end)

return true
end

while task.wait(0.5) do
if IsDungeonGame() then
if AutoJoinDungeonServer then
AutoJoinDungeonServer = false
end
continue
end

if not AutoJoinDungeonServer then
local Success, ServerBrowserButton = pcall(function()
return PlayerGui:FindFirstChild("Topbar") and PlayerGui.Topbar:FindFirstChild("Frame") and PlayerGui.Topbar.Frame:FindFirstChild("ServerBrowserButton")
end)

if Success and ServerBrowserButton then
pcall(function()
ServerBrowserButton:SetAttribute("Clicked_ServerBrowserButton", nil)
end)
end
continue
end

local ServerBrowserButton = ((PlayerGui:WaitForChild("Topbar")):WaitForChild("Frame")):WaitForChild("ServerBrowserButton")
ClickButtonOnce(ServerBrowserButton, "Clicked_ServerBrowserButton")

local ServerBrowserGui = PlayerGui:WaitForChild("ServerBrowser")
local StartTime = os.clock()

while AutoJoinDungeonServer and os.clock() - StartTime < 5 do
if ServerBrowserGui.Enabled ~= false and ServerBrowserGui.Parent then
break
end
task.wait(0.05)
end

if not AutoJoinDungeonServer then
continue
end

local DungeonButton = ((ServerBrowserGui:WaitForChild("Frame")):WaitForChild("TeleportButtons")):WaitForChild("Dungeon")
StartTime = os.clock()

while AutoJoinDungeonServer and os.clock() - StartTime < 5 do
if DungeonButton.Visible and DungeonButton.Active then
break
end
task.wait(0.05)
end

if not AutoJoinDungeonServer then
continue
end

for i = 1, 3 do
if not AutoJoinDungeonServer then
break
end
ClickButton(DungeonButton)
task.wait(0.25)
end

AutoJoinDungeonServer = false
end
end)

local DungeonGameId = 73902483975735

local function IsDungeonPlace()
return game.PlaceId == DungeonGameId
end

Beautify_By_HNC_Roblox:AddToggle({
["Name"] = "Bring Mobs Dungeon",
["Description"] = "Bring dungeon mobs",
["Default"] = true,
["Callback"] = function(IsToggled)
BringMobsDungeon = IsToggled
end
})

local BringSettings = {
BringRadius = 350,
ScanRadius = 1000,
ClusterLinkDistance = 200,
MinMobsInSpot = 1,
UpdateDelay = 0.2,
HopStep = 180,
HopArriveDistance = 1000,
CenterSmoothing = 0.25,
UseRingHold = true,
RingRadius = 6,
MaxBring = 5,
HoldHeight = 1
}

FarmSpotBring = FarmSpotBring ~= false
BringMobsDungeon = BringMobsDungeon ~= false

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function IsFarmSpotBringEnabled()
return FarmSpotBring == true
end

local function IsBringMobsDungeonEnabled()
return BringMobsDungeon == true and IsDungeonPlace()
end

local function GetLocalCharacter()
return LocalPlayer and LocalPlayer.Character
end

local function GetLocalCharacterRoot()
local Character = GetLocalCharacter()
return Character and Character:FindFirstChild("HumanoidRootPart")
end

local function GetEnemiesFolder()
return workspace:FindFirstChild("Enemies")
end

local function IsRaidMobDefault(Mob)
return false
end

local function IsRaidMob(Mob)
if typeof(IsRaidMob) == "function" then
local Success, Result = pcall(IsRaidMob, Mob)
if Success then
return Result
end
end
return IsRaidMobDefault(Mob)
end

local function IsValidMob(Mob)
if not Mob or not Mob.Parent then
return false
end

local Humanoid = Mob:FindFirstChild("Humanoid")
local HumanoidRootPart = Mob:FindFirstChild("HumanoidRootPart")

if not Humanoid or not HumanoidRootPart then
return false
end

if Humanoid.Health <= 0 then
return false
end

if IsRaidMob(Mob) then
return false
end

return true
end

local function GetMobsInRadius(Position, Radius)
local EnemiesFolder = GetEnemiesFolder()
if not EnemiesFolder then
return {}
end

local Mobs = {}

for _, Mob in ipairs(EnemiesFolder:GetChildren()) do
if IsValidMob(Mob) then
local Distance = (Mob.HumanoidRootPart.Position - Position).Magnitude
if Distance <= Radius then
table.insert(Mobs, Mob)
end
end
end

return Mobs
end

local function ClusterMobs(Mobs, LinkDistance)
local Clusters = {}
local Visited = {}

for _, Mob in ipairs(Mobs) do
if not Visited[Mob] then
Visited[Mob] = true
local Cluster = {Mob}
local Stack = {}

while #Cluster > 0 do
local CurrentMob = table.remove(Cluster)
table.insert(Stack, CurrentMob)

local CurrentRoot = CurrentMob:FindFirstChild("HumanoidRootPart")
if CurrentRoot then
local CurrentPosition = CurrentRoot.Position

for _, OtherMob in ipairs(Mobs) do
if not Visited[OtherMob] then
local OtherRoot = OtherMob:FindFirstChild("HumanoidRootPart")
if OtherRoot and (OtherRoot.Position - CurrentPosition).Magnitude <= LinkDistance then
Visited[OtherMob] = true
table.insert(Cluster, OtherMob)
end
end
end
end
end

table.insert(Clusters, Stack)
end
end

return Clusters
end

local function CalculateClusterCenter(Cluster)
local Sum = Vector3.new(0, 0, 0)
local Count = 0

for _, Mob in ipairs(Cluster) do
if IsValidMob(Mob) then
Sum = Sum + Mob.HumanoidRootPart.Position
Count = Count + 1
end
end

if Count == 0 then
return nil, 0
end

return Sum / Count, Count
end

local function FindBestCluster(Clusters, CharacterPosition)
local BestCluster = nil
local BestScore = math.huge

for _, Cluster in ipairs(Clusters) do
local Center, Count = CalculateClusterCenter(Cluster)
if Center and Count > 0 then
local Distance = (Center - CharacterPosition).Magnitude
local Score = Distance - Count * 40

if Score < BestScore then
BestScore = Score
BestCluster = {
cluster = Cluster,
center = Center,
count = Count,
distance = Distance
}
end
end
end

return BestCluster
end

local function MoveTowards(Start, Target, MaxDistance)
local Direction = Target - Start
local Distance = Direction.Magnitude

if Distance <= MaxDistance then
return Target
end

return Start + Direction.Unit * MaxDistance
end

local function CalculateRingPosition(AngleMultiplier, Radius)
local Angle = AngleMultiplier * 2.3999632297287
return Vector3.new(math.cos(Angle) * Radius, 0, math.sin(Angle) * Radius)
end

local MonPosition = MonPosition or nil
local TargetPosition = nil
local MobCount = 0

local function UpdateTargetPosition()
local CharacterRoot = GetLocalCharacterRoot()
if not CharacterRoot then
return
end

local Mobs = GetMobsInRadius(CharacterRoot.Position, BringSettings.ScanRadius)

if #Mobs == 0 then
TargetPosition = CharacterRoot.Position
MobCount = 0
return
end

local Clusters = ClusterMobs(Mobs, BringSettings.ClusterLinkDistance)
local BestCluster = FindBestCluster(Clusters, CharacterRoot.Position)

if not BestCluster then
TargetPosition = CharacterRoot.Position
MobCount = 0
return
end

TargetPosition = BestCluster.center
MobCount = BestCluster.count
end

local function BringMobsToPosition()
if not IsFarmSpotBringEnabled() or not IsBringMobsDungeonEnabled() then
return
end

local Character = GetLocalCharacter()
if not Character then
return
end

local CharacterRoot = Character:FindFirstChild("HumanoidRootPart")
if not CharacterRoot then
return
end

if setscriptable then
pcall(function()
setscriptable(LocalPlayer, "SimulationRadius", true)
end)
end

if sethiddenproperty then
pcall(function()
sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
end)
end

local HoldPosition = MonPosition or CharacterRoot.Position
local EnemiesFolder = GetEnemiesFolder()
if not EnemiesFolder then
return
end

local MaxBring = BringSettings.MaxBring or 5
local HoldHeight = BringSettings.HoldHeight or 1

local ValidMobs = {}

for _, Mob in ipairs(EnemiesFolder:GetChildren()) do
local Humanoid = Mob:FindFirstChild("Humanoid")
local HumanoidRootPart = Mob:FindFirstChild("HumanoidRootPart")

if Humanoid and HumanoidRootPart and Humanoid.Health > 0 and not IsRaidMob(Mob) then
local Distance = (HumanoidRootPart.Position - HoldPosition).Magnitude
if Distance <= BringSettings.BringRadius then
table.insert(ValidMobs, {
root = HumanoidRootPart,
distance = Distance
})
end
end
end

if #ValidMobs <= 3 then
return
end

table.sort(ValidMobs, function(a, b)
return a.distance < b.distance
end)

local BroughtCount = 0

for i = 1, #ValidMobs do
BroughtCount = BroughtCount + 1
if BroughtCount > MaxBring then
break
end

local MobRoot = ValidMobs[i].root
if MobRoot and MobRoot.Parent then
local BasePosition = Vector3.new(HoldPosition.X, HoldPosition.Y + HoldHeight, HoldPosition.Z)

local TargetPos
if BringSettings.UseRingHold then
TargetPos = BasePosition + CalculateRingPosition(BroughtCount, BringSettings.RingRadius)
else
TargetPos = BasePosition
end

MobRoot.CFrame = CFrame.new(TargetPos)
end
end
end

task.spawn(function()
local CharacterRoot = GetLocalCharacterRoot()
if CharacterRoot then
MonPosition = CharacterRoot.Position
TargetPosition = CharacterRoot.Position
end

while task.wait(BringSettings.UpdateDelay) do
if not IsFarmSpotBringEnabled() or not IsBringMobsDungeonEnabled() then
continue
end

local CharacterRoot = GetLocalCharacterRoot()
if not CharacterRoot then
continue
end

UpdateTargetPosition()
local NewTarget = TargetPosition or CharacterRoot.Position

if typeof(MonPosition) ~= "Vector3" then
MonPosition = CharacterRoot.Position
end

local NextPosition = MoveTowards(MonPosition, NewTarget, BringSettings.HopStep)
MonPosition = MonPosition:Lerp(NextPosition, BringSettings.CenterSmoothing)

pcall(BringMobsToPosition)
end
end)

Beautify_By_HNC_Roblox:AddToggle({
["Name"] = "Auto Farm Raid Dungeon",
["Description"] = "Auto farm dungeon + next floor",
["Default"] = false,
["Callback"] = function(IsToggled)
AutoFarmDungeon = IsToggled
StopTween(IsToggled)
if not IsToggled then
StartBring = false
GoingToExit = false
DeathPause = false
end
end
})

local DungeonPlayers = game:GetService("Players")
local DungeonLocalPlayer = DungeonPlayers.LocalPlayer
local DungeonGamePlaceId = 73902483975735

FastDelay = FastDelay or 0.5
GoingToExit = false
DeathPause = false

local AttackDistance = 35
local MaxTargetDistance = 5000
local AttackHeight = 30
local TeleportOffset = 250
local MaxAttempts = 4
local ExitCheckDelay = 0.15

local function IsDungeonGamePlace()
return game.PlaceId == DungeonGamePlaceId
end

local function IsDungeonLoaded()
return workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Dungeon")
end

local function GetDungeonCharacter()
return DungeonLocalPlayer.Character
end

local function GetDungeonHumanoid()
local Character = GetDungeonCharacter()
return Character and Character:FindFirstChildOfClass("Humanoid")
end

local function GetDungeonRootPart()
local Character = GetDungeonCharacter()
return Character and Character:FindFirstChild("HumanoidRootPart")
end

local function WaitForRootPart(Timeout)
local EndTime = tick() + (Timeout or 10)
repeat
local RootPart = GetDungeonRootPart()
if RootPart then
return RootPart
end
task.wait(0.1)
until tick() > EndTime
end

local PropHitboxName = "PropHitboxPlaceholder"
local PropHitboxPriority = 1000000
local BlankBuddyName = "Blank Buddy"

local function GetLocalRootPart()
local Character = game.Players.LocalPlayer.Character
return Character and Character:FindFirstChild("HumanoidRootPart")
end

local function GetDungeonRoom(RoomNumber)
local Map = workspace:FindFirstChild("Map")
local Dungeon = Map and Map:FindFirstChild("Dungeon")
return Dungeon and Dungeon:FindFirstChild(tostring(RoomNumber))
end

local function IsPositionInRoom(Room, Position)
if not Room or not Position or not Room:IsA("Model") then
return false
end

local CF, Size = Room:GetBoundingBox()
local LocalPosition = CF:PointToObjectSpace(Position)
local Margin = 25

return math.abs(LocalPosition.X) <= Size.X / 2 + Margin and 
   math.abs(LocalPosition.Y) <= Size.Y / 2 + Margin and 
   math.abs(LocalPosition.Z) <= Size.Z / 2 + Margin
end

local function GetCurrentRoom()
if not IsDungeonLoaded() then
return nil
end

local RootPart = GetLocalRootPart()
if not RootPart then
return nil
end

local Dungeon = workspace.Map.Dungeon

for _, Room in ipairs(Dungeon:GetChildren()) do
if Room:IsA("Model") and IsPositionInRoom(Room, RootPart.Position) then
return Room
end
end

local ClosestRoom = nil
local ClosestDistance = math.huge

for _, Room in ipairs(Dungeon:GetChildren()) do
if Room:IsA("Model") then
local CF, _ = Room:GetBoundingBox()
local Distance = (RootPart.Position - CF.Position).Magnitude
if Distance < ClosestDistance then
ClosestDistance = Distance
ClosestRoom = Room
end
end
end

return ClosestRoom
end

local function RemovePropHitboxes()
local Enemies = workspace:FindFirstChild("Enemies")
if not Enemies then
return
end

for _, Enemy in ipairs(Enemies:GetChildren()) do
if Enemy and Enemy.Name == PropHitboxName then
Enemy:Destroy()
end
end
end

local function CheckAndRemovePropHitboxes()
local RootPart = GetLocalRootPart()
local Room16 = GetDungeonRoom(16)

if Room16 and RootPart and IsPositionInRoom(Room16, RootPart.Position) then
RemovePropHitboxes()

if not PropHitboxListener then
PropHitboxListener = true
local Enemies = workspace:FindFirstChild("Enemies")
if Enemies then
Enemies.ChildAdded:Connect(function(Child)
local RootPart = GetLocalRootPart()
local Room16 = GetDungeonRoom(16)
if Child and Child.Name == PropHitboxName and Room16 and RootPart and IsPositionInRoom(Room16, RootPart.Position) then
Child:Destroy()
end
end)
end
end
end
end

local function IsValidTarget(Target, CharacterPosition)
if not Target or not Target.Parent then
return false
end

if Target.Name == BlankBuddyName then
return false
end

local Humanoid = Target:FindFirstChild("Humanoid")
local HumanoidRootPart = Target:FindFirstChild("HumanoidRootPart")

if not Humanoid or not HumanoidRootPart then
return false
end

if Humanoid.Health <= 0 then
return false
end

local Distance = (CharacterPosition - HumanoidRootPart.Position).Magnitude
if Distance > MaxTargetDistance then
return false
end

return true
end

local function GetBestTarget()
local CharacterRoot = GetLocalRootPart()
if not CharacterRoot then
return nil
end

local BestTarget = nil
local BestDistance = math.huge

for _, Enemy in ipairs(workspace.Enemies:GetChildren()) do
if IsValidTarget(Enemy, CharacterRoot) then
local EnemyRoot = Enemy.HumanoidRootPart
local Distance = (CharacterRoot.Position - EnemyRoot.Position).Magnitude
local PriorityDistance = Distance

if Enemy.Name == PropHitboxName then
PriorityDistance = PriorityDistance - PropHitboxPriority
end

if PriorityDistance < BestDistance then
BestDistance = PriorityDistance
BestTarget = Enemy
end
end
end

return BestTarget
end

local function HasValidTargets()
local CharacterRoot = GetLocalRootPart()
if not CharacterRoot then
return false
end

for _, Enemy in ipairs(workspace.Enemies:GetChildren()) do
if IsValidTarget(Enemy, CharacterRoot) then
return true
end
end

return false
end

local function GetPrimaryPart(Object)
if Object:IsA("BasePart") then
return Object
end

if Object:IsA("Model") then
if Object.PrimaryPart then
return Object.PrimaryPart
end

for _, Child in pairs(Object:GetDescendants()) do
if Child:IsA("BasePart") then
return Child
end
end
end
end

local function GetRoomExitTeleporter(Room)
if not Room then
return nil
end

local ExitTeleporter = Room:FindFirstChild("ExitTeleporter")
if not ExitTeleporter then
return nil
end

return GetPrimaryPart(ExitTeleporter)
end

local function GetNearestExitTeleporter()
if not IsDungeonLoaded() then
return
end

local CharacterRoot = GetLocalRootPart()
if not CharacterRoot then
return
end

local NearestExit = nil
local NearestDistance = math.huge

for _, Room in pairs(workspace.Map.Dungeon:GetChildren()) do
local ExitTeleporter = Room:FindFirstChild("ExitTeleporter")
if ExitTeleporter then
local ExitPart = GetPrimaryPart(ExitTeleporter)
if ExitPart then
local Distance = (CharacterRoot.Position - ExitPart.Position).Magnitude
if Distance < NearestDistance then
NearestDistance = Distance
NearestExit = ExitPart
end
end
end
end

return NearestExit
end

local function GoToExit()
if not AutoFarmDungeon then
return
end

if GoingToExit then
return
end

if not IsDungeonGamePlace() then
return
end

GoingToExit = true

local CharacterRoot = WaitForRootPart(12)
if not CharacterRoot then
GoingToExit = false
return
end

local EndTime = tick() + 10
repeat
task.wait(0.2)
until IsDungeonLoaded() or tick() > EndTime

for Attempt = 1, 8 do
CheckAndRemovePropHitboxes()
local CurrentRoom = GetCurrentRoom()
local ExitPart = GetRoomExitTeleporter(CurrentRoom) or GetNearestExitTeleporter()

if ExitPart then
TP1(ExitPart.CFrame * CFrame.new(0, 3, 0))

local TeleportEndTime = tick() + 4
repeat
task.wait(0.1)
CharacterRoot = GetLocalRootPart()
if CharacterRoot and (CharacterRoot.Position - ExitPart.Position).Magnitude <= 8 then
GoingToExit = false
return
end
until tick() > TeleportEndTime
end
task.wait(0.35)
end

GoingToExit = false
end

local function FreezeMob(Mob)
if Mob:FindFirstChild("Frozen") then
return
end

local FrozenValue = Instance.new("BoolValue")
FrozenValue.Name = "Frozen"
FrozenValue.Parent = Mob

pcall(function()
Mob.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
Mob.HumanoidRootPart.Transparency = 1
Mob.HumanoidRootPart.CanCollide = false
Mob.Humanoid.WalkSpeed = 0
Mob.Humanoid.JumpPower = 0
end)
end

local function SetupDeathListener()
if DeathListener then
pcall(function()
DeathListener:Disconnect()
end)
end

local Humanoid = GetDungeonHumanoid()
if not Humanoid then
return
end

DeathListener = Humanoid.Died:Connect(function()
if not AutoFarmDungeon then
return
end

DeathPause = true
pcall(function()
StopTween(true)
end)
end)
end

DungeonLocalPlayer.CharacterAdded:Connect(function()
task.wait(0.25)
SetupDeathListener()

task.spawn(function()
if AutoFarmDungeon and IsDungeonGamePlace() then
DeathPause = true
StartBring = false
task.wait(0.25)
GoToExit()
task.wait(0.2)
DeathPause = false
end
end)
end)

task.spawn(function()
task.wait(0.5)
SetupDeathListener()
end)

task.spawn(function()
local TargetUpdateInterval = 0.2
local LastTargetUpdate = 0
local CurrentPriorityTarget = nil

while task.wait(0.05) do
if not AutoFarmDungeon then
continue
end

if GoingToExit or DeathPause then
continue
end

if not IsDungeonGamePlace() or not IsDungeonLoaded() then
continue
end

pcall(function()
local CharacterRoot = GetLocalRootPart()
if not CharacterRoot then
return
end

CheckAndRemovePropHitboxes()
local Target = GetBestTarget()

if not Target or not IsValidTarget(Target, CharacterRoot) then
CurrentPriorityTarget = nil
if not HasValidTargets() then
GoToExit()
end
return
end

local Room16 = GetDungeonRoom(16)
if Target.Name == PropHitboxName and Room16 and IsPositionInRoom(Room16, CharacterRoot.Position) then
Target:Destroy()
CurrentPriorityTarget = nil
if not HasValidTargets() then
GoToExit()
end
return
end

FreezeMob(Target)

repeat
task.wait(FastDelay)

if not AutoFarmDungeon or GoingToExit or DeathPause then
break
end

CharacterRoot = GetLocalRootPart()
if not CharacterRoot then
break
end

if not Target or not Target.Parent then
break
end

if not Target:FindFirstChild("Humanoid") or Target.Humanoid.Health <= 0 then
break
end

CheckAndRemovePropHitboxes()

if tick() - LastTargetUpdate >= TargetUpdateInterval then
LastTargetUpdate = tick()
local NewTarget = GetBestTarget()

if CurrentPriorityTarget then
if not CurrentPriorityTarget.Parent or not CurrentPriorityTarget:FindFirstChild("Humanoid") or CurrentPriorityTarget.Humanoid.Health <= 0 then
CurrentPriorityTarget = nil
else
Target = CurrentPriorityTarget
end
end

if not CurrentPriorityTarget and NewTarget and NewTarget.Parent then
if NewTarget.Name == PropHitboxName then
CurrentPriorityTarget = NewTarget
Target = NewTarget
FreezeMob(Target)
else
if not IsValidTarget(Target, CharacterRoot) and IsValidTarget(NewTarget, CharacterRoot) then
Target = NewTarget
FreezeMob(Target)
end
end
end
end

AutoHaki()
EquipWeapon(SelectWeapon)

local TargetRoot = Target:FindFirstChild("HumanoidRootPart")
if not TargetRoot then
break
end

local TargetPosition = TargetRoot.CFrame * CFrame.new(0, AttackHeight, 0)
if (CharacterRoot.Position - TargetPosition.Position).Magnitude > 6 then
topos(TargetPosition)
end

until false
StartBring = DungeonBring ~= false
CurrentPriorityTarget = nil
if AutoFarmDungeon and not GoingToExit and not DeathPause then
if not HasValidTargets() then
GoToExit()
end
end
end)
end
end)

local LastNoTargetTime = 0
local ExitCheckThreshold = 0.9

task.spawn(function()
while task.wait(0.45) do
if not AutoFarmDungeon then continue end

if GoingToExit or DeathPause then
LastNoTargetTime = 0
continue end

if not IsDungeonGamePlace() or not IsDungeonLoaded() then
LastNoTargetTime = 0
continue end

CheckAndRemovePropHitboxes()
local HasTargets = HasValidTargets()

if not HasTargets then
if LastNoTargetTime == 0 then
LastNoTargetTime = tick() end

if tick() - LastNoTargetTime >= ExitCheckThreshold then
GoToExit()
LastNoTargetTime = 0
end else
LastNoTargetTime = 0
end end end)