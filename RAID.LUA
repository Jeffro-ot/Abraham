--Not Tested--
--Jeffro(C)---
--v0.2--------
--Intended for TFS 1.2
--Latest: Added array for tokens + custom monster msg on spawn, will add option for more currency/tokens at another time


local monsters = {
[1000] = {globalstorage = 1000, soul = 100, tcost = 15, token = 1, boss = "Demon", msg = "Mwahaha!"},
[1001] = {globalstorage = 1001, soul = 100, tcost = 30, token = 2, boss = "Orshabaal", msg = "Death shall come slow!"},
}

local rtok = {
[1] = 1938, --itemid
[2] = 1298,
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
     local f = monsters[l].token
     local d = rtok[f]
     
     --check if player has 
     if Player.getSoul() < h then
          Player.sendCancleMessage("Not enough soul points.")
          return true
     else Player.getItemCount(d) < j  then
          Player.sendCancleMessage("Not enough raid tokens.")
          return true
     end
     
     Game.setStorageValue(monsters[l].globalstorage, 1) --Be Sure To Setup Remove Global Storage on Boss Death or this script wont work a second time
     Player.removeSoul(monsters[l].soul)
     Player.removeItem(d, monsters[l].tcost)
     Game.createMonster(g, Player.getPosition, false, true)
     Creature.say(monsters[l].msg, TALKTYPE_MONSTER_YELL, Creature.getPosition())
end
     
     
