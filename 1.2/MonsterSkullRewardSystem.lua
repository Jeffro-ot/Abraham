--Monster Skull Reward NOT TESTED
--Works with monster name, if skull parameter will be added NOT TESTED
--TFS 1.2 Jeffro NOT TESTED
--v0.1 NOT TESTED

--Script Start NOT TESTED

--Both false will add item to player
local moncorpse = true --Add to monster corpse
local todepo = false --Sends to depo inbox
local config = {
	["Goblin"] = {
		chance = 25,
		loot = {{2160,1,3}}, --{itemid,min,max}
		message = "You earned # @ for killing a skulled creature.",
	},
  }

	--Function Begin
function onKill(player, target, lasthit)
	local monster = config[creature:getName()]
	
	--Check target is monster
	if not target.isMonster() then
		return false
	end
	
	--Check if monster in config
	if not (config[creature:getName()) then
		return false
	end
	
	--Chance Equation
	--25 is 12.5%, 25/200
	local a = math.random(100)
	local b = math.random(100)
	local c = monster.chance/2 --
	if ((a + c) > b) or ((a - c) < b) then
		return true
	end
	
	--Add Item
	for i = 1, #monster.loot do
		local itemcount = math.random(monster.loot[i][2], monster.loot[i][3])
		if moncorpse then
			--Need to finish
			return true
		elseif todepo then
			--Need to finish
			return true
		else
			player:addItem(monster.loot[i][1], itemcount)
			return true
		end
		return true
	end
	
	--Script Finished
	return true
end
