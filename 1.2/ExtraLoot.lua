--This is not my coding

local extra_loot = {
	{hasName = "poisonous bug", items = {
		{id = 2152, count = 2, chance = 3000}
	}},
}

function Container:addExtraLoot(c, t)
	if t.hasName then
		local cn = c:getName():lower()
		local cm = t.hasName:lower()
		if not cn:match(cm) then
			return true
		end
	end
	
	for i = 1, #t.items do
		local count = 1
		if t.items[i].count then
			if t.items[i].countMax then
				count = math.random(t.items[i].count, t.items[i].countMax)
			else
				count = t.items[i].count
			end
		else
			if t.items[i].countMax then
				count = math.random(1, t.items[i].countMax)
			end
		end
		
		if math.random(0, 100000) <= t.items[i].chance then
			self:addItem(t.items[i].id, count)
		end
	end
end

function onDeath(creature, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
	if not creature:isMonster() then return true end
	if corpse and corpse:isContainer() then
		for i = 1, #extra_loot do
			corpse:addExtraLoot(creature, extra_loot[i])
		end
	end
	return true
end
