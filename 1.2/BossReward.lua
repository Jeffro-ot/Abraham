local config = {}
local monster = {
    [hellraiser] = {storage = 1000}
}

function onDeath(player, target, creature)
    local name = monster[creature:getName()]
    if not target.isCreature then return true end
    if not creature:getName() == name then return true end
    if player:getStorageValue(name.storage) > 0 then return true end
    
    
end
