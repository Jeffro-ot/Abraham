--You Can't Kill The Best for TFS 1.2
--By. Jeffro

local config = {
{           --global            --global            -player
storage = {storagelevel = 9000, storagename = 9001, storagekill = 9002}
}
}

local reward = {
    doreward = 1, items = {(1941, 1), (1841, 1), (1982, 1)}--doreward == 0 will be no reward, 1 is reward
}

function highestLevel(player)
    for i = config[1].storage, do
    if getPlayerLevel() >= getGlobalStorageValue(i.storagelevel) then
        if reward.doreward == 1 and getGlobalStorageValye(i.storagekill) == 1 then
            for y = math.random(#reward.items), do y
            player.addItem(y)
        else
            setGlobalStorage(i.storagelevel, getPlayerLevel())
            setGlobalStorage(i.storagename, getPlayerId())
    end
end

function onLogin(player, login)
    if player.isPlayer then
        player:registerEvent("killthebest")
        addEvent(highestLevel)
    end

function onKill(player, target)
    for u = config[1].storage, do
    if target.isPlayer and target.getId() == getGlobalStorageValue(u.storagename) then
        setPlayerStorageValue(u.storagekill, 1)
    end
end
