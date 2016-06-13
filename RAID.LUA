--Not Tested--
--Jeffro(C)---
--v0.2--------
--added array for tokens, will add option for more currency/tokens at another time

local monsters = {
[1000] = {globalstorage = 1000, soul = 100, tcost = 15, token = silver, boss = "Demon", msg = "Mwahaha!"},
[1001] = {globalstorage = 1001, soul = 100, tcost = 30, token = gold, boss = "Orshabaal", msg = "Death shall come slow!"},
}

local rtok = {
silver = 1938,
gold = 1298,
}

function onUse(cid, item, player, creature)
     local l = Item.getActionId()
     local k = Game.getStorageValue(monsters[l].globalstorage)
     local j = monsters[l].tcost
     local h = monsters[l].soul
     local g = monsters[l].boss
     
     --check if raid in progress
     if 0 < k then
          Player.sendCancleMessage("This raid is already in progress.")
          return true
     end
     
     --check what tokens this raid uses
     if monsters[l].token = silver then
          do f = rtok.silver
          return false
     elseif monsters[l].token = gold then
          do f = rtok.gold
          return false
     end
     
     --check if player has 
     if Player.getSoul() < h then
          Player.sendCancleMessage("Not enough soul points.")
          return true
     else Player.getItemCount(f) < j  then
          Player.sendCancleMessage("Not enough raid tokens.")
          return true
     end
     
     Game.setStorageValue(monsters[l].globalstorage, 1) --Be Sure To Setup Remove Global Storage on Boss Death or this script wont work a second time
     Player.removeSoul(monsters[l].soul)
     Player.removeItem(f, monsters[l].tcost)
     Game.createMonster(g, Player.getPosition, false, true)
     Creature.makeSay(ORANGE, monsters[l].msg, Creature.getPosition)
end
     
     
