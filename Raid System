-- Raid System by Jeffro(c) v2.0
-- Finished but not tested
-- Tokens: Silver=5, Gold=15
-- Tokens drop by chance on boss death. Silver=70/300, Gold=30/300 chance



function onUse(cid, item, fromPosition, itemEx, toPosition, isHotkey)


local config = {spawnpos = (x = 0, y = 0, z = 0),
exhaustion = 60, exstorage = 0000,
cost = 30, cstorage = 0000,
lever = {west = 1945, east = 1946}, -- West=First State,How it looks in map editor. East=After used
monsters = {"Demon", "Rabbit"} -- List the monsters that will be spawned
}

local pickmonster = math.random(#config.monsters) -- Randomly picks the monster

if item.itemid == config.lever.west then -- When lever is pulled, it will make sure it's a lever
	if getPlayerStorageValue(config.exstorage) == 0 and getPlayerStorageValue(config.cstorage) == config.cost then -- Will check if timer is working, if is, must wait, then checks if player has enough raid points
		doSummonCreature(pickmonster, config.spawnpos) -- Summons creature, then pickmonster is declared above as math function to randomly pick a monster to summon, and at a certain position
		setPlayerStorageValue(cstorage, -cost) -- Will remove the cost required for this raid
		doTransformItem(item.uniqueid, config.east)	 -- This is useless, but will transform the lever so it flips, but there is a script made to automatically do this
	else
		doPlayerSendCancel("\"Must wait 15 minutes before using again.\"\nCost To Use Raid: " .. config.cost .. "\nCurrent Balance: " .. getPlayerStorageValue(cstorage)) -- If player has used the raid in the past ten minutes or doesn't have enough points, will send cancle message
end
return true
end
