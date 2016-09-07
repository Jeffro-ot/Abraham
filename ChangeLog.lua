Project Abraham
Nutopia 10.77 Remake Evolution Styled RPG
Custom TFS 1.2
InVersion 2.0/2.1
Developed by Jeffro@OtLand.net

----
------DESCRIPTION
----

Game progression developed around the use/find of unique weapons and armor.
There are 9 ranks for each individual weapon and armor which you can find
randomly from monsters or quests. Bosses will drop gems to further your
equipment and make you even stronger. You will progress finding new ways
to deal even more damage. Warrior's can progress their magic abilities finding
new damage spells and healing abilites, from throwing your weapon,
to AoE berserker spells, and % on block healing your health. A wide variety
of approaches you can take with your Warrior, not just a brute to take all the damage.
I've removed other vocations and left the warrior so I could focus primarily
on one vocation and make it fit the system and not be over powered.

With Warrior Abilities, Spell Combo's = Less Exhaustion

Any PvP will be adjusted once the PvE aspect of the game is finished for the warrior.

----
------CHANGE LOG
----

* = Developed by Jeffro

Version 1.0-----------------------------------------------------------
Premium System[Donations are strictly for server purposes and capabilities, not in-game features] 'F2P is how you really enjoy the game for what it is.'
No Premium Outfit's
*Unique Equipment Loot System [w/ Slot/Enchantment] --data/stats.lua
Return to Temple on Login[Patch bug with disconnect and monster ignore] --creaturescript/player.lua
*Monster Spawns[Bugs(L.1-10), Minotaurs(L.10-50)]
*Bosses[Poisonous Bug(20%)] --creaturescript/bossWave.lua
*Critical Hit((FistSkill% * primaryDamage) + primaryDamage) w/ [HitArea] Emote --creaturescript/criticalhit.lua
*Vocation Warrior Added
*Warrior Weapons (+30 Custom Weapons Lvl. 1 to 250)
Max Level 250 --XML/stages.xml
*Experience Stages(Hope to make leveling a lot steadier) --stages.xml
*Auto Health & Mana Regeneration[player login & lib/core/player.lua]
Auto loot capability(Max 5 Items)[NOT TESTED] --creaturescript/autoloot.lua
*Player Outfit Reward for 100 Skill(Runescape Mastery) --creaturescript/advancement.lua
*Beginner Outfit's Changed --citizen, knight, warrior, barbarian, beggar
Teleport Text's --globalevent/tptext.lua
*Unlimited Torch[RPG Aspect, No Light Spells] --items/items.xml
*0% Death Loss --lib/core/player.lua [0 blessing's set to 0%, other blessing's left alone]
*Stone of Teleportation[id:18559] --actions/tools/stoneofteleportation.lua [1minute exhaustion + isPzLocked]
*Apple of Rejuvination(Revive System, Player Can Only Use 1 Every 24 Hours) --creaturescript/playerdeath.lua [onPrepareDeath]
*Tree of Rejuvenation(Retrieve apple of rejuvenation)[1 apple at a time/24hr exhaustion] --actions/treeofr.lua
Warrior Attack Speed Tick = 1000/1sec --XML/vocations.xml
*Warrior's Tome [Warrior Attunement(New Abilities/Spells/Runes)] +New Tome's Need To Be Added To Actions.xml
*Ability/Spell: Berserker Lvl.10 +50% Melee Skill's, -25% Shield, +HASTE: FOR 100Mana; 0:25[cooldown 1:20;group 0:25]
*Ability/Spell: Azuras Charm Lvl. 20 Healing Every 0:01: FOR 50Mana;EXH=0:05[cooldown 1:00;group 0:05]
*Ability/Spell: Throw Weapon Lvl. 25 DMG= (Level / 5) + 20:25(min:max) Every 0:00.50: FOR 40Mana;EXH=0:02.50[cooldown 0:02.50;group 0:02]
Changed Warrior's Shrine to Warrior's Tome
*NPC: Dinolfis"Magic Shop"
*Tome of Cleansing- Heals player(Based on Level), removing paralyze, bought from Dinolfis
Updated Minotaurs to Oramond sprites
Added PZ gems at each hunting area

Version 2.0--------------------------------------------------------------------
Updated TFS[9/6/16]
Upgrade to 10.94 Added/Still 10.77
Fixed map loading issues with 20s+ loading times, NOW 1-4s, More to ADD = v2.1
*Dungeon 1- Sunshine Castle

----
------DEBUGGING
----

TESTING/IN-PROGRESS(ADDING)/BUGS-------[ADDED/FIXED/RUNS/NOTTESTED]---------***=IMPORTANT------------------------------
Updating to 10.94
Orc Monsters Implemented
Training
Torch as Shield + Def: 7
**Apple of Rejuvenation- remove storage system, set exhaust system, on death without apple, player revives

Outfit Bonuses(To be configured)

Water Holds Items
Tome of Cleansing not multiusable

----
------FUTURE UPDATES
----

TO BE ADDED/IDEAS TO BE EXAPNDED APON--------------------------------------------
BUG Armor- Leather+Wood
Minotaur- Chain
Skeleton- Plate
Fire Sale[Sell Equipment/Loot]
Equipment Always Unique
Monster Task System
Raid System/Monster Skull System (White = +1/Red = +2 Weapon/Black/Orange)
Weapon Level System
Shield Healing((ShieldSkill%) * damageRecieved)
Boss Weapon/Armor Slot System(Drop:Gems to slot equipment for more power)
New Food System
Player Record Rewards
Vocations[Archer]
Two-Handed Weapons

Custom Client(This is at the bottom as it will probably be the last thing I ever begin working on)

----
------THINGS REMOVED
----

Weapon Levels
Food Function[still exists in actions.xml/<!--not visible-->]
Light Spells
Two-Handed Weapons
Paladin, Sorcerer, Druid
