--ByJeffro and Tetra20
--TFS 1.2

local config = {
["bug"] = {chance = 50000, boss = "Poisonous Bug", msg = "Kreekkk!"}, --50k = 50%
["poisonous bug"] = {chance = 50000, boss = "Black Widow", msg = "Ribbbiitttt!"}, --25k = 25%
}

function onDeath(creature, target, player, corpse, mostDamage)
local random_chance = math.random(100000)
local targetPosition = target:getPosition()
if creature:isMonster() then
local Monster = config[creature:getName():lower()]
if Monster then
if Monster.chance >= random_chance then
target:getPosition():sendMagicEffect(CONST_ME_POFF)
Game.createMonster(Monster.boss:lower(), targetPosition)
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_RED, Monster.msg)
end
end
end
return true
end
     
     
