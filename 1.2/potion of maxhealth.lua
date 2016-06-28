local config = {itemid = 1974, lvlsys = 0, level = 20}

function onUse(player, item)
    if not item:itemid == config.itemid then return true end
    if not player.isPlayer then return true end
    if lvlsys == 1 and player:getLevel() < config.level then return true end
    
    local addhealth = player:getMaxHealth() * 0.007
    local maxhealth = player:getMaxHealth() + addhealth
    
    player:setMaxHealth(maxhealth)
end
