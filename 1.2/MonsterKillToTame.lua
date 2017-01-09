--Monster Kill to Tame
--NOT TESTED

--TFS 1.2 Jeffro
--v1.0
--Works with monster name, no parameter to be added

--Script Start
local config = {
	["Sheep"] = {chance = 25, mountid = 170}, --FINISH
	}
	
	--Function Begin
function onKill(player, target, lasthit)
	local monster = config[creature:getName()]
	
	--Check target is monster
	if not target.isMonster() then
		return false
	end
	
	--Check if monster in config
	if not (config[creature:getName()]) then
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
	
	--Add Mount
	player:addMount(monster.mountid)
	return true
end
