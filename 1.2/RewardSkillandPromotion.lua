local rewards = {
    --- Sorcerer
    [1] = {
        [SKILL_MAGLEVEL] = {
            {lvl = 30, items = {{2191, 1}}, storage = 54779},
            {lvl = 50, items = {{2188, 1}}, storage = 54778},
            {lvl = 70, items = {{8922, 1}}, storage = 54777},
            {lvl = 100, items = {{9969, 1}}, storage = 54776}
        }
    },
    --- Druid
    [2] = {
        [SKILL_MAGLEVEL] = {
            {lvl = 30, items = {{2186, 1}}, storage = 54779},
            {lvl = 50, items = {{2185, 1}}, storage = 54778},
            {lvl = 70, items = {{8911, 1}}, storage = 54777},
            {lvl = 100, items = {{12424, 1}}, storage = 54776}
        }
    },
    --- Paladin
    [3] = {
        [SKILL_DISTANCE] = {
            {lvl = 30, items = {{2545, 1}}, storage = 54779},
            {lvl = 50, items = {{2546, 1}}, storage = 54778},
            {lvl = 70, items = {{6529, 1},{5803, 1}}, storage = 54777},
            {lvl = 100, items = {{5875, 1}}, storage = 54776}
        }
    },
    --- Knight
    [4] = {
        [SKILL_SWORD] = {
            {lvl = 30, items = {{2392, 1}}, storage = 54780},
            {lvl = 50, items = {{2419, 1}}, storage = 54781},
            {lvl = 70, items = {{2396, 1}}, storage = 54782},
            {lvl = 100, items = {{24338, 1}}, storage = 54776}
        },
        [SKILL_CLUB] = {
            {lvl = 30, items = {{7432, 1}}, storage = 54783},
            {lvl = 50, items = {{7437, 1}}, storage = 54784},
            {lvl = 70, items = {{7450, 1}}, storage = 54785},
            {lvl = 100, items = {{24339, 1}}, storage = 54786}
        },
        [SKILL_AXE] = {
            {lvl = 30, items = {{2432, 1}}, storage = 54779},
            {lvl = 50, items = {{2435, 1}}, storage = 54778},
            {lvl = 70, items = {{2431, 1}}, storage = 54777},
            {lvl = 100, items = {{24340, 1}}, storage = 54787}
        }
    },
    [9] = {
        [SKILL_SWORD] = {
            {lvl = 30, items = {{2392, 1}}, storage = 54780},
            {lvl = 50, items = {{2419, 1}}, storage = 54781},
            {lvl = 70, items = {{2396, 1}}, storage = 54782},
            {lvl = 100, items = {{24338, 1}}, storage = 54776}
        },
        [SKILL_CLUB] = {
            {lvl = 30, items = {{7432, 1}}, storage = 54783},
            {lvl = 50, items = {{7437, 1}}, storage = 54784},
            {lvl = 70, items = {{7450, 1}}, storage = 54785},
            {lvl = 100, items = {{24339, 1}}, storage = 54786}
        },
        [SKILL_AXE] = {
            {lvl = 30, items = {{2432, 1}}, storage = 54779},
            {lvl = 50, items = {{2435, 1}}, storage = 54778},
            {lvl = 70, items = {{2431, 1}}, storage = 54777},
            {lvl = 100, items = {{24340, 1}}, storage = 54787}
        },
        [SKILL_MAGLEVEL] = {
        {lvl = 50, items = {{9969, 1}}, storage = 54776}
        }
    }
}

function onAdvance(player, skill, oldlevel, newlevel)
    local rewardstr = "Items received: "
    local reward_t = {}
    local voc = player:getVocation():getBase():getId()
    if rewards[voc][skill] then
        for j = 1, #rewards[voc][skill] do
            local r = rewards[voc][skill][j]
            if not r then
                return true
            end

            if newlevel >= r.lvl then
                if player:getStorageValue(r.storage) < 1 then
                    player:setStorageValue(r.storage, 1)
                    for i = 1, #r.items do
                        local itt = ItemType(r.items[i][1])
                        if itt then
                            player:addItem(r.items[i][1], r.items[i][2])
                            table.insert(reward_t, itt:getName() .. (r.items[i][2] > 1 and " x" .. r.items[i][2] or ""))
                        end
                    end
                end
            end
        end
  
        if #reward_t > 0 then
            player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, rewardstr .. table.concat(reward_t, ", "))
        end
    end
    return true
end
