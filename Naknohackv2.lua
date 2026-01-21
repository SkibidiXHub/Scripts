local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()

local Window = redzlib:MakeWindow({
  Title = "Nak Hub : Blox Fruits",
  SubTitle = "by real_nak",
  SaveFolder = "Redz | redz lib v5.lua"
})

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://83190276951914", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0, 5) },
})

local Tab = Window:MakeTab({"Discord", "info"})

Tab:AddDiscordInvite({
    Name = "redz Hub | Community",
    Description = "Join our discord community to receive information about the next update",
    Logo = "rbxassetid://95105936784502",
    Invite = "http://discord.gg/7aR7kNVt4g",
})

-- Phần TabFarm


local Section = TabFarm:AddSection({"Cày Cấp"})

-- 🌍 XÁC ĐỊNH WORLD
local World1, World2, World3 = false, false, false
if game.PlaceId == 2753915549 then
	World1 = true
elseif game.PlaceId == 4442272183 then
	World2 = true
elseif game.PlaceId == 7449423635 then
	World3 = true
end

-- ⚙️ CÀI ĐẶT MODE FARM
_G.FarmMode = _G.FarmMode or "Quest" -- Quest | Normal | Nearest

-- 📋 CHECK QUEST
local Mon, LevelQuest, NameQuest, NameMon, CFrameQuest, CFrameMon
function CheckQuest()
	local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
	if World1 then
		if MyLevel >= 1 and MyLevel <= 9 then
			Mon = "Bandit"
			LevelQuest = 1
			NameQuest = "BanditQuest1"
			NameMon = "Bandit"
			CFrameQuest = CFrame.new(1059.37, 15.44, 1550.42)
			CFrameMon = CFrame.new(1045.96, 27.00, 1560.82)
		elseif MyLevel == 10 or MyLevel <= 14 then
			Mon = "Monkey";
			LevelQuest = 1;
			NameQuest = "JungleQuest";
			NameMon = "Monkey";
			CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209);
		elseif MyLevel == 15 or MyLevel <= 29 then
			Mon = "Gorilla";
			LevelQuest = 2;
			NameQuest = "JungleQuest";
			NameMon = "Gorilla";
			CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875);
		elseif MyLevel == 30 or MyLevel <= 39 then
			Mon = "Pirate";
			LevelQuest = 1;
			NameQuest = "BuggyQuest1";
			NameMon = "Pirate";
			CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627);
			CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125);
		elseif MyLevel == 40 or MyLevel <= 59 then
			Mon = "Brute";
			LevelQuest = 2;
			NameQuest = "BuggyQuest1";
			NameMon = "Brute";
			CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627);
			CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875);
		elseif MyLevel == 60 or MyLevel <= 74 then
			Mon = "Desert Bandit";
			LevelQuest = 1;
			NameQuest = "DesertQuest";
			NameMon = "Desert Bandit";
			CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693);
			CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375);
		elseif MyLevel == 75 or MyLevel <= 89 then
			Mon = "Desert Officer";
			LevelQuest = 2;
			NameQuest = "DesertQuest";
			NameMon = "Desert Officer";
			CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693);
			CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875);
		elseif MyLevel == 90 or MyLevel <= 99 then
			Mon = "Snow Bandit";
			LevelQuest = 1;
			NameQuest = "SnowQuest";
			NameMon = "Snow Bandit";
			CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685);
			CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125);
		elseif MyLevel == 100 or MyLevel <= 119 then
			Mon = "Snowman";
			LevelQuest = 2;
			NameQuest = "SnowQuest";
			NameMon = "Snowman";
			CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685);
			CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625);
		elseif MyLevel == 120 or MyLevel <= 149 then
			Mon = "Chief Petty Officer";
			LevelQuest = 1;
			NameQuest = "MarineQuest2";
			NameMon = "Chief Petty Officer";
			CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625);
		elseif MyLevel == 150 or MyLevel <= 174 then
			Mon = "Sky Bandit";
			LevelQuest = 1;
			NameQuest = "SkyQuest";
			NameMon = "Sky Bandit";
			CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268);
			CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625);
		elseif MyLevel == 175 or MyLevel <= 189 then
			Mon = "Dark Master";
			LevelQuest = 2;
			NameQuest = "SkyQuest";
			NameMon = "Dark Master";
			CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268);
			CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625);
		elseif MyLevel == 190 or MyLevel <= 209 then
			Mon = "Prisoner";
			LevelQuest = 1;
			NameQuest = "PrisonerQuest";
			NameMon = "Prisoner";
			CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -0.00000000500292918, -0.995993316, 0.00000000160817859, 1, -0.00000000516744869, 0.995993316, -0.00000000206384709, -0.0894274712);
			CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781);
		elseif MyLevel == 210 or MyLevel <= 249 then
			Mon = "Dangerous Prisoner";
			LevelQuest = 2;
			NameQuest = "PrisonerQuest";
			NameMon = "Dangerous Prisoner";
			CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -0.00000000500292918, -0.995993316, 0.00000000160817859, 1, -0.00000000516744869, 0.995993316, -0.00000000206384709, -0.0894274712);
			CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375);
		elseif MyLevel == 250 or MyLevel <= 274 then
			Mon = "Toga Warrior";
			LevelQuest = 1;
			NameQuest = "ColosseumQuest";
			NameMon = "Toga Warrior";
			CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298);
			CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625);
		elseif MyLevel == 275 or MyLevel <= 299 then
			Mon = "Gladiator";
			LevelQuest = 2;
			NameQuest = "ColosseumQuest";
			NameMon = "Gladiator";
			CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298);
			CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625);
		elseif MyLevel == 300 or MyLevel <= 324 then
			Mon = "Military Soldier";
			LevelQuest = 1;
			NameQuest = "MagmaQuest";
			NameMon = "Military Soldier";
			CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469);
			CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875);
		elseif MyLevel == 325 or MyLevel <= 374 then
			Mon = "Military Spy";
			LevelQuest = 2;
			NameQuest = "MagmaQuest";
			NameMon = "Military Spy";
			CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469);
			CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375);
		elseif MyLevel == 375 or MyLevel <= 399 then
			Mon = "Fishman Warrior";
			LevelQuest = 1;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Warrior";
			CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
			CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
			end;
		elseif MyLevel == 400 or MyLevel <= 449 then
			Mon = "Fishman Commando";
			LevelQuest = 2;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Commando";
			CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
			CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
			end;
		elseif MyLevel == 450 or MyLevel <= 474 then
			Mon = "God's Guard";
			LevelQuest = 1;
			NameQuest = "SkyExp1Quest";
			NameMon = "God's Guard";
			CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859);
			CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688));
			end;
		elseif MyLevel == 475 or MyLevel <= 524 then
			Mon = "Shanda";
			LevelQuest = 2;
			NameQuest = "SkyExp1Quest";
			NameMon = "Shanda";
			CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998);
			CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047));
			end;
		elseif MyLevel == 525 or MyLevel <= 549 then
			Mon = "Royal Squad";
			LevelQuest = 1;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Squad";
			CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875);
		elseif MyLevel == 550 or MyLevel <= 624 then
			Mon = "Royal Soldier";
			LevelQuest = 2;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Soldier";
			CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625);
		elseif MyLevel == 625 or MyLevel <= 649 then
			Mon = "Galley Pirate";
			LevelQuest = 1;
			NameQuest = "FountainQuest";
			NameMon = "Galley Pirate";
			CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381);
			CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875);
		elseif MyLevel >= 650 then
			Mon = "Galley Captain";
			LevelQuest = 2;
			NameQuest = "FountainQuest";
			NameMon = "Galley Captain";
			CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381);
			CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375);
		end;
	elseif World2 then
		if MyLevel >= 700 and MyLevel <= 724 then
			Mon = "Raider"
			LevelQuest = 1
			NameQuest = "Area1Quest"
			NameMon = "Raider"
			CFrameQuest = CFrame.new(-429.54, 71.76, 1836.18)
			CFrameMon = CFrame.new(-728.32, 52.77, 2345.77)
		elseif MyLevel == 725 or MyLevel <= 774 then
			Mon = "Mercenary";
			LevelQuest = 2;
			NameQuest = "Area1Quest";
			NameMon = "Mercenary";
			CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985);
			CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625);
		elseif MyLevel == 775 or MyLevel <= 799 then
			Mon = "Swan Pirate";
			LevelQuest = 1;
			NameQuest = "Area2Quest";
			NameMon = "Swan Pirate";
			CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906);
			CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625);
		elseif MyLevel == 800 or MyLevel <= 874 then
			Mon = "Factory Staff";
			NameQuest = "Area2Quest";
			LevelQuest = 2;
			NameMon = "Factory Staff";
			CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 0.000000000896074881, -0.999488771, 0.000000000136326533, 1, 0.000000000892172336, 0.999488771, -0.000000000107732087, -0.0319722369);
			CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875);
		elseif MyLevel == 875 or MyLevel <= 899 then
			Mon = "Marine Lieutenant";
			LevelQuest = 1;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Lieutenant";
			CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268);
			CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125);
		elseif MyLevel == 900 or MyLevel <= 949 then
			Mon = "Marine Captain";
			LevelQuest = 2;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Captain";
			CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268);
			CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625);
		elseif MyLevel == 950 or MyLevel <= 974 then
			Mon = "Zombie";
			LevelQuest = 1;
			NameQuest = "ZombieQuest";
			NameMon = "Zombie";
			CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146);
			CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875);
		elseif MyLevel == 975 or MyLevel <= 999 then
			Mon = "Vampire";
			LevelQuest = 2;
			NameQuest = "ZombieQuest";
			NameMon = "Vampire";
			CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146);
			CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625);
		elseif MyLevel == 1000 or MyLevel <= 1049 then
			Mon = "Snow Trooper";
			LevelQuest = 1;
			NameQuest = "SnowMountainQuest";
			NameMon = "Snow Trooper";
			CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106);
			CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875);
		elseif MyLevel == 1050 or MyLevel <= 1099 then
			Mon = "Winter Warrior";
			LevelQuest = 2;
			NameQuest = "SnowMountainQuest";
			NameMon = "Winter Warrior";
			CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106);
			CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625);
		elseif MyLevel == 1100 or MyLevel <= 1124 then
			Mon = "Lab Subordinate";
			LevelQuest = 1;
			NameQuest = "IceSideQuest";
			NameMon = "Lab Subordinate";
			CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578);
			CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375);
		elseif MyLevel == 1125 or MyLevel <= 1174 then
			Mon = "Horned Warrior";
			LevelQuest = 2;
			NameQuest = "IceSideQuest";
			NameMon = "Horned Warrior";
			CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578);
			CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375);
		elseif MyLevel == 1175 or MyLevel <= 1199 then
			Mon = "Magma Ninja";
			LevelQuest = 1;
			NameQuest = "FireSideQuest";
			NameMon = "Magma Ninja";
			CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375);
		elseif MyLevel == 1200 or MyLevel <= 1249 then
			Mon = "Lava Pirate";
			LevelQuest = 2;
			NameQuest = "FireSideQuest";
			NameMon = "Lava Pirate";
			CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875);
		elseif MyLevel == 1250 or MyLevel <= 1274 then
			Mon = "Ship Deckhand";
			LevelQuest = 1;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Deckhand";
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016);
			CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif MyLevel == 1275 or MyLevel <= 1299 then
			Mon = "Ship Engineer";
			LevelQuest = 2;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Engineer";
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016);
			CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif MyLevel == 1300 or MyLevel <= 1324 then
			Mon = "Ship Steward";
			LevelQuest = 1;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Steward";
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125);
			CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif MyLevel == 1325 or MyLevel <= 1349 then
			Mon = "Ship Officer";
			LevelQuest = 2;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Officer";
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125);
			CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif MyLevel == 1350 or MyLevel <= 1374 then
			Mon = "Arctic Warrior";
			LevelQuest = 1;
			NameQuest = "FrostQuest";
			NameMon = "Arctic Warrior";
			CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909);
			CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125);
			if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422));
			end;
		elseif MyLevel == 1375 or MyLevel <= 1424 then
			Mon = "Snow Lurker";
			LevelQuest = 2;
			NameQuest = "FrostQuest";
			NameMon = "Snow Lurker";
			CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909);
			CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375);
		elseif MyLevel == 1425 or MyLevel <= 1449 then
			Mon = "Sea Soldier";
			LevelQuest = 1;
			NameQuest = "ForgottenQuest";
			NameMon = "Sea Soldier";
			CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376);
			CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125);
		elseif MyLevel >= 1450 then
			Mon = "Water Fighter";
			LevelQuest = 2;
			NameQuest = "ForgottenQuest";
			NameMon = "Water Fighter";
			CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376);
			CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875);
		end;
	elseif World3 then
		if MyLevel >= 1500 and MyLevel <= 1524 then
			Mon = "Pirate Millionaire"
			LevelQuest = 1
			NameQuest = "PiratePortQuest"
			NameMon = "Pirate Millionaire"
			CFrameQuest = CFrame.new(-290.07, 42.90, 5581.58)
			CFrameMon = CFrame.new(-245.99, 47.30, 5584.10)
		elseif MyLevel == 1525 or MyLevel <= 1574 then
			Mon = "Pistol Billionaire";
			LevelQuest = 2;
			NameQuest = "PiratePortQuest";
			NameMon = "Pistol Billionaire";
			CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627);
			CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875);
		elseif MyLevel == 1575 or MyLevel <= 1599 then
			Mon = "Dragon Crew Warrior";
			LevelQuest = 1;
			NameQuest = "AmazonQuest";
			NameMon = "Dragon Crew Warrior";
			CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359);
			CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625);
		elseif MyLevel == 1600 or MyLevel <= 1624 then
			Mon = "Dragon Crew Archer [Lv. 1600]";
			NameQuest = "AmazonQuest";
			LevelQuest = 2;
			NameMon = "Dragon Crew Archer";
			CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375);
			CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125);
		elseif MyLevel == 1625 or MyLevel <= 1649 then
			Mon = "Female Islander";
			NameQuest = "AmazonQuest2";
			LevelQuest = 1;
			NameMon = "Female Islander";
			CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422);
			CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312);
		elseif MyLevel == 1650 or MyLevel <= 1699 then
			Mon = "Giant Islander [Lv. 1650]";
			NameQuest = "AmazonQuest2";
			LevelQuest = 2;
			NameMon = "Giant Islander";
			CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422);
			CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508);
		elseif MyLevel == 1700 or MyLevel <= 1724 then
			Mon = "Marine Commodore";
			LevelQuest = 1;
			NameQuest = "MarineTreeIsland";
			NameMon = "Marine Commodore";
			CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747);
			CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125);
		elseif MyLevel == 1725 or MyLevel <= 1774 then
			Mon = "Marine Rear Admiral [Lv. 1725]";
			NameMon = "Marine Rear Admiral";
			NameQuest = "MarineTreeIsland";
			LevelQuest = 2;
			CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813);
			CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125);
		elseif MyLevel == 1775 or MyLevel <= 1799 then
			Mon = "Fishman Raider";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Raider";
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625);
		elseif MyLevel == 1800 or MyLevel <= 1824 then
			Mon = "Fishman Captain";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Captain";
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625);
		elseif MyLevel == 1825 or MyLevel <= 1849 then
			Mon = "Forest Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland";
			NameMon = "Forest Pirate";
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247);
			CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625);
		elseif MyLevel == 1850 or MyLevel <= 1899 then
			Mon = "Mythological Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland";
			NameMon = "Mythological Pirate";
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247);
			CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125);
		elseif MyLevel == 1900 or MyLevel <= 1924 then
			Mon = "Jungle Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland2";
			NameMon = "Jungle Pirate";
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002);
			CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625);
		elseif MyLevel == 1925 or MyLevel <= 1974 then
			Mon = "Musketeer Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland2";
			NameMon = "Musketeer Pirate";
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002);
			CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375);
		elseif MyLevel == 1975 or MyLevel <= 1999 then
			Mon = "Reborn Skeleton";
			LevelQuest = 1;
			NameQuest = "HauntedQuest1";
			NameMon = "Reborn Skeleton";
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625);
		elseif MyLevel == 2000 or MyLevel <= 2024 then
			Mon = "Living Zombie";
			LevelQuest = 2;
			NameQuest = "HauntedQuest1";
			NameMon = "Living Zombie";
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875);
		elseif MyLevel == 2025 or MyLevel <= 2049 then
			Mon = "Demonic Soul";
			LevelQuest = 1;
			NameQuest = "HauntedQuest2";
			NameMon = "Demonic Soul";
			CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625);
		elseif MyLevel == 2050 or MyLevel <= 2074 then
			Mon = "Posessed Mummy";
			LevelQuest = 2;
			NameQuest = "HauntedQuest2";
			NameMon = "Posessed Mummy";
			CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625);
		elseif MyLevel == 2075 or MyLevel <= 2099 then
			Mon = "Peanut Scout";
			LevelQuest = 1;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut Scout";
			CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875);
		elseif MyLevel == 2100 or MyLevel <= 2124 then
			Mon = "Peanut President";
			LevelQuest = 2;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut President";
			CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875);
		elseif MyLevel == 2125 or MyLevel <= 2149 then
			Mon = "Ice Cream Chef";
			LevelQuest = 1;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Chef";
			CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125);
		elseif MyLevel == 2150 or MyLevel <= 2199 then
			Mon = "Ice Cream Commander";
			LevelQuest = 2;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Commander";
			CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625);
		elseif MyLevel == 2200 or MyLevel <= 2224 then
			Mon = "Cookie Crafter";
			LevelQuest = 1;
			NameQuest = "CakeQuest1";
			NameMon = "Cookie Crafter";
			CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -0.0000000880302053, 0.288177818, 0.000000069301187, 1, 0.0000000751931211, -0.288177818, -0.000000052032135, 0.957576931);
			CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375);
		elseif MyLevel == 2225 or MyLevel <= 2249 then
			Mon = "Cake Guard";
			LevelQuest = 2;
			NameQuest = "CakeQuest1";
			NameMon = "Cake Guard";
			CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -0.0000000880302053, 0.288177818, 0.000000069301187, 1, 0.0000000751931211, -0.288177818, -0.000000052032135, 0.957576931);
			CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875);
		elseif MyLevel == 2250 or MyLevel <= 2274 then
			Mon = "Baking Staff";
			LevelQuest = 1;
			NameQuest = "CakeQuest2";
			NameMon = "Baking Staff";
			CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 0.0000000422142143, 0.250778586, 0.0000000474911062, 1, 0.0000000149904711, -0.250778586, 0.0000000264211941, -0.96804446);
			CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375);
		elseif MyLevel == 2275 or MyLevel <= 2299 then
			Mon = "Head Baker";
			LevelQuest = 2;
			NameQuest = "CakeQuest2";
			NameMon = "Head Baker";
			CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 0.0000000422142143, 0.250778586, 0.0000000474911062, 1, 0.0000000149904711, -0.250778586, 0.0000000264211941, -0.96804446);
			CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125);
		elseif MyLevel == 2300 or MyLevel <= 2324 then
			Mon = "Cocoa Warrior";
			LevelQuest = 1;
			NameQuest = "ChocQuest1";
			NameMon = "Cocoa Warrior";
			CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375);
			CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125);
		elseif MyLevel == 2325 or MyLevel <= 2349 then
			Mon = "Chocolate Bar Battler";
			LevelQuest = 2;
			NameQuest = "ChocQuest1";
			NameMon = "Chocolate Bar Battler";
			CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375);
			CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375);
		elseif MyLevel == 2350 or MyLevel <= 2374 then
			Mon = "Sweet Thief";
			LevelQuest = 1;
			NameQuest = "ChocQuest2";
			NameMon = "Sweet Thief";
			CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875);
			CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625);
		elseif MyLevel == 2375 or MyLevel <= 2399 then
			Mon = "Candy Rebel";
			LevelQuest = 2;
			NameQuest = "ChocQuest2";
			NameMon = "Candy Rebel";
			CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875);
			CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625);
		elseif MyLevel == 2400 or MyLevel <= 2424 then
			Mon = "Candy Pirate";
			LevelQuest = 1;
			NameQuest = "CandyQuest1";
			NameMon = "Candy Pirate";
			CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375);
			CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875);
		elseif MyLevel == 2425 or MyLevel <= 2449 then
			Mon = "Snow Demon";
			LevelQuest = 2;
			NameQuest = "CandyQuest1";
			NameMon = "Snow Demon";
			CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375);
			CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375);
		elseif MyLevel == 2450 or MyLevel <= 2474 then
			Mon = "Isle Outlaw";
			LevelQuest = 1;
			NameQuest = "TikiQuest1";
			NameMon = "Isle Outlaw";
			CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812);
			CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656);
		elseif MyLevel == 2475 or MyLevel <= 2524 then
			Mon = "Island Boy";
			LevelQuest = 2;
			NameQuest = "TikiQuest1";
			NameMon = "Island Boy";
			CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812);
			CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562);
		elseif MyLevel == 2525 or MyLevel <= 2550 then
			Mon = "Isle Champion";
			LevelQuest = 2;
			NameQuest = "TikiQuest2";
			NameMon = "Isle Champion";
			CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625);
			CFrameMon = CFrame.new(-16641.6796875, 235.7825469970703, 1031.282958984375);
		end;
	end;
end;

------------------------------------------------
-- ⚔️ VŨ KHÍ
------------------------------------------------
local WeaponList = {"Melee", "Sword", "Fruit", "Gun"}
_G.SelectWeapon = _G.SelectWeapon or "Melee"

TabFarm:AddDropdown({
	Name = "Chọn Vũ Khí",
	Options = WeaponList,
	Default = _G.SelectWeapon,
	Callback = function(Value)
		_G.SelectWeapon = Value
	end
})

task.spawn(function()
	while task.wait(1) do
		pcall(function()
			for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") and v.ToolTip == _G.SelectWeapon then
					_G.SelectWeapon = v.Name
				end
			end
		end)
	end
end)

local Tab2 = Window:MakeTab({"Farm", "home"})

local Dropdown = Tab2:AddDropdown({
  Name = "Chọn Công Cụ",
  Description = "Chọn công cụ bạn muốn sử dụng",
  Options = {"Melee", "Blox Fruit", "Sword"},
  Default = "Melee",
  Flag = "Melee",
  Callback = function()
    
  end
})

local Dropdown = Tab2:AddDropdown({
  Name = "Kích Thước Ui",
  Description = "Điều chỉnh kích thước giao diện",
  Options = {"Small", "Medium", "Large", "Bigger"},
  Default = "Large",
  Flag = "Large",
  Callback = function()
    
  end
})

local Section = Tab2:AddSection({"Farm"})

Tab2:AddToggle({
    Name = "Tự Động lên cấp",
    Description = "Tự động farm cấp",
    Default = false,
    Callback = function(v)
        _G.AutoFarm = v
		if v then
			CheckQuest()
			EnableNoclip(true)
		else
			StopFlying()
			EnableNoclip(false)
		end
	end
})

task.spawn(function()
	while task.wait(0.15) do
		pcall(function()
			if not _G.AutoFarm then return end
			CheckQuest()

			local plr = game.Players.LocalPlayer
			local char = plr.Character
			local hrp = char and char:FindFirstChild("HumanoidRootPart")
			if not hrp then return end

			local questUI = plr.PlayerGui and plr.PlayerGui.Main and plr.PlayerGui.Main.Quest
			local hasQuest = questUI and questUI.Visible
			local questTitle = hasQuest and questUI.Container.QuestTitle.Title.Text or ""

			-- 🟢 QUEST MODE
			if _G.FarmMode == "Quest" then
				if not hasQuest or (NameMon and not string.find(questTitle, NameMon)) then
					game.ReplicatedStorage.Remotes.CommF_:InvokeServer("AbandonQuest")
					task.wait(0.3)
					FlyTo(CFrameQuest)
					task.wait(0.7)
					game.ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
					return
				end
			end

			-- 🟡 TÌM QUÁI
			local EnemyFolder = workspace:FindFirstChild("Enemies")
			local Enemy = nil
			if EnemyFolder then
				if _G.FarmMode == "Nearest" then
					local shortest = math.huge
					for _,v in pairs(EnemyFolder:GetChildren()) do
						if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							local dist = (v.HumanoidRootPart.Position - hrp.Position).Magnitude
							if dist < shortest then
								shortest = dist
								Enemy = v
							end
						end
					end
				else
					for _,v in pairs(EnemyFolder:GetChildren()) do
						if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							if string.find(string.lower(v.Name), string.lower(Mon or "")) then
								Enemy = v
								break
							end
						end
					end
				end
			end

			-- 🧭 XỬ LÝ BAY + ĐÁNH
			if Enemy then
				FlyTo(CFrame.new(Enemy.HumanoidRootPart.Position))
				EquipWeapon(_G.SelectWeapon)
				AutoHaki()
				DoAttack()
			elseif CFrameMon then
				-- 💤 KHÔNG CÓ QUÁI: BAY LƠ LỬNG NGHỈ
				FlyTo(CFrameMon)
			end
		end)
	end
end)







Tab2:AddToggle({
    Name = "Farm Kẻ Địch Gần",
    Description = "Tự động tiêu diệt kẻ địch gần nhất",
    Default = false,
    Callback = function()

    end
})

Tab2:AddToggle({
    Name = "Farm Hải Tặc Biển",
    Description = "Tự động hoàn thành sự kiện hải tặc ở Castelo do Mar",
    Default = false,
    Callback = function()

    end
})


local Section = Tab2:AddSection({"Xương"})

Tab2:AddToggle({
    Name = "Farm Xương",
    Description = "Tự động farm xương",
    Default = false,
    Callback = function()

    end
})

Tab2:AddToggle({
    Name = "Tự Động Soul Reaper",
    Description = "Triệu hồi và tiêu diệt Soul Reaper",
    Default = false,
    Callback = function()

    end
})

Tab2:AddToggle({
    Name = "Đổi Xương",
    Description = "Tự động đổi xương lấy phần thưởng",
    Default = false,
    Callback = function()

    end
})

local Section = Tab2:AddSection({"Rương"})

Tab2:AddToggle({
    Name = "Tự Động Rương [ Tween ]",
    Description = "Tự động mở rương bằng tween",
    Default = false,
    Callback = function()

    end
})

local Section = Tab2:AddSection({"Boss"})

Tab2:AddButton({
    Name = "Cập Nhật Boss",
    Description = "Làm mới danh sách boss",
    Default = false,
    Callback = function()

    end
})

local Dropdown = Tab2:AddDropdown({
  Name = "Danh Sách Boss",
  Description = "Chọn boss để tấn công",
  Options = {"Boss1", "Boss2", "Boss3"},
  Default = "nil",
  Flag = "nil",
  Callback = function()
    
  end
})

Tab2:AddToggle({
    Name = "Giết Boss Đã Chọn",
    Description = "Tự động tấn công boss đã chọn",
    Default = false,
    Callback = function()

    end
})

Tab2:AddToggle({
    Name = "Farm Tất Cả Boss",
    Description = "Tự động tấn công mọi boss có sẵn",
    Default = false,
    Callback = function()

    end
})

Tab2:AddToggle({
    Name = "Nhận Nhiệm Vụ Boss",
    Description = "Tự động nhận nhiệm vụ boss",
    Default = true,
    Callback = function()

    end
})

local Section = Tab2:AddSection({"Material"})

local Dropdown = Tab2:AddDropdown({
  Name = "Danh Sách Nguyên Liệu",
  Description = "Chọn boss để tấn công",
  Options = {"Nguyên Liệu1", "Nguyên Liệu2", "Nguyên Liệu3"},
  Default = "nil",
  Flag = "nil",
  Callback = function()
    
  end
})

Tab2:AddToggle({
    Name = "Farm Nguyên Liệu",
    Description = "Tự động farm nguyên liệu",
    Default = false,
    Callback = function()

    end
})

local Section = Tab2:AddSection({"Mastery"})

Tab2:AddSlider({
  Name = "Chọn Máu Kẻ Địch [ % ]",
  Description = "Thiết lập phần trăm máu kẻ địch để tấn công",
  Min = 10,
  Max = 100,
  Increase = 1,
  Default = 16,
  Callback = function()
  
  end
})

local Dropdown = Tab2:AddDropdown({
  Name = "Chọn Công Cụ",
  Description = "Chọn công cụ bạn muốn sử dụng",
  Options = {"Blox Fruit", "Gun"},
  Default = "Blox Fruit",
  Flag = "Blox Fruit",
  Callback = function()
    
  end
})

local Dropdown = Tab2:AddDropdown({
  Name = "Chọn Kỹ Năng",
  Description = "Chọn kỹ năng để sử dụng",
  Options = {"Z", "X", "C", "V", "F"},
  Default = "Z",
  Flag = "Z",
  Callback = function()
    
  end
})

Tab2:AddToggle({
    Name = "Farm Thông Thạo",
    Description = "Tăng thành thạo kỹ năng tự động",
    Default = false,
    Callback = function()

    end
})




local Tab3 = Window:MakeTab({"Nhiệm Vụ/Vật Phẩm", "swords"})

local Section = Tab3:AddSection({"Dragon Dojo"})

Tab3:AddToggle({
    Name = "Nhiệm Vụ Dojo",
    Description = "Tự động hoàn thành nhiệm vụ đai",
    Default = false,
    Callback = function()

    end
})

Tab3:AddToggle({
    Name = "Nhiệm Vụ Dragon Hunter",
    Description = "Mỗi nhiệm vụ hoàn thành nhận 'Blaze Ember'",
    Default = false,
    Callback = function()

    end
})

Tab3:AddToggle({
    Name = "Auto Draco V2 & V3",
    Description = "Tự động lên cấp Draco V2 và V3",
    Default = false,
    Callback = function()

    end
})
















local Tab4 = Window:MakeTab({"Trái/Đột Kích", "cherry"})

local Tab5 = Window:MakeTab({"Stats", "signal"})

local Tab6 = Window:MakeTab({"Dịch Chuyển", "locate"})

local Tab7 = Window:MakeTab({"Giao Diện", "user"})

local Tab8 = Window:MakeTab({"Cửa Hàng", "shoppingCart"})

local Tab9 = Window:MakeTab({"Khác", "settings"})


