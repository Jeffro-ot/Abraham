--Not Tested--
--Jeffro(C)---
--v0.1--------

local monsters = {
[1000] = {globalstorage = 1000, soul = 100, tcost = 15, token = silver, boss = "Demon"},
[1001] = {globalstorage = 1001, soul = 100, tcost = 30, token = gold, boss = "Orshabaal"},
}

local rtok = {
silver = 1938,
gold = 1298,
}

function onUse(cid, item, player, creature)
     local l = Item.getActionId
     local k = Game.getStorageValue(monsters[l].globalstorage)
     local j = monsters[l].tcost
     local h = monsters[l].soul
     local g = monsters[l].boss
     if 1 <= k then
          return true
     end
     
     if h <= Player.getSoul() and j <= Player.getItemCount(rtok.silver) or j <= Player.getItemCount(rtok.gold) then
          return true
     end
     
     Player.removeSoul(monsters[l].soul)
     if monsters[l].token = silver then
          Player.removeItem(rtok.silver, monsters[l].tcost)
     elseif monsters[l].token = gold then
          Player.removeItem(rtok.gold, monsters[l].tcost)
     Game.createMonster(g, Player.getPosition, false, true)
     end
end
     
     
