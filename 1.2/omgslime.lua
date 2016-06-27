local monster = {name = "slime", chance = 50000}

function onHit(player, target, creature)
    if not player.isPlayer then return true end
    if not target.isCreature then return true end

    if not target:getName() == monster.name then
        return true
    else
        local multiply = math.random(100000)
        if multiply >= monster.chance then
            return true
        else
            game:createCreature(monster.name:lower(), target:getPosition())
        end
    end
end
