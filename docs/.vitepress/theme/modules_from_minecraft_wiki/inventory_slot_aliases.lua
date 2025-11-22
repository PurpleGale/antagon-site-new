local aliases = {
	-- Common fuel types for furnace --
	['Any fuel'] = { 'Coal', 'Charcoal', { title = 'Log', name = 'Oak Log' }, { title = 'Overworld Planks', name = 'Oak Planks' }, 'Lava Bucket', 'Block of Coal' },
	
	-- All armor --
	['Any leather armor'] = { 'Leather Cap', 'Leather Tunic', 'Leather Pants', 'Leather Boots' },
	['Any copper armor'] = { 'Copper Helmet', 'Copper Chestplate', 'Copper Leggings', 'Copper Boots' },
	['Any golden armor'] = { 'Golden Helmet', 'Golden Chestplate', 'Golden Leggings', 'Golden Boots' },
	['Any chainmail armor'] = { 'Chainmail Helmet', 'Chainmail Chestplate', 'Chainmail Leggings', 'Chainmail Boots' },
	['Any iron armor'] = { 'Iron Helmet', 'Iron Chestplate', 'Iron Leggings', 'Iron Boots' },
	['Any diamond armor'] = { 'Diamond Helmet', 'Diamond Chestplate', 'Diamond Leggings', 'Diamond Boots' },
	['Any netherite armor'] = { 'Netherite Helmet', 'Netherite Chestplate', 'Netherite Leggings', 'Netherite Boots' },

    -- Stones --
	['Any Cobblestone or Blackstone'] = { 'Cobblestone', 'Blackstone' },
	['Any stone-tier block'] = { 'Cobblestone', 'Blackstone', 'Cobbled Deepslate' },

	-- Miscellaeous collections --
	['Any leaves'] = { 'Oak Leaves', 'Spruce Leaves', 'Birch Leaves', 'Acacia Leaves', 'Jungle Leaves', 'Dark Oak Leaves', 'Mangrove Leaves', 'Cherry Leaves', 'Pale Oak Leaves', 'Azalea Leaves', 'Flowering Azalea Leaves' };
	['Any Egg'] = { 'Egg', 'Blue Egg', 'Brown Egg'};
	['Any copper tools'] = { 'Copper Sword', 'Copper Pickaxe', 'Copper Axe', 'Copper Shovel', 'Copper Hoe' },
	['Any Chain'] = { 'Chain', 'Copper Chain', 'Exposed Copper Chain', 'Weathered Copper Chain', 'Oxidized Copper Chain', 'Waxed Copper Chain', 'Waxed Exposed Copper Chain', 'Waxed Weathered Copper Chain', 'Waxed Oxidized Copper Chain' };
		
	-- Display names --
	['Broken Elytra'] = { title = '&dElytra', name = 'Broken Elytra' },
	['Button'] = { title = 'Button', name = 'Stone Button'},
	['Wooden Button'] = { title = 'Button', name = 'Oak Button'},
	['Arrow Loaded Crossbow'] = { title = 'Crossbow', name = 'Arrow Loaded Crossbow' },
	['Damaged Arrow Loaded Crossbow'] = { title = 'Crossbow', name = 'Damaged Arrow Loaded Crossbow' },
	['Firework Loaded Crossbow'] = { title = 'Crossbow', name = 'Firework Loaded Crossbow' },
	['Damaged Firework Loaded Crossbow'] = { title = 'Crossbow', name = 'Damaged Firework Loaded Crossbow' },
	['Ominous Banner'] = { title = '&6&oOminous Banner', name = 'Ominous Banner', text = 
		'&7Cyan Lozenge/&7Light Gray Base/&7Gray Pale/&7Light Gray Bordure/&7Black Fess/&7Light Gray Per Fess'},
	['Half Filled Bundle'] = { title = 'Bundle', name = 'Half Filled Bundle' },
	['Filled Bundle'] = { title = 'Bundle', name = 'Filled Bundle' },

	-- Empty display name --
	['debug_fourj_item'] = { title = '\226\128\140', name = 'debug_fourj_item' },

	-- Equipment with custom rarity --
	['Trident'] = { title = '&bTrident', name = 'Trident', text = '/&7 When in Main Hand:/&#160;&29 Attack Damage/&#160;&21.1 Attack Speed'},
	['Damaged Trident'] = { title = '&bTrident', name = 'Damaged Trident', text = '/&7 When in Main Hand:/&#160;&29 Attack Damage/&#160;&21.1 Attack Speed'},
	['Trident BE'] = { title = '&bTrident', name = 'Trident', text = '/&9 +8 Attack Damage'},
	['Mace'] = { title = '&dMace', name = 'Mace', text = '/&7 When in Main Hand:/&#160;&26 Attack Damage/&#160;&20.6 Attack Speed'},
	['Damaged Mace'] = { title = '&dMace', name = 'Damaged Mace', text = '/&7 When in Main Hand:/&#160;&26 Attack Damage/&#160;&20.6 Attack Speed'},
	['Mace BE'] = { title = '&dMace', name = 'Mace', text = '/&9 +5 Attack Damage'},
	["Damaged Elytra"] = { title = "&dElytra", name = "Damaged Elytra" },
	
	-- Ominous Bottles --
    ['Ominous Bottle'] = { title = '&eOminous Bottle', name = 'Ominous Bottle', text = '&9Bad Omen (01:40:00)' },
    ['Ominous Bottle II'] = { title = '&eOminous Bottle', name = 'Ominous Bottle', text = '&9Bad Omen II (01:40:00)' },
    ['Ominous Bottle III'] = { title = '&eOminous Bottle', name = 'Ominous Bottle', text = '&9Bad Omen III (01:40:00)' },
    ['Ominous Bottle IV'] = { title = '&eOminous Bottle', name = 'Ominous Bottle', text = '&9Bad Omen IV (01:40:00)' },
    ['Ominous Bottle V'] = { title = '&eOminous Bottle', name = 'Ominous Bottle', text = '&9Bad Omen V (01:40:00)' },

	-- Bedrock and Minecraft Education display names --
	['Buried Treasure Map BE'] = { title = 'Treasure Map', name = 'Buried Treasure Map BE' },
	['Elytra Wings'] = { title = 'Elytra Wings', name = 'Elytra' },
	['Glowing Obsidian'] = { title = 'tile.glowingobsidian.name', name = 'Glowing Obsidian' },
	['Map (no markers)'] = { title = 'Map', name = 'Map', text = 'Display Markers: &cNo' },
	['Locator Map'] = { title = 'Locator Map', name = 'Map BE' },
	['Map BE'] = { title = 'Map', name = 'Map BE' },
	['Shrub BE'] = { title = 'Fern', name = 'Short Grass' },
	['Rose BE'] = { title = 'Rose', name = 'Rose BE' },
	['Unknown'] = { title = 'Unknown', name = 'Missing Tile' },
	['info_update'] = { title = 'tile.info_update.name', name = 'Missing Tile' },
	['info_update2'] = { title = 'tile.info_update2.name', name = 'Missing Tile' },
	['reserved6'] = { title = 'tile.reserved6.name', name = 'Missing Tile' },
	['Smooth Purpur'] = { title = 'tile.deprecated_purpur_block_2.name', name = 'Smooth Purpur' },
	['Beacon BE'] = { title = '&bBeacon', name = 'Beacon BE' },
	['Conduit BE'] = { title = '&eConduit', name = 'Conduit BE' },
	['Dragon Egg BE'] = { title = '&dDragon Egg', name = 'Dragon Egg BE' },
	['Skeleton Skull BE'] = { title = '&eSkeleton Skull', name = 'Skeleton Skull BE' },
	['Wither Skeleton Skull BE'] = { title = '&bWither Skeleton Skull', name = 'Wither Skeleton Skull BE' },
	['Zombie Head BE'] = { title = '&eZombie Head', name = 'Zombie Head BE' },
	['Player Head BE'] = { title = '&ePlayer Head', name = 'Player Head BE' },
	['Creeper Head BE'] = { title = '&eCreeper Head', name = 'Creeper Head BE' },
	['Dragon Head BE'] = { title = '&dDragon Head', name = 'Dragon Head BE' },
	['Deprecated Anvil'] = { title = 'Anvil', name = 'Deprecated Anvil' },
	['Inverted Daylight Detector'] = { title = 'tile.daylight_detector_inverted.name', name = 'Inverted Daylight Detector' },

	-- Chemistry --
	['Lead (element)'] = { title = 'Lead', name = 'Lead (element)' },
	['Water (compound)'] = { title = 'Water', name = 'Water (compound)' },
	['Chloride'] = { 'Calcium Chloride', 'Cerium Chloride', 'Mercuric Chloride', 'Potassium Chloride', 'Tungsten Chloride' },
	['Sparkler'] = { 'Orange Sparkler', 'Blue Sparkler', 'Red Sparkler', 'Purple Sparkler', 'Green Sparkler' },
	['Matching Balloon'] = { 'White Balloon', 'Silver Balloon', 'Gray Balloon', 'Black Balloon', 'Brown Balloon', 'Red Balloon', 'Orange Balloon', 'Yellow Balloon', 'Lime Balloon', 'Green Balloon', 'Cyan Balloon', 'Light Blue Balloon', 'Blue Balloon', 'Purple Balloon', 'Magenta Balloon', 'Pink Balloon' },
	['Matching Chloride'] = { 'Cerium Chloride', 'Mercuric Chloride', 'Potassium Chloride', 'Tungsten Chloride' },
	['Matching Colored Torch'] = { 'Blue Torch', 'Red Torch', 'Purple Torch', 'Green Torch' },
	
	-- April Fools' Day jokes --
	['Potion of Caring (Poison)'] = { title = 'Potion of Caring', text = '&cCaring', name = 'Potion of Caring (Poison)'},
	['Potion of Caring (Poison) Enhanced'] = { title = 'Potion of Caring', text = '&cCaring II', name = 'Potion of Caring (Poison)'},
	['Splash Potion of Caring (Poison)'] = { title = 'Splash Potion of Caring', text = '&cCaring', name = 'Splash Potion of Caring (Poison)'},
	['Splash Potion of Caring (Poison) Enhanced'] = { title = 'Splash Potion of Caring', text = '&cCaring II', name = 'Splash Potion of Caring (Poison)'},
	['Potion of Caring (Slowness)'] = { title = 'Potion of Caring', text = '&cCaring', name = 'Potion of Caring (Slowness)'},
	['Splash Potion of Caring (Slowness)'] = { title = 'Splash Potion of Caring', text = '&cCaring', name = 'Splash Potion of Caring (Slowness)'},
	['Potion of Sharing'] = { text = '&cSharing (1:30)//&5When Applied:/&9+1,3 Love Power', name = 'Potion of Sharing'},
	['Potion of Sharing Extended'] = { text = '&cSharing (4:00)//&5When Applied:/&9+1,3 Love Power', name = 'Potion of Sharing'},
	['Splash Potion of Sharing'] = { text = '&cSharing (1:07)//&5When Applied:/&9+1,3 Love Power', name = 'Splash Potion of Sharing'},
	['Splash Potion of Sharing Extended'] = { text = '&cSharing (3:00)//&5When Applied:/&9+1,3 Love Power', name = 'Splash Potion of Sharing'},
	
	['New Thing Banner Pattern'] = { title = '&dBanner Pattern', name = 'New Thing Banner Pattern', text = '&7New Thing'},
	
	['Potato of Knowledge'] = { text = 'Amount: 10', name = 'Potato of Knowledge'},
	['Poisonous Potato Hammer'] = { title = '&bPoisonous Potato Hammer', text = '&7Knockback X//&7When in Main Hand/&#160;&211 Attack Damage/&#160;&26 Attack Speed', name = 'Poisonous Potato Hammer'},
	['Potato Peeler'] = { text = '&a+10.0 Damage to Potato Mobs//&7 When in Main Hand/&#160;&22 Attack Damage/&#160;&25 Attack Speed', name = 'Potato Peeler'},
	['Potato Oil'] = { text = '&9It\'s very slippery', name = 'Potato Oil'},
	['Poisonous Potato Oil'] = { text = '&9It\'s very slippery/&cPoison (0:10)', name = 'Poisonous Potato Oil'},
	['Potato Oil (Potion)'] = { title = 'Potato Oil', text = '&9It\'s very slippery', name = 'Potato Oil (Potion)'},
	['Poisonous Potato Oil (Potion)'] = { title = 'Poisonous Potato Oil', text = '&9It\'s very slippery/&cPoison (0:10)', name = 'Poisonous Potato Oil (Potion)'},
	['Splash Potato Oil'] = { text = '&9It\'s very slippery', name = 'Splash Potato Oil'},
	['Splash Poisonous Potato Oil'] = { text = '&9It\'s very slippery/&cPoison (0:10)', name = 'Splash Poisonous Potato Oil'},
	['Lingering Potato Oil'] = { text = '&9It\'s very slippery', name = 'Lingering Potato Oil'},
	['Lingering Poisonous Potato Oil'] = { text = '&9It\'s very slippery/&cPoison (0:02)', name = 'Lingering Poisonous Potato Oil'},
	['Arrow of Oilyness'] = { text = '&9It\'s very slippery', name = 'Arrow of Oilyness'},
	['Arrow of Deadly Oilyness'] = { text = '&9It\'s very slippery/&cPoison (0:01)', name = 'Arrow of Deadly Oilyness'},
	
	-- Note: These can't use this module's default color handling because potato peels have no white variant but do include the uncolored variant in recipes
	['Any Potato Peels'] = { 'Potato Peels', 'Light Gray Potato Peels', 'Gray Potato Peels', 'Black Potato Peels', 'Brown Potato Peels', 'Red Potato Peels', 'Orange Potato Peels', 'Yellow Potato Peels', 'Lime Potato Peels', 'Green Potato Peels', 'Cyan Potato Peels', 'Light Blue Potato Peels', 'Blue Potato Peels', 'Purple Potato Peels', 'Magenta Potato Peels', 'Pink Potato Peels' },
	
	-- Story Mode --
	['Damaged White Pumpkin'] = { title = 'White Pumpkin', name = 'Damaged White Pumpkin' },
}

-- Tooltip colors --
local yellowTooltips = {
    'Bottle o\' Enchanting',
    'Chainmail Boots',
    'Chainmail Chestplate',
    'Chainmail Helmet',
    'Chainmail Leggings',
    'Conduit',
    'Creeper Charge Banner Pattern',
    'Creeper Head',
    'Disc Fragment 5',
    'Dragon\'s Breath',
    'Echo Shard',
    'Enchanted Book',
    'Goat Horn',
    'Heart of the Sea',
    'Nautilus Shell',
    'Ominous Banner',
    'Piglin Head',
    'Player Head',
    'Recovery Compass',
    'Skeleton Skull',
    'Sniffer Egg',
    'Snout Banner Pattern',
    'Totem of Undying',
    'Zombie Head',
}
for _, name in ipairs( yellowTooltips ) do
	aliases[name] = { title = '&e', name = name }
end

local aquaTooltips = {
	'Beacon',
	'Enchanted Golden Apple',
    'Flow Banner Pattern',
	'Guster Banner Pattern',
	'Nether Star',
    'Skull Charge Banner Pattern',
    'Thing Banner Pattern',
    'Wither Skeleton Skull',
    
    "Golden Poisonous Potato",
}
for _, name in ipairs( aquaTooltips ) do
	aliases[name] = { title = '&b', name = name }
end

local magentaTooltips = {
	'Barrier',
	'Command Block',
	'Chain Command Block',
	'Debug Stick',
	'Dragon Egg',
	'Dragon Head',
	'Elytra',
	'Heavy Core',
	'Jigsaw Block',
	'Knowledge Book',
	'Light',
	'Repeating Command Block',
	'Structure Block',
	'Structure Void',
	'Test Block',
	'Test Instance Block',
	
	"Enchanted Golden Poisonous Potato",
}
for _, name in ipairs( magentaTooltips ) do
	aliases[name] = { title = '&d', name = name }
end

local greenTooltips = {
	'Poisonous Potato Plant',
	'Potatiesh, Greatstaff of the Peasant',
	'Big Brain',
	'Poisonous Polytra',
	'Powerful Potato',
	'Vicious Potato',
	'Mega Spud Spawn Egg',
}
for _, name in ipairs( greenTooltips ) do
	aliases[name] = { title = '&a', name = name }
end

-- Tools and weapons --
local tools = {
	{'Wooden', 'Sword', 4, 1.6 },
	{'Stone', 'Sword', 5, 1.6 },
	{'Copper', 'Sword', 5, 1.6 },
	{'Iron', 'Sword', 6, 1.6 },
	{'Golden', 'Sword', 4, 1.6 },
	{'Diamond', 'Sword', 7, 1.6 },
	{'Netherite', 'Sword', 8, 1.6 },
	
	{'Wooden', 'Pickaxe', 2, 1.2 },
	{'Stone', 'Pickaxe', 3, 1.2 },
	{'Copper', 'Pickaxe', 3, 1.2 },
	{'Iron', 'Pickaxe', 4, 1.2 },
	{'Golden', 'Pickaxe', 2, 1.2 },
	{'Diamond', 'Pickaxe', 5, 1.2 },
	{'Netherite', 'Pickaxe', 6, 1.2 },
	
	{'Wooden', 'Axe', 7, 0.8 },
	{'Stone', 'Axe', 9, 0.8 },
	{'Copper', 'Axe', 9, 0.8 },
	{'Iron', 'Axe', 9, 0.9 },
	{'Golden', 'Axe', 7, 1 },
	{'Diamond', 'Axe', 9, 1 },
	{'Netherite', 'Axe', 10, 1 },
	
	{'Wooden', 'Shovel', 2.5, 1 },
	{'Stone', 'Shovel', 3.5, 1 },
	{'Copper', 'Shovel', 3.5, 1 },
	{'Iron', 'Shovel', 4.5, 1 },
	{'Golden', 'Shovel', 2.5, 1 },
	{'Diamond', 'Shovel', 5.5, 1 },
	{'Netherite', 'Shovel', 6.5, 1 },
	
	{'Wooden', 'Hoe', 1, 1 },
	{'Stone', 'Hoe', 1, 2 },
	{'Copper', 'Hoe', 1, 2 },
	{'Iron', 'Hoe', 1, 3 },
	{'Golden', 'Hoe', 1, 1 },
	{'Diamond', 'Hoe', 1, 4 },
	{'Netherite', 'Hoe', 1, 4 }
}

local materialGroups = {}
local toolGroups = {}

for _, toolProps in ipairs( tools ) do
	local aliasName = toolProps[1] .. ' ' .. toolProps[2]
	local damagedName = 'Damaged ' .. aliasName
	local text = '/&7When in Main Hand:/&#160;&2' .. toolProps[3] .. ' Attack Damage/&#160;&2' .. toolProps[4] .. ' Attack Speed'
	aliases[aliasName] = { title = aliasName, name = aliasName, text = text }
	aliases[damagedName] = { title = aliasName, name = damagedName, text = text }
	
	local materialGroup = toolProps[1]:lower()
	local toolGroup = toolProps[2]:lower()
	
	if toolProps[2] ~= 'Sword' then
		if materialGroups[materialGroup] == nil then materialGroups[materialGroup] = {} end
		table.insert( materialGroups[materialGroup], aliases[aliasName] )
	end
	if toolGroups[toolGroup] == nil then toolGroups[toolGroup] = {} end
	table.insert( toolGroups[toolGroup], aliases[aliasName] )
end

for materialGroup, items in pairs( materialGroups ) do
	aliases['Any ' .. materialGroup .. ' tools'] = items
end

for toolGroup, items in pairs( toolGroups ) do
	aliases['Any ' .. toolGroup] = items
end

-- Tools and weapons in Bedrock Edition --
local toolsBE = {
	{'Wooden', 'Sword', 4 },
	{'Stone', 'Sword', 5 },
	{'Copper', 'Sword', 5 },
	{'Iron', 'Sword', 6 },
	{'Golden', 'Sword', 4 },
	{'Diamond', 'Sword', 7 },
	{'Netherite', 'Sword', 8 },
	
	{'Wooden', 'Pickaxe', 2 },
	{'Stone', 'Pickaxe', 3 },
	{'Copper', 'Pickaxe', 3 },
	{'Iron', 'Pickaxe', 4 },
	{'Golden', 'Pickaxe', 2 },
	{'Diamond', 'Pickaxe', 5 },
	{'Netherite', 'Pickaxe', 6 },
	
	{'Wooden', 'Axe', 3 },
	{'Stone', 'Axe', 4 },
	{'Copper', 'Axe', 4 },
	{'Iron', 'Axe', 5 },
	{'Golden', 'Axe', 3 },
	{'Diamond', 'Axe', 6 },
	{'Netherite', 'Axe', 7 },
	
	{'Wooden', 'Shovel', 1 },
	{'Stone', 'Shovel', 2 },
	{'Copper', 'Shovel', 2 },
	{'Iron', 'Shovel', 3 },
	{'Golden', 'Shovel', 1 },
	{'Diamond', 'Shovel', 4 },
	{'Netherite', 'Shovel', 5 },
	
	{'Wooden', 'Hoe', 2 },
	{'Stone', 'Hoe', 3 },
	{'Copper', 'Hoe', 3 },
	{'Iron', 'Hoe', 4 },
	{'Golden', 'Hoe', 2 },
	{'Diamond', 'Hoe', 5 },
	{'Netherite', 'Hoe', 6 }
}

for _, toolProps in ipairs( toolsBE ) do
	local aliasName = toolProps[1] .. ' ' .. toolProps[2]
	aliases[aliasName .. ' BE'] = { title = aliasName, name = aliasName, text = '/&9+' .. toolProps[3] .. ' Attack Damage'}
end

-- Armor tooltips --
local head = {
	{'Leather Cap', 1 },
	{'Copper Helmet', 2 },
	{'Chainmail Helmet', 2, title = '&eChainmail Helmet' },
	{'Iron Helmet', 2 },
	{'Golden Helmet', 2 },
	{'Diamond Helmet', 3, 2 },
	{'Netherite Helmet', 3, 3, 1 },
	{'Turtle Shell', 2 },
}

local chest = {
	{'Leather Tunic', 3 },
	{'Copper Chestplate', 4 },
	{'Chainmail Chestplate', 5, title = '&eChainmail Chestplate' },
	{'Iron Chestplate', 6 },
	{'Golden Chestplate', 5 },
	{'Diamond Chestplate', 8, 2 },
	{'Netherite Chestplate', 8, 3, 1 },
}

local legs = {
	{'Leather Pants', 2 },
	{'Copper Leggings', 5 },
	{'Chainmail Leggings', 4, title = '&eChainmail Leggings' },
	{'Iron Leggings', 5 },
	{'Golden Leggings', 3 },
	{'Diamond Leggings', 6, 2 },
	{'Netherite Leggings', 6, 3, 1 },
}

local feet = {
	{'Leather Boots', 1 },
	{'Copper Boots', 1 },
	{'Chainmail Boots', 1, title = '&eChainmail Boots' },
	{'Iron Boots', 2 },
	{'Golden Boots', 1 },
	{'Diamond Boots', 3, 2 },
	{'Netherite Boots', 3, 3, 1 },
}

local body = {
	{'Leather Horse Armor', 3 },
	{'Copper Horse Armor', 4 },
	{'Iron Horse Armor', 5 },
	{'Golden Horse Armor', 7 },
	{'Diamond Horse Armor', 11, 2 },
	{'Wolf Armor', 11 },
}

local bodyParts = {
    {head, "on Head"},
    {chest, "on Chest"},
    {legs, "on Legs"},
    {feet, "on Feet"},
    {body, "equipped"}
}

local trimMaterial = {
	{'Quartz', '&h'},
	{'Iron', '&i'},
	{'Netherite', '&j'},
	{'Redstone', '&y'},
	{'Copper', '&z'},
	{'Gold', '&p'},
	{'Emerald', '&q'},
	{'Diamond', '&s'},
	{'Lapis', '&t'},
	{'Amethyst', '&u'},
	{'Resin', '&v'},
	{'Amber', '&6'},
}

for _, bodyPart in ipairs(bodyParts) do
    local items = bodyPart[1]
    local bodyPartName = bodyPart[2]
    
    for _, toolProps in ipairs(items) do
        local aliasName = toolProps[1]
        local aliasTitle = toolProps.title or aliasName
        local damagedName
        if string.find(aliasName, "Horse Armor") then
            damagedName = aliasName 
        else
            damagedName = 'Damaged ' .. aliasName
        end     
        local text = '/&7When ' .. bodyPartName .. ':/&9+' .. toolProps[2] .. ' Armor/'
        if toolProps[3] then
            text = text .. '+' .. toolProps[3] .. ' Armor Toughness/'
        end
        if toolProps[4] then
            text = text .. '+' .. toolProps[4] .. ' Knockback Resistance'
        end
        aliases[aliasName] = { title = aliasTitle, name = aliasName, text = text }
        aliases[damagedName] = { title = aliasTitle, name = damagedName, text = text }
        if bodyPartName ~= "equipped" then
			for _, materialType in ipairs( trimMaterial ) do
	        	local trimName = materialType[1] .. ' Trim ' .. aliasName
				local trimText = '&7Upgrade:/&#160;' .. materialType[2] .. 'Armor Trim/&#160;' .. materialType[1] .. ' Material/'
				aliases[trimName] = { title = aliasTitle, name = trimName, text = trimText .. text }
			end
		end
    end
end

-- Lists of item variants --
local itemVariants = {
	['Small Flower'] = { 'Oxeye Daisy', 'Cornflower', 'Lily of the Valley', 'Wither Rose', 'Red Tulip', 'Orange Tulip', 'White Tulip', 'Pink Tulip', 'Azure Bluet', 'Allium', 'Blue Orchid', 'Poppy', 'Dandelion', 'Torchflower', 'Closed Eyeblossom', 'Open Eyeblossom' },
	['Eyeblossom'] = { 'Closed Eyeblossom', 'Open Eyeblossom' },
	['Mushroom'] = { 'Red Mushroom', 'Brown Mushroom' },
	['Quartz Block'] = { 'Block of Quartz', 'Chiseled Quartz Block', 'Quartz Pillar' },
	['Red Sandstone'] = { 'Red Sandstone', 'Cut Red Sandstone', 'Chiseled Red Sandstone', 'Smooth Red Sandstone' },
	['Sandstone'] = { 'Sandstone', 'Cut Sandstone', 'Chiseled Sandstone', 'Smooth Sandstone' },
	['Stone Bricks'] = { 'Stone Bricks', 'Mossy Stone Bricks', 'Cracked Stone Bricks', 'Chiseled Stone Bricks' },
	['Stone Slab'] = { 'Stone Slab', 'Cobblestone Slab', 'Mossy Cobblestone Slab', 'Smooth Stone Slab', 'Stone Brick Slab', 'Mossy Stone Brick Slab', 
		'Granite Slab', 'Polished Granite Slab', 'Diorite Slab', 'Polished Diorite Slab', 'Andesite Slab', 'Polished Andesite Slab', 
		'Cobbled Deepslate Slab', 'Polished Deepslate Slab', 'Deepslate Brick Slab', 'Deepslate Tile Slab', 'Brick Slab', 'Mud Brick Slab', 'Resin Brick Slab',
		'Sandstone Slab', 'Smooth Sandstone Slab', 'Cut Sandstone Slab', 'Red Sandstone Slab', 'Smooth Red Sandstone Slab', 'Cut Red Sandstone Slab', 'Prismarine Slab', 'Prismarine Brick Slab', 'Dark Prismarine Slab', 
		'Nether Brick Slab', 'Red Nether Brick Slab', 'Blackstone Slab', 'Polished Blackstone Slab', 'Polished Blackstone Brick Slab', 'End Stone Brick Slab', 'Purpur Slab', 'Quartz Slab', 'Smooth Quartz Slab', 'Petrified Oak Slab' },
	['Stone Stairs'] = { 'Stone Stairs', 'Cobblestone Stairs', 'Mossy Cobblestone Stairs', 'Stone Brick Stairs', 'Mossy Stone Brick Stairs', 
		'Granite Stairs', 'Polished Granite Stairs', 'Diorite Stairs', 'Polished Diorite Stairs', 'Andesite Stairs', 'Polished Andesite Stairs', 
		'Cobbled Deepslate Stairs', 'Polished Deepslate Stairs', 'Deepslate Brick Stairs', 'Deepslate Tile Stairs', 'Brick Stairs', 'Mud Brick Stairs', 'Resin Brick Stairs', 
		'Sandstone Stairs', 'Smooth Sandstone Stairs', 'Red Sandstone Stairs', 'Smooth Red Sandstone Stairs', 'Prismarine Stairs', 'Prismarine Brick Stairs', 'Dark Prismarine Stairs', 
		'Nether Brick Stairs', 'Red Nether Brick Stairs', 'Blackstone Stairs', 'Polished Blackstone Stairs', 'Polished Blackstone Brick Stairs', 'End Stone Brick Stairs', 'Purpur Stairs', 'Quartz Stairs', 'Smooth Quartz Stairs' },
	['Wall'] = { 'Cobblestone Wall', 'Mossy Cobblestone Wall', 'Stone Brick Wall', 'Mossy Stone Brick Wall', 'Granite Wall', 'Diorite Wall', 'Andesite Wall', 
		'Cobbled Deepslate Wall', 'Polished Deepslate Wall', 'Deepslate Brick Wall', 'Deepslate Tile Wall', 'Brick Wall', 'Mud Brick Wall', 'Resin Brick Wall', 'Sandstone Wall', 'Red Sandstone Wall', 'Prismarine Wall', 
		'Nether Brick Wall', 'Red Nether Brick Wall', 'Blackstone Wall', 'Polished Blackstone Wall', 'Polished Blackstone Brick Wall', 'End Stone Brick Wall' },
	['Purpur Block'] = { 'Purpur Block', 'Purpur Pillar' },
	['Stone'] = { 'Stone', 'Andesite', 'Granite', 'Diorite', 'Polished Andesite', 'Polished Granite', 'Polished Diorite' },
	['Resin Block'] = { 'Block of Resin', 'Resin Bricks', 'Chiseled Resin Bricks' },
	['Tulip'] = { 'Red Tulip', 'Orange Tulip', 'White Tulip', 'Pink Tulip' },
	['Prismarine'] = { 'Prismarine', 'Prismarine Bricks', 'Dark Prismarine' },
	['Ore'] = { 'Coal Ore', 'Iron Ore', 'Gold Ore', 'Lapis Lazuli Ore', 'Redstone Ore', 'Emerald Ore', 'Diamond Ore', 'Nether Quartz Ore', 'Nether Gold Ore', 'Deepslate Coal Ore', 
		'Deepslate Copper Ore', 'Deepslate Emerald Ore', 'Deepslate Iron Ore', 'Deepslate Gold Ore', 'Deepslate Lapis Lazuli Ore', 'Deepslate Redstone Ore', 'Deepslate Diamond Ore'},
	['Dead Coral Block'] = { 'Dead Tube Coral Block', 'Dead Brain Coral Block', 'Dead Bubble Coral Block', 'Dead Fire Coral Block', 'Dead Horn Coral Block' },
	['Coral Block'] = { 'Tube Coral Block', 'Brain Coral Block', 'Bubble Coral Block', 'Fire Coral Block', 'Horn Coral Block' },
	['Dead Coral'] = { 'Dead Tube Coral', 'Dead Brain Coral', 'Dead Bubble Coral', 'Dead Fire Coral', 'Dead Horn Coral' },
	['Dead Coral Fan'] = { 'Dead Tube Coral Fan', 'Dead Brain Coral Fan', 'Dead Bubble Coral Fan', 'Dead Fire Coral Fan', 'Dead Horn Coral Fan' },
	['Coral'] = { 'Tube Coral', 'Brain Coral', 'Bubble Coral', 'Fire Coral', 'Horn Coral' },
	['Coral Fan'] = { 'Tube Coral Fan', 'Brain Coral Fan', 'Bubble Coral Fan', 'Fire Coral Fan', 'Horn Coral Fan' },
	['Torch'] = { 'Torch', 'Soul Torch' },
	['Lantern'] = { 'Lantern', 'Soul Lantern' },
	['Fungus'] = { 'Crimson Fungus', 'Warped Fungus' },
	['Fungi'] = { 'Crimson Fungus', 'Warped Fungus' },
	['Roots'] = { 'Crimson Roots', 'Warped Roots' },
	['Nylium'] = { 'Crimson Nylium', 'Warped Nylium' },
	['Soul Sand'] = { 'Soul Sand', 'Soul Soil' },
	['Campfire'] = { 'Campfire', 'Soul Campfire' },
	['Blackstone'] = { 'Blackstone', 'Polished Blackstone', 'Chiseled Polished Blackstone', 'Polished Blackstone Bricks', 'Cracked Polished Blackstone Bricks' },
	['Stone Button'] = { 'Stone Button', 'Polished Blackstone Button' },
	['Stone Pressure Plate'] = { 'Stone Pressure Plate', 'Polished Blackstone Pressure Plate' },
}

-- Copper --
local copperstuff = {
	'Block of Copper',
	'Cut Copper',
	'Cut Copper Stairs',
	'Cut Copper Slab',
	'Chiseled Copper',
	'Copper Grate',
	'Copper Bulb',
	'Copper Door',
	'Copper Trapdoor',
	'Copper Chest',
	'Copper Bars',
	'Copper Chain',
	'Copper Lantern',
	'Copper Golem Statue',
	'Lightning Rod',
}
local coppervariants = { '', 'Exposed ', 'Weathered ', 'Oxidized ' }
for _, copper in ipairs( copperstuff ) do
	itemVariants['Unwaxed ' .. copper] = {}
	itemVariants['Waxed ' .. copper] = {}
	for _, coppervariant in ipairs( coppervariants ) do
		local name = coppervariant .. copper
		if copper == 'Block of Copper' and coppervariant ~= '' then
			name = coppervariant .. 'Copper'
		end
		table.insert( itemVariants['Unwaxed ' .. copper], name )
		table.insert( itemVariants['Waxed ' .. copper], 'Waxed ' .. name )
	end
	itemVariants[copper] = {}
	for _, copperitem in ipairs( itemVariants['Unwaxed ' .. copper] ) do
		table.insert( itemVariants[copper], copperitem )
	end
	for _, copperitem in ipairs( itemVariants['Waxed ' .. copper] ) do
		table.insert( itemVariants[copper], copperitem )
	end
end

for aliasName, aliasItems in pairs( itemVariants ) do
	aliases['Any ' .. aliasName] = aliasItems
	aliases['Matching ' .. aliasName] = aliasItems
end

-- Discs --
local discs = { 
	{ '13',                  'C418',           '',          '&e' },
	{ 'Cat',                 'C418',           'cat',       '&e' },
	{ 'Blocks',              'C418',           'blocks',    '&e' },
	{ 'Chirp',               'C418',           'chirp',     '&e' },
	{ 'Far',                 'C418',           'far',       '&e' },
	{ 'Mall',                'C418',           'mall',      '&e' },
	{ 'Mellohi',             'C418',           'mellohi',   '&e' },
	{ 'Stal',                'C418',           'stal',      '&e' },
	{ 'Strad',               'C418',           'strad',     '&e' },
	{ 'Ward',                'C418',           'ward',      '&e' },
	{ '11',                  'C418',           '',          '&e' },
	{ 'Wait',                'C418',           'wait',      '&e' },
	{ 'Otherside',           'Lena Raine',     'otherside', '&b' },
	{ 'Pigstep',             'Lena Raine',     '',          '&b' },
	{ '5',                   'Samuel Åberg',   '',          '&e' },
	{ 'Relic',               'Aaron Cherof',   '',          '&e' },
	{ 'Precipice',           'Aaron Cherof',   '',          '&e' },
	{ 'Creator',             'Lena Raine',     '',          '&b' },
	{ 'Creator (Music Box)', 'Lena Raine',     '',          '&e' },
	{ 'Tears',               'Amos Roddy',     '',          '&e' },
	{ 'Lava Chicken',        'Hyper Potions',  '',          '&b' },
}
for _, disc in ipairs( discs ) do
    local rarityColor = disc[4]
	local name = 'Music Disc ' .. disc[1]
	local artist = disc[2]
	local trackname = disc[1]
	if disc[3] ~= '' then
		trackname = disc[3]
	end
	aliases[name] = { title = rarityColor .. 'Music Disc', name = name, text = '&7' .. artist .. ' - ' .. trackname }
end

-- Disc Fragments --
local disc_fragments = { 
	{ '5',    },
}
for _, disc_fragment in ipairs( disc_fragments ) do
	local name = 'Disc Fragment ' .. disc_fragment[1]
	local trackname = disc_fragment[1]
	if disc_fragment[2] ~= nil then
		trackname = disc_fragment[2]
	end
	aliases[name] = { title = '&eDisc Fragment', name = name, text = '&7Music Disc - ' .. trackname }
end

-- Paintings --
local paintings = { 
	{ 'Kebab med tre pepperoni',    'Kristoffer Zetterstrand', '1x1' },
	{ 'de_aztec',                   'Kristoffer Zetterstrand', '1x1' },
	{ 'Albanian',                   'Kristoffer Zetterstrand', '1x1' },
	{ 'Target Successfully Bombed', 'Kristoffer Zetterstrand', '1x1' },
	{ 'Paradisträd',                'Kristoffer Zetterstrand', '1x1' },
	{ 'Wasteland',                  'Kristoffer Zetterstrand', '1x1' },
	{ 'Meditative',                 'Sarah Boeving',           '1x1' },
	{ 'Wanderer',                   'Kristoffer Zetterstrand', '1x2' },
	{ 'Graham',                     'Kristoffer Zetterstrand', '1x2' },
	{ 'Prairie Ride',               'Sarah Boeving',           '1x2' },
	{ 'The Pool',                   'Kristoffer Zetterstrand', '2x1' },
	{ 'Bonjour Monsieur Courbet',   'Kristoffer Zetterstrand', '2x1' },
	{ 'sunset_dense',               'Kristoffer Zetterstrand', '2x1' },
	{ 'Seaside',                    'Kristoffer Zetterstrand', '2x1' },
	{ 'Creebet',                    'Kristoffer Zetterstrand', '2x1' },
	{ 'Match',                      'Kristoffer Zetterstrand', '2x2' },
	{ 'Bust',                       'Kristoffer Zetterstrand', '2x2' },
	{ 'The Stage Is Set',           'Kristoffer Zetterstrand', '2x2' },
	{ 'The void',                   'Kristoffer Zetterstrand', '2x2' },
	{ 'Skull and Roses',            'Kristoffer Zetterstrand', '2x2' },
	{ 'Wither',                     'Mojang',                  '2x2' },
	{ 'Baroque',                    'Sarah Boeving',           '2x2' },
	{ 'Humble',                     'Sarah Boeving',           '2x2' },
	{ 'Bouquet',                    'Kristoffer Zetterstrand', '3x3' },
	{ 'Cavebird',                   'Kristoffer Zetterstrand', '3x3' },
	{ 'Cotán',                      'Kristoffer Zetterstrand', '3x3' },
	{ 'Endboss',                    'Kristoffer Zetterstrand', '3x3' },
	{ 'Fern',                       'Kristoffer Zetterstrand', '3x3' },
	{ 'Owlemons',                   'Kristoffer Zetterstrand', '3x3' },
	{ 'Sunflowers',                 'Kristoffer Zetterstrand', '3x3' },
	{ 'Tides',                      'Kristoffer Zetterstrand', '3x3' },
	{ 'Dennis',                     'Sarah Boeving',           '3x3'},
	{ 'Backyard',                   'Kristoffer Zetterstrand', '3x4' },
	{ 'Pond',                       'Kristoffer Zetterstrand', '3x4' },
	{ 'Fighters',                   'Kristoffer Zetterstrand', '4x2' },
	{ 'Changing',                   'Kristoffer Zetterstrand', '4x2' },
	{ 'Finding',                    'Kristoffer Zetterstrand', '4x2' },
	{ 'Lowmist',                    'Kristoffer Zetterstrand', '4x2' },
	{ 'Passage',                    'Kristoffer Zetterstrand', '4x2' },
	{ 'Mortal Coil',                'Kristoffer Zetterstrand', '4x3' },
	{ 'Kong',                       'Kristoffer Zetterstrand', '4x3' },
	{ 'Pointer',                    'Kristoffer Zetterstrand', '4x4' },
	{ 'Pigscene',                   'Kristoffer Zetterstrand', '4x4' },
	{ 'Skull On Fire',              'Kristoffer Zetterstrand', '4x4' },
	{ 'Unpacked',                   'Sarah Boeving',           '4x4' },
	{ 'Orb',                        'Kristoffer Zetterstrand', '4x4' },
	{ 'Earth',                      'Mojang',                  '2x2' },
	{ 'Wind',                       'Mojang',                  '2x2' },
	{ 'Fire',                       'Mojang',                  '2x2' },
	{ 'Water',                      'Mojang',                  '2x2' },
	{ 'Tasty Shapes',               'Mr. Potato',              '2x2' },
	{ 'Self-portrait',              'Mr. Potato',              '2x3' },
	{ 'Potato',                     'Cris B',                  '4x2' },
	{ 'In The Spotlight',           'Mr. Potato',              '3x3' },
	{ 'Hot Potato',                 'Mr. Potato',              '4x4' },
	{ 'This is not a potato',       'Mr. Potato',              '8x4' },
	{ 'The Treachery of Potatoes',  'Mr. Potato',              '8x8' }
}
for _, painting in ipairs( paintings ) do
	local name = 'Painting ' .. painting[1]
	local artist = painting[2]
	local artwork = painting[1]
	local size = painting[3]
	aliases[name] = { title = 'Painting', name = 'Painting', text = '&e' .. artwork .. '/&7' .. artist .. '/' .. '&f' .. size }
end

-- Damaged items, note it skips tools, weapons, and armor as they are handled above to add the damage tooltip. --
-- Items with rarity (such as Mace and Elytra) are hard-coded in the module's beginning.
local damagedItems = {
	'Bow',
	'Brush',
	'Carrot on a Stick',
	'Crossbow',
	'Fishing Rod',
	'Flint and Steel',
	'Shears',
	'Shield'
}
for _, item in ipairs( damagedItems ) do
	local name = 'Damaged ' .. item
	aliases[name] = { title = item, name = name }
end

-- Banners and colored items --
local patterns = {
	'Base Dexter Canton',
	'Base',
	'Base Gradient',
	'Base Indented',
	'Base Sinister Canton',
	'Bend',
	'Bend Sinister',
	'Bordure',
	'Bordure Indented',
	'Chevron',
	'Chief Dexter Canton',
	'Chief',
	'Chief Indented',
	'Chief Sinister Canton',
	'Creeper Charge',
	'Cross',
	'Fess',
	'Field Masoned',
	'Flow',
	'Flower Charge',
	'Globe',
	'Gradient',
	'Guster',
	'Inverted Chevron',
	'Lozenge',
	'Thing',
	'Pale',
	'Pale Dexter',
	'Pale Sinister',
	'Paly',
	'Per Bend',
	'Per Bend Inverted',
	'Per Bend Sinister',
	'Per Bend Sinister Inverted',
	'Per Fess',
	'Per Fess Inverted',
	'Per Pale',
	'Per Pale Inverted',
	'Piglin',
	'Snout',
	'Roundel',
	'Saltire',
	'Skull Charge'
}
local colors = {
	'White',
	'Light Gray',
	'Gray',
	'Black',
	'Brown',
	'Red',
	'Orange',
	'Yellow',
	'Lime',
	'Green',
	'Cyan',
	'Light Blue',
	'Blue',
	'Purple',
	'Magenta',
	'Pink'
}

-- Firework Stars --
local fireworkStar = {}
for _, color in ipairs( colors ) do
	local name = color .. ' Firework Star'
	aliases[name] = { title = 'Firework Star', name = name, text = '&7' .. color }
	table.insert( fireworkStar, aliases[name] )
	for _, pattern in ipairs( patterns ) do
		name = color .. ' ' .. pattern .. ' Banner'
		aliases[name] = { title = 'Banner', name = name, text = '&7' .. color .. ' ' .. pattern }
	end
end
aliases['Any Firework Star'] = fireworkStar
aliases['Matching Firework Star'] = fireworkStar

-- Items that use the sixteen colors --
local coloredItems = {
	withWhite = {
		'Banner',
		'Bed',
		'Carpet',
		'Concrete',
		'Concrete Powder',
		'Glazed Terracotta',
		'Glow Stick',
		'Hardened $1 Stained Glass',
		'Hardened $1 Stained Glass Pane',
		'Shield',
		'Shulker Box',
		'Stained Glass',
		'Stained Glass Pane',
		'Wool',
		'Harness',

		'$Dyed Bundle',
		'$Dyed Candle',
		'$Stained Terracotta',
	},
	noWhite = {
		'$Dyed Wool',
		'$Dyed Bed',
		'$Dyed Carpet',
		'$Colored Dye',
	}
}

local coloredBadItems = {
	['Light Gray Glow Stick'] = 1,
	['Black Glow Stick'] = 1,
}

for type, items in pairs( coloredItems ) do
	for _, item in ipairs( items ) do
		local coloredItemAliases = {}
		local defaultItemAliases

		if item:find( '%$[^1]' ) then
			defaultItemAliases = {}
			local itemName
			if type == 'noWhite' then
				itemName = item:gsub( '%$%w+', 'White' )
			else
				itemName = item:gsub( '%$%w+ ', '' )
			end
			table.insert( defaultItemAliases, itemName )
		end

		for _, color in ipairs( colors ) do
			local itemName
			if type ~= 'noWhite' or color ~= 'White' then
				if item:find( '%$1' ) then
					itemName = item:gsub( '%$1', color )
				elseif item:find( '%$' ) then
					itemName = item:gsub( '%$%w+', color )
				else
					itemName = color .. ' ' .. item
				end
			end

			if not coloredBadItems[itemName] then
				if defaultItemAliases then
					table.insert( defaultItemAliases, itemName )
				end

				table.insert( coloredItemAliases, itemName )
			end
		end

		if defaultItemAliases then
			local defaultItem = item:gsub( '%$%w+ ', '' )
			aliases['Any ' .. defaultItem] = defaultItemAliases
			aliases['Matching ' .. defaultItem] = defaultItemAliases
		end
		item = item:gsub( '%$1 ', '' )
		item = item:gsub( '%$', '' )
		aliases['Any ' .. item] = coloredItemAliases
		aliases['Matching ' .. item] = coloredItemAliases
	end
end
-- list of all potions with no effects
local noEffects = {
	'Water Bottle',
	'Awkward Potion',
	'Thick Potion',
	'Mundane Potion',
	'Long Mundane Potion',
	'Uncraftable Potion',
	'Splash Water Bottle',
	'Awkward Splash Potion',
	'Thick Splash Potion',
	'Mundane Splash Potion',
	'Splash Long Mundane Potion',
	'Uncraftable Splash Potion',
	'Lingering Water Bottle',
	'Awkward Lingering Potion',
	'Thick Lingering Potion',
	'Mundane Lingering Potion',
	'Lingering Long Mundane Potion',
	'Uncraftable Lingering Potion',
	'Tipped Arrow',
	'Arrow of Splashing',
	'Uncraftable Tipped Arrow',
}
for _, name in ipairs(noEffects) do
	aliases[name] = { name = name, text = '&7No Effects' }
end

-- start these lists with the no effect items as names are not normal
local potionItems = {
	['Potion'] = {
		aliases['Water Bottle'],
		aliases['Awkward Potion'],
		aliases['Thick Potion'],
		aliases['Mundane Potion'],
	},
	['Splash Potion'] = {
		aliases['Splash Water Bottle'],
		aliases['Awkward Splash Potion'],
		aliases['Thick Splash Potion'],
		aliases['Mundane Splash Potion'],
	},
	['Lingering Potion'] = {
		aliases['Lingering Water Bottle'],
		aliases['Awkward Lingering Potion'],
		aliases['Thick Lingering Potion'],
		aliases['Mundane Lingering Potion'],
	},
	['Tipped Arrow'] = {
		aliases['Arrow of Splashing'],
		aliases['Tipped Arrow'],
		aliases['Tipped Arrow'],
		aliases['Tipped Arrow'],
	},
}

-- Potions --
local effects = {
	-- durations are in the order normal, extended, enhanced
	{name = 'Regeneration', effect = '&9Regeneration', enhanced = 'II',
		durations = { normal = { '00:45', '01:30', '00:22' }, lingering = { '00:11', '00:22', '00:05' }, arrow = { '00:05', '00:11', '00:02' }}},
	{ name = 'Swiftness', effect = '&9Speed', enhanced = 'II', applied = {'&9+20% Speed', '&9+40% Speed'}, 
		durations = { normal = { '03:00', '08:00', '01:30' }, lingering = { '00:45', '02:00', '00:22' }, arrow = { '00:22', '01:00', '00:11' }}},
	{ name = 'Fire Resistance', effect = '&9Fire Resistance', durations = { normal = { '03:00', '08:00' }, lingering = { '00:45', '02:00' }, arrow = { '00:22', '01:00' }}},
	{ name = 'Poison', effect = '&cPoison', enhanced = 'II', 
		durations = { normal = { '00:45', '01:30', '00:21' }, lingering = { '00:11', '00:22', '00:05' }, arrow = { '00:05', '00:11', '00:02' }}},
	{ name = 'Healing', effect = '&9Instant Health', enhanced = 'II' },
	{ name = 'Night Vision', effect = '&9Night Vision', durations = { normal = { '03:00', '08:00' }, lingering = { '00:45', '02:00' }, arrow = { '00:22', '01:00' }}},
	{ name = 'Weakness', effect = '&cWeakness', applied = {'&c-4 Attack Damage'}, 
		durations = { normal = { '01:30', '04:00' }, lingering = { '00:22', '01:00' }, arrow = { '00:11', '00:30' }}},
	{ name = 'Strength', effect = '&9Strength', enhanced = 'II', applied = {'&9+3 Attack Damage', '&9+6 Attack Damage'}, 
		durations = { normal = { '03:00', '08:00', '01:30'}, lingering = {'00:45', '02:00', '00:22'}, arrow = { '00:22', '01:00', '00:11' }}},
	{ name = 'Slowness', effect = '&cSlowness', enhanced = 'IV', applied = {'&c-15% Speed', '&c-60% Speed'}, 
		durations = { normal = { '01:30', '04:00', '00:20'}, lingering = {'00:22', '01:00', '00:05'}, arrow = { '00:11', '00:30', '00:02' }}},
	{ name = 'Leaping', effect = '&9Jump Boost', enhanced = 'II', applied = {'&9+1 Safe Fall Distance', '&9+2 Safe Fall Distance'},
		durations = { normal = { '03:00', '08:00', '01:30' }, lingering = {'00:45', '02:00', '00:22'}, arrow = { '00:22', '01:00', '00:11' }}},
	{ name = 'Harming', effect = '&cInstant Damage', enhanced = 'II' },
	{ name = 'Water Breathing', effect = '&9Water Breathing', durations = { normal = { '03:00', '08:00' }, lingering = { '00:45', '02:00' }, arrow = { '00:22', '01:00' }}},
	{ name = 'Invisibility', effect = '&9Invisibility', durations = { normal = { '03:00', '08:00' }, lingering = { '00:45', '02:00' }, arrow = { '00:22', '01:00' }}},
	{ name = 'Slow Falling', effect = '&9Slow Falling', durations = { normal = { '01:30', '04:00' }, lingering = { '00:22', '01:00' }, arrow = { '00:11', '00:30' }}},
	{ name = 'Luck', effect = '&9Luck', applied = {'&9+1 Luck'}, durations = { normal = { '05:00' }, lingering = { '01:15' }, arrow = { '00:37' }}},
	{ name = 'Decay', effect = '&cWither II', durations = { normal = { '00:40' }, lingering = { '00:10' }, arrow = { '00:05' }}},
	{ name = 'the Turtle Master', text = '&cSlowness IV ($1)/&9Resistance III ($1)//&5When Applied:/&c-60% Speed',
		enhanced = '&cSlowness VI ($1)/&9Resistance IV ($1)//&5When Applied:/&c-90% Speed',
		durations = { normal = { '00:20', '00:40', '00:20' }, lingering = { '00:05', '00:10', '00:05' }, arrow = {  '00:02', '00:05', '' }}},
	{ name = 'Oozing', effect = '&cOozing', durations = { normal = { '03:00' }, lingering = { '00:45' }, arrow = { '00:22' }}},
	{ name = 'Infestation', effect = '&cInfested', durations = { normal = { '03:00' }, lingering = { '00:45' }, arrow = { '00:22' }}},
	{ name = 'Weaving', effect = '&cWeaving', durations = { normal = { '03:00' }, lingering = { '00:45' }, arrow = { '00:22' }}},
	{ name = 'Wind Charging', effect = '&cWind Charged', durations = { normal = { '03:00' }, lingering = { '00:45' }, arrow = { '00:22' }}},
	
	{ name = 'Big', effect = '&9Big', enhanced = 'II', applied = {'&9+1 Entity Scale', '&9+2 Entity Scale'},
		durations = { normal = { '03:00', '08:00', '01:30' }, lingering = { '00:45', '02:00', '00:22' }, arrow = { '00:22', '01:00', '00:11' }}},
	{ name = 'Small', effect = '&9Small', enhanced = 'II', applied = {'&c-0.5 Entity Scale', '&c-1 Entity Scale'},
		durations = { normal = { '03:00', '08:00', '01:30' }, lingering = { '00:45', '02:00', '00:22' }, arrow = { '00:22', '01:00', '00:11' }}},
	{ name = 'Sticky', effect = '&9Sticky', durations = { normal = { '01:30' }, lingering = { '00:22' }, arrow = { '00:11' }}}
}
local types = {
	{name = 'Potion',           durations = 'normal',    text = 'Potion of '},
	{name = 'Splash Potion',    durations = 'normal',    text = 'Splash Potion of '},
	{name = 'Lingering Potion', durations = 'lingering', text = 'Lingering Potion of '},
	{name = 'Tipped Arrow',     durations = 'arrow',     text = 'Arrow of '},
}

for _, effect in ipairs(effects) do
	for _, type in ipairs(types) do
		-- form name, it will be reused
		local name =  type.text .. effect.name
		local potionName = {}
		if type.name == 'Tipped Arrow' then
		potionName = type.text .. effect.name
		else
		potionName = type.text .. effect.name
		end
		
		-- if we have durations, add times
		if effect.durations then
			local durations = effect.durations[type.durations]
			
			-- turtle master is weird, so just do a fancy string replacement
			if effect.text then
				aliases[name] = { name = potionName, text = effect.text:gsub( '%$1', durations[1] ) }
				aliases[name .. ' Extended'] = { name = potionName, text = effect.text:gsub( '%$1', durations[2] ) .. '/&8Extended' }
				aliases[name .. ' Enhanced'] = { name = potionName, text = effect.enhanced:gsub( '%$1', durations[3] ) .. '/&8Enhanced' }
			elseif effect.applied then
				-- attribute changes by the effect
				local applied = effect.applied
				
				-- we always have normal
				aliases[name] = { name = potionName, text = string.format( '%s (%s)//&5When Applied:/%s', effect.effect, durations[1], applied[1] ) }
			
				-- ensure we have extended
				if durations[2] then
					aliases[name .. ' Extended'] = { name = potionName, text = string.format( '%s (%s)//&5When Applied:/%s', effect.effect, durations[2], applied[1] ) .. '/&8Extended' }
					
					-- and enhanced
					if effect.enhanced then
						aliases[name .. ' Enhanced'] = { name = potionName, text = string.format( '%s %s (%s)//&5When Applied:/%s', effect.effect, effect.enhanced, durations[3], applied[2] ) .. '/&8Enhanced' }
					end
				end
			else
				-- we always have normal
				aliases[name] = { name = potionName, text = string.format( '%s (%s)', effect.effect, durations[1] ) }
			
				-- ensure we have extended
				if durations[2] then
					aliases[name .. ' Extended'] = { name = potionName, text = string.format( '%s (%s)', effect.effect, durations[2] ) .. '/&8Extended' }
					
					-- and enhanced
					if effect.enhanced then
						aliases[name .. ' Enhanced'] = { name = potionName, text = string.format( '%s %s (%s)', effect.effect, effect.enhanced, durations[3] ) .. '/&8Enhanced' }
					end
				end
			end
		else
			-- otherwise its just effect, currently every potion with no duration can be enhanced
			aliases[name] = { name = potionName, text = effect.effect}
			aliases[name .. ' Enhanced'] = { name = potionName, text = effect.effect .. ' ' .. effect.enhanced .. '/&8Enhanced' }
		end
		
		-- add the base potion to the any list
		table.insert(potionItems[type.name], aliases[name])
	end
end

-- build the any lists
for item, potionAliases in pairs( potionItems ) do
	aliases['Any ' .. item] = potionAliases
	aliases['Matching ' .. item] = potionAliases
end

-- Wood --
local woodTypes = {
    overworld = {
        'Oak',
	    'Spruce',
	    'Birch',
	    'Jungle',
	    'Acacia',
        'Dark Oak',
        'Mangrove',
        'Cherry',
        'Pale Oak',
        'Bamboo',
    },
    nether = {
        'Crimson',
        'Warped',
    },
    both = {},
}
local woodTypeWorld = {}
for _, world in ipairs({'overworld', 'nether'}) do
	local woods = woodTypes[world]
	for _, type in ipairs(woods) do
		woodTypeWorld[type] = world
        table.insert(woodTypes.both, type)
    end
end
local woodItems = {
    overworld = {
        'Log',
        'Wood',
        'Stripped $1 Log',
        'Stripped $1 Wood',
        'Boat',
        'Boat with Chest',
        'Sapling',
    },
    nether = {
        'Stem',
        'Hyphae',
        'Stripped $1 Stem',
        'Stripped $1 Hyphae',
    },
    both = {
		-- Any/Matching X or Y
        '${Log,Stem}',
        '${Wood,Hyphae}',
        'Stripped $1 ${Wood,Hyphae}',
        'Stripped $1 ${Log,Stem}',

		-- Dimensional prefixes
        '$world Planks',
        '$world $wood Stairs',
        '$world $wood Slab',
        '$world $wood Fence',
        '$world $wood Fence Gate',
        '$world $wood Door',
        '$world $wood Trapdoor',
        '$world $wood Pressure Plate',
        '$world $wood Button',
        '$world $wood Sign',
        '$world $wood Hanging Sign',
        '$world $wood Shelf',

		-- Both dimensions
		-- Items with non-wood variants include $wood
        'Planks',
        '$wood Stairs',
        '$wood Slab',
        '$wood Fence',
        'Fence Gate',
        '$wood Door',
        '$wood Trapdoor',
        '$wood Pressure Plate',
        '$wood Button',
        'Sign',
        'Hanging Sign',
        'Shelf',
    }
}
local woodItemWorld = {}
for world, items in pairs(woodItems) do
    for _, item in ipairs(items) do
		-- expand $world (should only happen in "both")
        if (item:find('%$world')) and world == 'both' then
            item = item:gsub('%$world ', '')
            woodItemWorld['Overworld ' .. item] = 'overworld'
			woodItemWorld['Nether ' .. item] = 'nether'
		else
			woodItemWorld[item] = world
		end
    end
end

local woodBadItems = {
	['Bamboo Sapling'] = 1,
	['Bamboo Wood'] = 1,
	['Bamboo Log'] = 1,
	['Stripped Bamboo Wood'] = 1,
	['Stripped Bamboo Log'] = 1,
}

local woodNameMapping = {
	['Mangrove Sapling'] = 'Mangrove Propagule',
	['Bamboo Boat'] = 'Bamboo Raft',
	['Bamboo Boat with Chest'] = 'Bamboo Raft with Chest',
}

for item, world in pairs(woodItemWorld) do
	local itemName = ''
	local woodAliases = {}

	-- real "linkable" name
    local realItem = item:gsub('^Overworld ', '')
    realItem = realItem:gsub('^Nether ', '')

	for _, wood in ipairs(woodTypes[world]) do
		-- Parse ${,} (world-select) syntax
		local selector = (woodTypeWorld[wood] == 'overworld') and "%1" or "%2"
		itemName = realItem:gsub("%${(.-),(.-)}", selector)

		if itemName:find('%$wood') then
			itemName = itemName:gsub('%$wood', wood)
		elseif itemName:find('%$1') then
			itemName = itemName:gsub( '%$1', wood)
		else
			itemName = wood .. ' ' .. itemName
		end
		
		-- special handling
		if woodNameMapping[itemName] then
			itemName = woodNameMapping[itemName]
		end

		if not woodBadItems[itemName] then
			table.insert(woodAliases, itemName)
		end
	end

	-- Parse ${,} (world-select) syntax
	item = item:gsub("%${(.-),(.-)}", "%1 or %2")
    item = item:gsub('%$wood', 'Wooden')
    item = item:gsub('%$1 ', '')
    aliases['Any ' .. item] = woodAliases
	aliases['Matching ' .. item] = woodAliases
end

-- Light blocks --
for level = 0, 15 do
aliases["Light " .. level] = { title = "&dLight", name = "Light " .. level }
aliases["Light " .. level .. " BE"] = { title = "Light", name = "Light " .. level .. " BE" }
end

-- Pottery Sherds --
local pottery_sherds = { 
	{ 'Angler' },
	{ 'Arms Up' },
	{ 'Archer' },
	{ 'Blade' },
	{ 'Brewer' },
	{ 'Burn' },
	{ 'Danger' },
	{ 'Explorer' },
	{ 'Flow' },
	{ 'Friend' },
	{ 'Guster' },
	{ 'Heart' },
	{ 'Heartbreak' },
	{ 'Howl' },
	{ 'Miner' },
	{ 'Mourner' },
	{ 'Plenty' },
	{ 'Prize' },
	{ 'Scrape' },
	{ 'Sheaf' },
	{ 'Shelter' },
	{ 'Skull' },
	{ 'Snort' },
}

local potterySherdAliases = {}
for _, pottery_sherd in ipairs(pottery_sherds) do
	local name = pottery_sherd[1] .. ' Pottery Sherd'
	aliases[name] = { title = '&e' .. name , name = name }
	table.insert(potterySherdAliases, aliases[name])
end
table.insert(potterySherdAliases, 'Brick')

aliases['Any Pottery Sherd'] = potterySherdAliases

-- Smithing Templates --
local smithing_templates = {
	{ 'Netherite Upgrade',    'Diamond Equipment', 'Netherite Ingot',  '&e' },
	{ 'Bolt Armor Trim',      'Armor',             'Ingot & Crystals', '&e' },
	{ 'Coast Armor Trim',     'Armor',             'Ingot & Crystals', '&e' },
	{ 'Dune Armor Trim',      'Armor',             'Ingot & Crystals', '&e' },
	{ 'Eye Armor Trim',       'Armor',             'Ingot & Crystals', '&b' },
	{ 'Flow Armor Trim',      'Armor',             'Ingot & Crystals', '&e' },
	{ 'Host Armor Trim',      'Armor',             'Ingot & Crystals', '&e' },
	{ 'Raiser Armor Trim',    'Armor',             'Ingot & Crystals', '&e' },
	{ 'Rib Armor Trim',       'Armor',             'Ingot & Crystals', '&e' },
	{ 'Sentry Armor Trim',    'Armor',             'Ingot & Crystals', '&e' },
	{ 'Shaper Armor Trim',    'Armor',             'Ingot & Crystals', '&e' },
	{ 'Silence Armor Trim',   'Armor',             'Ingot & Crystals', '&d' },
	{ 'Snout Armor Trim',     'Armor',             'Ingot & Crystals', '&e' },
	{ 'Spire Armor Trim',     'Armor',             'Ingot & Crystals', '&b' },
	{ 'Tide Armor Trim',      'Armor',             'Ingot & Crystals', '&e' },
	{ 'Vex Armor Trim',       'Armor',             'Ingot & Crystals', '&b' },
	{ 'Ward Armor Trim',      'Armor',             'Ingot & Crystals', '&b' },
	{ 'Wayfinder Armor Trim', 'Armor',             'Ingot & Crystals', '&e' },
	{ 'Wild Armor Trim',      'Armor',             'Ingot & Crystals', '&e' },

}
local smithing_template_array = {}
local armor_trims_array = {}
for _,smithing_template in pairs(smithing_templates) do
    local rarityColor = smithing_template[4]
	local current_alias = {
		title = rarityColor .. smithing_template[1],
		name = smithing_template[1] .. ' Smithing Template',
		text = '&7' .. 'Smithing Template' .. '//Applies to:/&#160;&9' .. smithing_template[2] .. '/&7Ingredients:/&#160;&9' .. smithing_template[3],
	}
	aliases[smithing_template[1]] = current_alias
	aliases[smithing_template[1] .. ' Smithing Template'] = current_alias
	table.insert(smithing_template_array,current_alias)
	if string.find(smithing_template[1],' Armor Trim$') then
		table.insert(armor_trims_array,current_alias)
	end
end
aliases['Matching Smithing Template'] = smithing_template_array
aliases['Any Smithing Template'] = smithing_template_array
aliases['Matching Armor Trim'] = armor_trims_array
aliases['Any Armor Trim'] = armor_trims_array
aliases['Matching Armor Trim Smithing Template'] = armor_trims_array
aliases['Any Armor Trim Smithing Template'] = armor_trims_array


return aliases