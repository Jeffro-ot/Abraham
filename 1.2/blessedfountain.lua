--Blessed Fountain by Jeffro
--+2% on level
local config = {cost = 0, price = 10000}

function onUse(player, item)
    if not player.isPlayer then retrun true end
    if player:hasBlessing(5) then
        player:sendTextMessage(MESSAGE_STATUS_WARNING, "The gods already shine apon your soul", player:getPosition())
    end
    
    if cost == 1 then
        if player:getMoney() >= config.price then
            player:addBlessing(player:hasBlessing() + 1)
            player:sendTextMessage(MESSAGE_STATUS_WARNING, "The gods have blessed thy!", player:getPosition())
        else
            player:sendTextMessage(MESSAGE_STATUS_WARNING, "The gods require a wealthy donation first", player:getPosition())
            return true
        end
    else
        player:addBlessing(player:hasBlessing() + 1)
        player:sendTextMessage(MESSAGE_STATUS_WARNING, "The gods blessed thy!", player:getPosition())
    end
end
    
