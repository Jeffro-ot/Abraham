local config = {
{
storage = {storagelevel = 9000, storagename = 9001, storagekill = 9002}
}
}
function highestLevel(player)
    if player then
        for i = config[1].storage, do
        if getPlayerLevel() <= getGlobalStorageValue(i.storagelevel) then
            return true
        else
            setGlobalStorage(i.storagelevel, getPlayerLevel())
            setGlobalStorage(i.storagename, getPlayerId())
        end
    end

function onLogin(player, login)
    if player then
        

function onKill(player, target)
    if target == player then
        for u = config[1].storage
        if target.getId() == getGlobalStorageValue(u.storagename) then
            setGlobalStorageValue(u.storagekill, 1)
        end
    end
end
