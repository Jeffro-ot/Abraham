local config = {storage = 1000, canclemsg = "You've already used this item!",
    reward = {1992, 1993}
}

function onUse(player, item)
    if player:isPlayer and player:getStorageValue(config.storage) <= 0  then
        for gift = 1, #config.reward do
            player:addItem(config.reward[gift], 1)
            player:setStorageValue(config.storage, 1)
        end
    else
        player:sendTextMessage(MESSAGE_STATUS_WARNING, config.canclemsg, player:getPosition())
    end
end
