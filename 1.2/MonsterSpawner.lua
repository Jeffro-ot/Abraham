function onDeath(creature, target, player, corpse, mostDamage)

local minfo = {
name = "Bug",
boss = "Poisonous Bug",
msg = "A Poisonous Bug was summoned in honor of the Bugs death.",
chance = 21,
}

if not creature:isMonster() then return true end

local mres = math.random(0, 100)
if minfo.chance <= mres then return true end

 if creature:getName():lower() == minfo.name:lower() then
   target:getPosition():sendMagicEffect(CONST_ME_POFF)
   local tes = target:getPosition()
   Game.createMonster(minfo.boss, tes)
   player:sendTextMessage(MESSAGE_STATUS_CONSOLE_RED, minfo.msg)
 end
end
