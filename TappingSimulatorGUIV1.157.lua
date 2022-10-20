--Made by MelodyIV for https://www.roblox.com/games/9498006165/HALLOWEEN-Tapping-Simulator
-- Credits to スナイパーアスルタ#3101, Pacifisity#1266, UbiquitousGaming#9383 and Elint#8824 for help making the script <3
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Tapping Simulator Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Script Executed!",
	Content = "DM Melody~#4780 on Discordfor support",
	Image = "rbxassetid://11314801729",
	Time = 5
})

getgenv().Tap = false;
getgenv().Rebirth = false;
getgenv().ClaimRandomReward = false;
getgenv().HatchEgg = false;
getgenv().halloweenTap = false;
getgenv().autoUpgradeRebirths = false;
getgenv().autoGemMultiplierUpgrade = false;
getgenv().autojumps = false;
getgenv().autoStorageUpgrade = false;
local remotePath = game:GetService("ReplicatedStorage").Events;

--auto tapping
function doTap()
    spawn(function() 
        while Tap == true do
            local args = {[1] = 1}
            remotePath.Tap:FireServer(unpack(args))
            wait()
        end
    end)
end
--rebirth upgrade
function autoRebirthUpgrade()
    spawn(function()
        while wait(1) do
            local args = {
            [1] = "rebirthUpgrades"}
            game:GetService("ReplicatedStorage").Events.Upgrade:FireServer(unpack(args))
        end
    end)
end
--gem upgrade
function autoGemMultiplierUpgrade()
    spawn(function()
        while wait(2) do
            local args = {
            [1] = "gemMultiplierUpgrade"}
            game:GetService("ReplicatedStorage").Events.Upgrade:FireServer(unpack(args))
        end
    end)
end
--jump upgrade
function autojumps()
    spawn(function()
        while wait(2) do
            local args = {
            [1] = "jumps"}
            game:GetService("ReplicatedStorage").Events.Upgrade:FireServer(unpack(args))
        end
    end)
end
--storage upgrade
function autoStorageUpgrade()
    spawn(function()
        while wait(2) do
            local args = {
            [1] = "storageUpgrade"}
            game:GetService("ReplicatedStorage").Events.Upgrade:FireServer(unpack(args))
        end
    end)
end

function halloweenTap()
    while getgenv().halloweenTap == true do
        game:GetService("ReplicatedStorage").Events.Tap:FireServer(5)
        wait(0.1)
    end
end
--auto hatch
function buyEgg(eggType)
    spawn(function()
        while HatchEgg == true do
            local args = {[1] = {}, [2] = (eggType), [3] = 1}
            remotePath.HatchEgg:InvokeServer(unpack(args))
            wait()
        end
    end)
end
--get pos
function getCurrentPlayerPOS()
    local plyr = game.Players.localPlayer;
    if plyr.Character then
        return plyr.Character.HumanoidRootPart.Position
    end 
        return false;
end

--tp to starter egg
-- function TeleportTO(placeCFrame)
--     local player = game.Players.localPlayer;
--     if player.Character then
--         player.Character.HumanoidRootPart.CFrame = placeCFrame;
--     end
-- end
-- function teleportShop(shop)
--     if game:GetService("Workspace").Shops:FindFirstChild(shop) then
--         TeleportTO(game:GetService("Workspace").Shops[shop].Part.CFrame)
--     end
-- end
-- teleportShop('Starter')

--tabs
local Tab = Window:MakeTab({
	Name = "Auto Tap",
	Icon = "rbxassetid://5715427612",
	PremiumOnly = false
})
local Eggs = Window:MakeTab({
	Name = "Auto Buy Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Rebirth = Window:MakeTab({
	Name = "Auto Rebirth",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Unlock = Window:MakeTab({
	Name = "Unlock All Islands",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
--auto unlock all islands
Unlock:AddButton({
	Name = "Unlock all Islands",
	Callback = function(bool)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-163.98446655273438, 987.5964965820312, -403.33941650390625) * CFrame.Angles(-0, 0, -0)
    task.wait(0.5) -- Forest
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-179.51564025878906, 1524.6309814453125, -682.4987182617188) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732)
    task.wait(0.5) -- Flower
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-264.35888671875, 2123.06298828125, -694.6613159179688) * CFrame.Angles(3.1415927410125732, -0, -3.1415927410125732)
    task.wait(0.5) -- Swamp
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-201.77197265625, 2944.481689453125, -470.40875244140625) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Snow
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-166.28515625, 4235.38916015625, -779.1531372070312) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Desert
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-276.2012634277344, 5425.62158203125, -480.58778076171875) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Death
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-140.3450927734375, 6881.630859375, -495.68212890625) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Beach
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-243.2586669921875, 8376.5166015625, -483.8897705078125) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Mines
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-253.30348205566406, 11262.8818359375, -237.8885955810547) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Cloud
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-511.0211181640625, 13812.0322265625, -543.2418212890625) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Coral
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-408.697509765625, 17180.538671875, -552.0464477539062) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Darkheart
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1137.614013671875, 170.30052185058594, -2859.725341796875) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Flamelands World
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1280.5958251953125, 2193.828125, -2885.144287109375) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Molten
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1401.12939453125, 5240.41943359375, -2953.919677734375) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Blue Magma
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1319.7027587890625, 7662.02490234375, -2958.0576171875) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Purple Magma
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1403.5440673828125, 10404.09765625, -2903.138427734375) * CFrame.Angles(-3.1415927410125732, 0.7853636741638184, -3.1415927410125732)
    task.wait(0.5) -- Yellow Magma
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1426.2127685546875, 13353.703125, -2900.90087890625) * CFrame.Angles(-3.1415927410125732, 0.7853636741638184, -3.1415927410125732)
    task.wait(0.5) -- Red Magma
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1415.12451171875, 169.6440887451172, -5604.470703125) * CFrame.Angles(0, 1.5707963705062866, 0)
    task.wait(0.5) -- Fantasy World
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1205.412353515625, 2037.730224609375, -5585.404296875) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Mystic Mire
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1216.9140625, 5124.0302734375, -5632.39990234375) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Castle
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1179.677490234375, 8660.728515625, -5587.80517578125) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Candy
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1227.37744140625, 12284.5283203125, -5571.904296875) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Festival
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1189.677734375, 16327.54296875, -5569.50634765625) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Japanese
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1172.019287109375, 147.04409790039062, -7965.728515625) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Space World
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1289.5777587890625, 1874.828125, -7965.40625) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Frost Space
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1291.85, 4951, -7961.14) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Toxic Planet (Small issues)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.3277587890625, 9598.8359375, -7961.65625) * CFrame.Angles(-0, -1.5707963705062866, 0)
    task.wait(0.5) -- Asteroid Space
end})

--autotap gui
Tab:AddToggle({
	Name = "Auto Tap",
	Callback = function(bool)
	Default = false
	    getgenv().Tap = bool
	if bool == true then
	    doTap()
	end
end})
Tab:AddToggle({
	Name = "Halloween Tap",
	Callback = function(bool)
    Default = false
        getgenv().halloweenTap = bool
    if bool == true then
        halloweenTap()
	end    
end})
--auto rebirth 1
function doRebirth1()
    while getgenv().Rebirth == true do
        remotePath.Rebirth:FireServer(1)
        wait(0.1)
    end
end
Rebirth:AddToggle({
	Name = "Auto Rebirth 1",
	Callback = function(bool)
	Default = false
	getgenv().Rebirth = bool
	if bool == true then
	    doRebirth1()
    end
end})
--auto rebirth 5
function doRebirth5()
    while getgenv().Rebirth == true do
        remotePath.Rebirth:FireServer(5)
        wait(0.1)
    end
end
Rebirth:AddToggle({
	Name = "Auto Rebirth 5",
	Callback = function(bool)
	Default = false
	getgenv().Rebirth = bool
	if bool == true then
	    doRebirth5()
    end
end})
--auto rebirth 10
function doRebirth10()
    while getgenv().Rebirth == true do
        remotePath.Rebirth:FireServer(10)
        wait(0.1)
    end
end
Rebirth:AddToggle({
	Name = "Auto Rebirth 10",
	Callback = function(bool)
	Default = false
	getgenv().Rebirth = bool
	if bool == true then
	    doRebirth10()
    end
end})
--auto rebirth 20
function doRebirth20()
    while getgenv().Rebirth == true do
        remotePath.Rebirth:FireServer(20)
        wait(0.1)
    end
end
Rebirth:AddToggle({
	Name = "Auto Rebirth 20",
	Callback = function(bool)
	Default = false
	getgenv().Rebirth = bool
	if bool == true then
	    doRebirth20()
    end
end})
--auto rebirth 100
function doRebirth100()
    while getgenv().Rebirth == true do
        remotePath.Rebirth:FireServer(100)
        wait(0.1)
    end
end
Rebirth:AddToggle({
	Name = "Auto Rebirth 100",
	Callback = function(bool)
	Default = false
	getgenv().Rebirth = bool
	if bool == true then
	    doRebirth100()
    end
end})
--auto rebirth 500
function doRebirth500()
    while getgenv().Rebirth == true do
        remotePath.Rebirth:FireServer(500)
        wait(0.1)
    end
end
Rebirth:AddToggle({
	Name = "Auto Rebirth 500",
	Callback = function(bool)
	Default = false
	getgenv().Rebirth = bool
	if bool == true then
	    doRebirth500()
    end
end})
--auto rebirth 4000
function doRebirth4000()
    while getgenv().Rebirth == true do
        remotePath.Rebirth:FireServer(4000)
        wait(0.1)
    end
end
Rebirth:AddToggle({
	Name = "Auto Rebirth 4000",
	Callback = function(bool)
	Default = false
	getgenv().Rebirth = bool
	if bool == true then
	    doRebirth4000()
    end
end})
--auto rebirth 13500
function doRebirth13500()
    while getgenv().Rebirth == true do
        remotePath.Rebirth:FireServer(13500)
        wait(0.1)
    end
end
Rebirth:AddToggle({
	Name = "Auto Rebirth 13500",
	Callback = function(bool)
	Default = false
	getgenv().Rebirth = bool
	if bool == true then
	    doRebirth13500()
    end
end})
--auto rebirth 32000
function doRebirth32000()
    while getgenv().Rebirth == true do
        remotePath.Rebirth:FireServer(32000)
        wait(0.1)
    end
end
Rebirth:AddToggle({
	Name = "Auto Rebirth 32000",
	Callback = function(bool)
	Default = false
	getgenv().Rebirth = bool
	if bool == true then
	    doRebirth32000()
    end
end})
--auto rebirth 62500
function doRebirth62500()
    while getgenv().Rebirth == true do
        remotePath.Rebirth:FireServer(62500)
        wait(0.1)
    end
end
Rebirth:AddToggle({
	Name = "Auto Rebirth 62500",
	Callback = function(bool)
	Default = false
	getgenv().Rebirth = bool
	if bool == true then
	    doRebirth62500()
    end
end})
--autobuy
Eggs:AddToggle({
	Name = "Starter Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Starter')
    end
end})
Eggs:AddToggle({
	Name = "Jungle Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Jungle Egg')
    end
end})
Eggs:AddToggle({
	Name = "Coral Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Coral Egg')
    end
end})
Eggs:AddToggle({
	Name = "Bee Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Bee Egg')
    end
end})

Eggs:AddToggle({
	Name = "Snow Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Snow Egg')
    end
end})
Eggs:AddToggle({
	Name = "Swamp Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Swamp Egg')
    end
end})
Eggs:AddToggle({
	Name = "Desert Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Desert Egg')
    end
end})
Eggs:AddToggle({
	Name = "Death Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Death Egg')
    end
end})
Eggs:AddToggle({
	Name = "Forest Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Forest Egg')
    end
end})
Eggs:AddToggle({
	Name = "Dominus Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Dominus Egg')
    end
end})
Eggs:AddToggle({
	Name = "Wood Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Wood Egg')
    end
end})
Eggs:AddToggle({
	Name = "Mine Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Mine Egg')
    end
end})
Eggs:AddToggle({
	Name = "BeachEgg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Beach Egg')
    end
end})
Eggs:AddToggle({
	Name = "Dark Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Dark Egg')
    end
end})
Eggs:AddToggle({
	Name = "Cloud Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Cloud Egg')
    end
end})
Eggs:AddToggle({
	Name = "Magma Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Magma Egg')
    end
end})
Eggs:AddToggle({
	Name = "Secret Magma Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Secret Magma Egg')
    end
end})
Eggs:AddToggle({
	Name = "Purple Magma Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Purple Magma Egg')
    end
end})
Eggs:AddToggle({
	Name = "Yellow Magma Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Yellow Magma Egg')
    end
end})
Eggs:AddToggle({
	Name = "Halloween Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Halloween Egg')
    end
end})
Eggs:AddToggle({
	Name = "Candy Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Candy Egg')
    end
end})
Eggs:AddToggle({
	Name = "Flora Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Flora Egg')
    end
end})

Eggs:AddToggle({
	Name = "Holy Wood Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Holy Wood Egg')
    end
end})

Eggs:AddToggle({
	Name = "Holy Bee Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Holy Bee Egg')
    end
end})

Eggs:AddToggle({
	Name = "Holy Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Holy Egg')
    end
end})

Eggs:AddToggle({
	Name = "Castle Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Castle Egg')
    end
end})

Eggs:AddToggle({
	Name = "Asteroid Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Asteroid Egg')
    end
end})

Eggs:AddToggle({
	Name = "Festival Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Festival Egg')
    end
end})

Eggs:AddToggle({
	Name = "Japan Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Japan Egg')
    end
end})

Eggs:AddToggle({
	Name = "Station Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Station Egg')
    end
end})

Eggs:AddToggle({
	Name = "Robo Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Robo Egg')
    end
end})

Eggs:AddToggle({
	Name = "Alien Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Alien Egg')
    end
end})

Eggs:AddToggle({
	Name = "Frost Alien Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Frost Alien Egg')
    end
end})

Eggs:AddToggle({
	Name = "Toxic Alien Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Toxic Alien Egg')
    end
end})

Eggs:AddToggle({
	Name = "55M2 Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('55M2 Egg')
    end
end})

Eggs:AddToggle({
	Name = "Orange Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Orange Egg')
    end
end})

Eggs:AddToggle({
	Name = "Hallow Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Hallow Egg')
    end
end})

Eggs:AddToggle({
	Name = "Spooky Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Spooky Egg')
    end
end})

Eggs:AddToggle({
	Name = "Halloween Dominus Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Halloween Dominus Egg')
    end
end})

Eggs:AddToggle({
	Name = "Pumpkin Egg",
	Callback = function(bool)
	Default = false
	getgenv().HatchEgg = bool
	if bool == true then
	    buyEgg('Pumpkin Egg')
    end
end})
