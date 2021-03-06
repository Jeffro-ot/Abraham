-- Effects in this table are used for looking at the monster --
--Jeffro: will convert to 1.2 somedayf

local t = {
['rotworm'] = {Summon = 'Trainer', Time = 5, ID = 2160, Min = 1, Max = 100, Color = TEXTCOLOR_LIGHTBLUE, Effect = CONST_ME_MAGIC_BLUE},
['cat'] = {Summon = 'Wolf', Time = 5, ID = 10571, Min = 1, Max = 100, Color = TEXTCOLOR_YELLOW, Effect = CONST_ME_STUN}
}

function onDeath(creature, target, damage, flags)
local p = Creature.getPosition(target)
local r = {x=p.x, y=p.y, z=p.z, stackpos = 253}

function sendCountdown(n, pos, startEffect, startEffect2, randEffect, color)
if n == 1 then
    doSendMagicEffect(pos, startEffect)
    doSendMagicEffect(pos, startEffect2)
    doSendAnimatedText(pos, '5', color)
    doSendMagicEffect(pos, randEffect)
elseif n == 2 then
    doSendAnimatedText(pos, '4', color)
    doSendMagicEffect(pos, randEffect)
elseif n == 3 then
    doSendAnimatedText(pos, '3', color)
    doSendMagicEffect(pos, randEffect)
elseif n == 4 then
    doSendAnimatedText(pos, '2', color)
    doSendMagicEffect(pos, randEffect)
elseif n == 5 then
    doSendAnimatedText(pos, '1', color)
    doSendMagicEffect(pos, randEffect)
    end
end

function removeCreature(creature, target, pos)
    if cid then
        doTeleportThing(cid, getClosestFreeTile(cid, getCreaturePosition(cid), false, true))
    end
    if isMonster(getThingfromPos(pos).uid) then
        doSendMagicEffect(pos, CONST_ME_POFF)
        doRemoveCreature(getThingfromPos(pos).uid)
    end
end

-- Spawn creature --
for k,v in pairs(t) do
    if k == getCreatureName(target):lower() then
        doSendMagicEffect(p, CONST_ME_FIREATTACK)
        doCreateMonster(v.Summon, p, false, true)
        addEvent(removeCreature, v.Time*1000, cid, r)
            for i = 1, 5 do
                addEvent(sendCountdown, i * 1000, i, r, 55, 56, math.random(1,32) or math.random(34,54), 180)
            end
        end
    end
return true
end


function onLook(thing, position, lookDistance)
-- Remove creature & give item when looked at -- 
for k,v in pairs(t) do
local amount = math.random(v.Min, v.Max)
    if isMonster(thing.uid) then
            if v.Summon == getCreatureName(thing.uid):lower() or v.Summon == getCreatureName(thing.uid) then
                doSendMagicEffect(position, v.Effect)
                if isItemStackable(v.ID) then
                    if getItemPluralNameById(v.ID) then
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, '['.. amount ..'] '.. getItemPluralNameById(v.ID) ..' collected.')
                        doSendAnimatedText(position, '+ '.. amount ..'', v.Color)
                        doRemoveCreature(thing.uid, true)
                        doPlayerGiveItem(cid, v.ID, amount)
                    elseif getItemPluralNameById(v.ID) == false then
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, '['.. amount ..'] '.. getItemNameById(v.ID) ..' collected.')
                        doSendAnimatedText(position, '+ '.. amount ..'', v.Color)
                        doRemoveCreature(thing.uid, true)
                        doPlayerGiveItem(cid, v.ID, amount)
                    end
                end
                if isItemStackable(v.ID) == false then
                    doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, ''.. getItemNameById(v.ID) ..' collected.')
                    doRemoveCreature(thing.uid, true)
                    doPlayerGiveItem(cid, v.ID, 1)
                end
                return false
            end
        end
    end
    return true
end
