local melee = {"~BROKEN LEG~", "~BROKEN ARM~", "~BROKEN SKULL~"}

function onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType, origin)

    if(Monster(attacker) ~= nil) then
        return primaryDamage, primaryType, secondaryDamage, secondaryType
    end

local text = math.random(#melee)
    if math.random(100) <= 15 then
        if origin == ORIGIN_MELEE then
            creature:say(text, TALKTYPE_MONSTER_SAY)
        end
        return primaryDamage * math.random(2, 5), primaryType, secondaryDamage, secondaryType
    end
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end
