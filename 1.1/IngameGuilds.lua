-- NOT FINISHED!!!!!!!!
-- BY JEFFRO(C)

function onUse(cid, item, fromPosition, itemEx, toPosition, isHotkey)

player:setGuild(guild)
local player = Player(cid)

local guilds = {
bloodlust = {name = Bloodlust, uniqueid = 0000, guildid = 0},
holyfamily = {name = Holy Family, uniqueid = 0000, guildid = 0},
championsleague = {uniqueid = 0000, guildid = 0},
brotherhood = {uniqueid = 0000, guildid = 0},
dragoncovenant = {uniqueid = 0000, guildid = 0}
}
if getPlayerGuildId(cid) == 0 then
	if item.uniqueid == guilds.bloodlust.uniqueid then
		player:setGuild(guilds.bloodlust.guildid)
	elseif item.uniqueid == guilds.holyfamily.uniqueid then
		player:setGuild(guilds.holyfamily.guildid)
	elseif item.uniqueid == guilds.championsleague.uniqueid then
		player:setGuild(guilds.championsleague.guildid)
	elseif item.uniqueid == guilds.brotherhood.uniqueid then
		player:setGuild(guilds.brotherhood.guildid)
	elseif item.uniqueid == guilds.dragoncovenant.uniqueid then
		player:setGuild(guilds.dragoncovenant.guildid)
	end
else
	doPlayerSendCancel("You have already joined ")
end
	
