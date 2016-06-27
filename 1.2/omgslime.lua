local monster = {name = "slime", chance = 50000}

function onHit(player, target, creature)
    if not player.isPlayer then return true end
    if not target.isCreature then return true end

    if target:getName() == "slime" then
        local multiply = math.random(100000)
        if multiply
