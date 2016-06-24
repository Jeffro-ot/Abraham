--You Can't Kill The Best for TFS 1.2
--By. Jeffro

local config = {--global            --global            --player
storage = {storagelevel = 9000, storagename = 9001, storagekill = 9002}
}

local highest = config.storage
local playerlevel = player:getLevel()
local playerid = player:getGuid()

function onLogin(login, player)
    if not player.isPlayer then return true end
    if player:getLevel() <= game:getStorageValue(highest.storagelevel) then return true end --if player isnt highest level then cancle
    game:setStorageValue(highest.storagename, playerid) --stores players id and level if highest level
    game:setStorageValue(highest.storagelevel, playerlevel)
    player:sendTextMessage(MESSAGE_STATUS_WARNING, "You are now the most wanted player on the server!", player:getPosition())
end

function onKill(player, target)
    if not target.isPlayer then return true end
    if not target:getGuid() == game:getStorageValue(highest.storagename) then return true end
    game:setStorageValue(highest.storagekill, player:getGuid())
    player:sendTextMessage(MESSAGE_STATUS_WARNING, "You have killed the most wanted player on the server!", target:getPosition())
end
