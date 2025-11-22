local m = {}

-- Internationalization
local i18n = {
	-- Dependencies
	moduleSlot = [[Module:Inventory slot]],
	moduleUi = [[Module:UI]],
	
	-- Table headings
	headingDescription = 'Description',
	headingIngredients = 'Ingredients',
	headingName = 'Name',
	headingRecipe = '[[$1]] recipe', -- may require an inflected form instead
	headingRecipeFallback = 'Recipe', -- if one table has multiple recipe types
	
	-- Ingredient separator
	separator = '&nbsp;+',
	setSeparator = '&nbsp;or',
	
	-- Table data description
	tableDescription = '$1 recipes', -- may require an inflected form instead
	tableDescriptionFallback = 'Recipes',
	
	-- Property naming format (may require an inflected form instead)
	propertyIngredients = '$1 ingredient',
	propertyJSON = '$1 JSON',
	propertyOutput = '$1 output',
	propertyExtra = '$1 $2'
}

-- Global dependencies and constants
local slot = require( i18n.moduleSlot )
local prefixes = slot.i18n.prefixes
local curTitle = mw.title.getCurrentTitle()

-- Loops through the input and output args and parses them into a single table,
-- with alias reference data.
-- Identical slots reuse the same table, to allow them to be compared
-- like strings.
-- The first parameter is module arguments table, the second and third are names
-- of ingredient and output arguments respectively.
local function parseRecipeArgs( args, ingredientArgVals, outputArgs )
	-- Raw arguments
	local recipeArgs = {}
	local isOutputArg = {}
	for _, arg in pairs( ingredientArgVals ) do
		recipeArgs[arg] = args[arg]
	end
	for _, arg in pairs( outputArgs ) do
		recipeArgs[arg] = args[arg]
		isOutputArg[arg] = 1
	end
	
	-- Argument parsing
	local parsedFrameText = {}
	local parsedRecipeArgs = {}
	for arg, frameText in pairs( recipeArgs ) do
		if frameText then -- is there any frame content?
			local randomise
			if isOutputArg[arg] then
				-- Do not randomize output parameters
				randomise = 'never'
			end
			
			-- Remember the frame sequence
			-- TODO: Normalize (frame sequences with minute whitespace changes
			-- but the same content are currently treated as different)
			local frames = not randomise and parsedFrameText[frameText]
			if not frames then
				frames = slot.parseFrameText( frameText, randomise, true )
				parsedFrameText[frameText] = frames
			end
			parsedRecipeArgs[arg] = frames
		end
	end
	
	return parsedRecipeArgs
end

-- Creates a link (with mod name if specified) with any prefix moved outside
function m.prefixedLink( name, mod )
	-- Search for and remove prefixes
	local prefix = ''
	for _, thisPrefix in pairs( prefixes ) do
		if name:find( '^' .. thisPrefix .. ' ' ) then
			-- Prefix found, strip it away
			prefix = thisPrefix .. ' '
			name = name:sub( #prefix + 1 )
			
			-- Also remove unwaxed prefixes
			-- TODO: Make it less hard-coded
			if name:find( '^' .. prefixes.unwaxed .. ' ' ) then
				prefix = prefix .. prefixes.unwaxed .. ' '
				name = name:sub( #prefixes.unwaxed + 1 )
			end
			break
		end
	end
	
	-- Legacy: Add the mod prefix, if specified
	-- NB: When disabling mod support, please comment the code out instead of
	-- deleting it. While EnMCW doesn’t cover mods, other wikis who adapt its
	-- templates and modules may do.
	local page = name
	if mod then
		page = (slot.i18n.modLink
		           :gsub( '%$1', mod )
		           :gsub( '%$2', name:gsub('^%l', string.upper) )
		)
	end
	
	return table.concat{ prefix, '[[', page, '|', name, ']]' }
end

-- Creates sets of unique items from a set of slots, using the original alias
-- name if available. Each set of items are the frames of that slot. These sets
-- are used for automatically generating links in ingredient and output cells.
-- The first parameter is a list of argument names, the second is a table of
-- argument values processed with parseRecipeArgs().
-- If the third parameter is true, also returns unique items (including aliases
-- and their contents) to save in SMW, so that they can be queried for in
-- templates like Crafting usage.
function m.makeItemSets( argVals, parsedArgs, listUnique )
	-- Add an item (arg 2) to the specific set (arg 1), as long as it was not
	-- added before (whether to the current set or to a previous one). If we’re
	-- dealing with an alias (arg 3 provides reference data), its original name
	-- is added instead of the current frame (which will be the first frame in
	-- that alias’ expansion).
	local usedItems = {}
	local function addItemToSet( items, frame, alias )
		-- This function accepts the current item set, the current frame, and
		-- the alias reference data if present. 
		if alias then
			frame = alias.frame
		end
		
		-- Add the item, if not added already
		local uniqName = ( frame.mod or '' ) .. ':' .. frame.name
		if not usedItems[uniqName] then
			usedItems[uniqName] = true
			items[#items + 1] = frame
		end
		
		-- Return the number of frames for the processing loop to advance by.
		-- For a group alias, return the number of frames it expands to.
		-- This way, the loop can skip over the remaining frames.
		return alias and alias.length or 1
	end
	
	-- Add item to the unique lists if asked
	local uniqueItems, usedUniqueItems, addUniqueItems
	if listUnique then
		uniqueItems = {}
		usedUniqueItems = {}
		addUniqueItems = function(frames, frameStart, frameCount, alias)
			-- This function takes advantage of group aliases already being
			-- expanded in the parsed args list by this point. The first para-
			-- meter is the frame table (or subframe container), the second is
			-- the starting (sub)frame index, the third is the number of frames
			-- to process (larger than one if dealing with a group alias), the
			-- fourth is alias reference data.
			if alias then
				-- Add the original alias’ name to unique items. This way we can
				-- query recipes by alias names.
				local uniqAliasName = alias.frame.name
				if alias.frame.mod then
					uniqAliasName = alias.frame.mod .. ":" .. alias.frame.name
				end
				if not usedUniqueItems[uniqAliasName] then
					usedUniqueItems[uniqAliasName] = true
					uniqueItems[#uniqueItems+1] = uniqAliasName
				else
					-- The alias’ expanded frames are assumed to be already added
					return
				end
			end
			
			-- Determine index for the last frame to add; the same as start if
			-- dealing with a single frame
			local frameEnd = frameStart
			if frameCount > 1 then
				frameEnd = frameStart + frameCount - 1
				if frameEnd > #frames then
					frameEnd = #frames
				end
			end
			
			-- Add each frame to the unique items
			for i = frameStart, frameEnd do
				local curFrame = frames[i]
				if curFrame.name then
					local uniqName = curFrame.name
					if curFrame.mod then
						uniqName = curFrame.mod .. ':' .. curFrame.name
					end
					if not usedUniqueItems[uniqName] then
						usedUniqueItems[uniqName] = true
						uniqueItems[#uniqueItems+1] = uniqName
					end
				end
			end
		end
	else
		-- No-op if not asked for unique items
		addUniqueItems = function() end
	end
	
	-- Process the parsed argument values
	local itemSets = {}
	local i = 1
	for _, arg in ipairs( argVals ) do
		local frames = parsedArgs[arg]
		if frames then -- not empty
			local items = {}
			local frameNum = 1
			while frameNum <= #frames do
				-- A while loop is used instead of for so that we can skip alias
				-- expansions
				local frame = frames[frameNum]
				if frame[1] then
					-- The frame is a subframe container (curly braces), process
					-- it like the entire frame sequence
					local subframeNum = 1
					while subframeNum <= #frame do
						local subframe = frame[subframeNum]
						if subframe.name ~= '' then
							-- Add the current subframe to the item set (and
							-- unique items, if asked). If it’s part of an alias
							-- expansion, add the alias to the set instead and
							-- skip over the other subframes from that alias;
							-- addUniqueItems will add both the alias and its
							-- expansion’s frames to the unique items list.
							local alias = frame.aliasReference and frame.aliasReference[subframeNum]
							local aliasLength = addItemToSet( items, subframe, alias )
							addUniqueItems(frame, subframeNum, aliasLength, alias)
							subframeNum = subframeNum + aliasLength
						else
							-- Empty frame
							subframeNum = subframeNum + 1
						end
					end
					frameNum = frameNum + 1
				elseif frame.name ~= '' then
					-- Add the current frame (or its parent alias)
					local alias = frames.aliasReference and frames.aliasReference[frameNum]
					local aliasLength = addItemToSet( items, frame, alias )
					addUniqueItems(frames, frameNum, aliasLength, alias)
					frameNum = frameNum + aliasLength
				else
					-- Empty frame
					frameNum = frameNum + 1
				end
			end
			if #items > 0 then
				-- Add the current item set to the list
				itemSets[i] = items
				i = i + 1
			end
		end
	end
	
	return itemSets, uniqueItems
end

-- Creates links for the name/ingredients columns out of item sets, with the
-- appropriate separators, and optionally "Any" and "Matching" prefixes removed.
function m.makeItemLinks( itemSets, removePrefixes )
	-- Iterate over item sets
	local links = {}
	for i, itemSet in ipairs( itemSets ) do
		local linkSet = {}
		for i2, item in ipairs( itemSet ) do
			local name = item.name
			if removePrefixes then
				-- Remove prefixes and uppercase first letter
				name = name
					:gsub( '^' .. prefixes.any .. ' ', '' )
					:gsub( '^' .. prefixes.matching .. ' ', '' )
					:gsub( '^%l', string.upper )
			end
			
			-- Create the link(s)
			-- “A or B” names are treated like two separate items in a set.
			local disjunctionA, disjunctionB = name:match("(.-) or (.+)")
			if disjunctionA then
				linkSet[i2] = m.prefixedLink( disjunctionA, item.mod ) 
				    .. i18n.setSeparator
				    .. m.prefixedLink( disjunctionB, item.mod )
			else
				linkSet[i2] = m.prefixedLink( name, item.mod )
			end
		end
		links[i] = table.concat( linkSet, i18n.setSeparator .. '<br>' )
	end
	
	return table.concat( links, i18n.separator .. '<br>' )
end

-- Creates the table header. Accepts the recipe’s settings, the recipe type
-- name’s override, the table’s CSS class, flags for controlling whether to show
-- name and description columns, and the multirow flag (controls whether the
-- table will be sortable).
function m.makeHeader(recipeSettings, recipeTypeOverride, class, showName, showDescription, multirow)
	-- CSS class
	class = class or ''
	
	-- Recipe result’s name
	local nameCell = ''
	if showName then
		nameCell = i18n.headingName .. '!!'
	end
	
	-- Recipe’s description
	local descriptionCell = ''
	if showDescription then
		descriptionCell = '!!class="unsortable"|' .. i18n.headingDescription
	end
	
	-- If the table has multiple rows, make the table sortable except the
	-- recipe cell. If present, the description cell is made unsortable above
	local recipeAttribs = ''
	if multirow then
		class = 'sortable ' .. class
		recipeAttribs = 'class="unsortable"|'
	end
	
	-- Recipe heading and table description
	local headingRecipe = i18n.recipeHeadingFallback
	local tableDescription = i18n.tableDescriptionFallback
	if recipeTypeOverride ~= 'none' and recipeSettings.type then
		headingRecipe = i18n.headingRecipe:gsub( '%$1', recipeTypeOverride or recipeSettings.type )
		tableDescription = i18n.tableDescription:gsub( '%$1', recipeTypeOverride or recipeSettings.type )
		
		-- If using an inflected language like Russian, you may want to use a
		-- grammatically appropriate form of recipeSettings.type supplied by a
		-- separate setting, like this:
		--headingRecipe = i18n.headingRecipe:gsub( '%$1', recipeSettings.type .. '|' .. recipeSettings.ofType )
	end
	
	-- Header
	local header = table.concat( {
		' {| class="wikitable collapsible ' .. class .. '" data-description="' .. tableDescription .. '"',
		'!' .. nameCell ..
		i18n.headingIngredients .. '!!' ..
		recipeAttribs .. headingRecipe ..
		descriptionCell
	}, '\n' )
	return header
end

-- Create the contents for the name cell
function m.makeNameCell( name, itemSets )
	return name or m.makeItemLinks( itemSets, true )
end

-- Create the contents for the ingredients cell
function m.makeIngredientsCell( ingredients, itemSets )
	return ingredients or m.makeItemLinks( itemSets )
end

-- Create a database entry with recipe data for querying
-- Powered by Semantic MediaWiki
function m.saveToDatabase(args, ingredientItems, outputItems, settings)
	if not settings.type then
		error("Missing type in recipe settings (required for saving recipe data)")
	end
	
	-- Main data
	local recipeData = {
		-- Standard parameters
		["description"] = mw.text.unstrip(args.description or ''), --Remove ref tags
		["name"] = args.name,
		["ingredients"] = args.ingredients,
		["nocat"] = args.nocat,
	}
	-- Also save ingredient and output arguments, as well as a few others that
	-- might be important for the specific recipe (like Crafting’s shapeless)
	for _, arg in ipairs(settings.ingredientArgs) do
		recipeData[arg] = args[arg]
	end
	for _, arg in ipairs(settings.outputArgs) do
		recipeData[arg] = args[arg]
	end
	if settings.otherArgsToSave then
		for _, arg in ipairs(settings.otherArgsToSave) do
			recipeData[arg] = args[arg]
		end
	end
	local recipeJson = mw.text.jsonEncode(recipeData)
	
	-- The subobject
	local smwSubobject = {
		[i18n.propertyJSON:gsub("%$1", settings.type)] = recipeJson,
		[i18n.propertyIngredients:gsub("%$1", settings.type)] = ingredientItems,
		[i18n.propertyOutput:gsub("%$1", settings.type)] = outputItems
	}
	
	-- Additional recipe-specific properties to save
	if settings.extraProperties then
		local propertyExtra = i18n.propertyExtra:gsub("%$1", settings.type)
		for k, v in pairs(settings.extraProperties) do
			k = propertyExtra:gsub("%$2", k)
			smwSubobject[k] = v
		end
	end
	
	-- A unique name is needed for our subobject
	-- It will be like CRAFTING_(first_output)_boomdeyadaboomdeyadaxd
	local smwSubobjectName = table.concat({settings.type:upper(), outputItems[1], mw.hash.hashValue("md4",recipeJson)}, "_")
	
	-- Save
	mw.smw.subobject(smwSubobject, smwSubobjectName)
end

-- Main entry point: Creates the table with the relevant DPL vars to allow
-- multiple table rows from separate template calls. Also returns ingredient and
-- output item sets.
-- If set in the recipe settings, also saves the recipe data to database so it
-- can be queried using templates like Crafting usage.
-- Call this function from a different module — recipe settings can’t be passed
-- from a template via #invoke.
function m.table( args, settings )
	-- Current MediaWiki frame
	local f = mw.getCurrentFrame()
	
	-- are we continuing a previous table?
	local multirow = f:callParserFunction( '#dplvar', 'recipetable-multirow' )
	if multirow == '' then
		multirow = nil
	end
	
	-- Table head and foot parameters
	local showHead = args.head
	local showFoot = args.foot
	if multirow then
		-- ignore head if continuing a table
		showHead = nil
	elseif showHead and not showFoot then
		-- table head
		multirow = true
		f:callParserFunction( '#dplvar:set', 'recipetable-multirow', '1' )
	else
		-- only one row
		showHead = true
		showFoot = true
	end
	
	-- Do we show product names and recipe descriptions for this table?
	local showName = args.showname
	local showDescription = args.showdescription
	if multirow then
		if showHead then
			showName = args.showname or '1'
			f:callParserFunction( '#dplvar:set', 'recipetable-name', showName, 'recipetable-description', showDescription )
		else
			showName = f:callParserFunction( '#dplvar', 'recipetable-name' )
			showDescription = f:callParserFunction( '#dplvar', 'recipetable-description' )
		end
	end
	if showName ~= '1' then
		showName = nil
	end
	if showDescription == '' then
		showDescription = nil
	end
	
	-- Components of the recipe table or its part
	local out = {}
	
	-- Table header
	if showHead then
		out[1] = m.makeHeader( settings, args.recipeType, args.class, showName, showDescription, multirow )
	end
	
	-- Argument processing
	local ingredientArgVals = settings.ingredientArgs
	local outputArgs = settings.outputArgs
	
	-- Parse the arguments
	local parsedRecipeArgs = args
	if not args.parsed then
		parsedRecipeArgs = parseRecipeArgs( args, ingredientArgVals, outputArgs )
	end
	
	-- Are we saving recipe data to SMW?
	-- Must be explicitly enabled in the recipe settings, can be disabled by the
	-- ignoreusage parameter, and is never done on non-article namespaces or
	-- subpages (hopefully the latter condition will be temporary).
	local saveToDatabase = settings.saveToDatabase and not (args["ignoreusage"] or curTitle.namespace ~= 0 or curTitle.isSubpage) 
	
	-- Row cells
	local cells = {}
	
	-- Cell with names for the recipe’s product(s) (optional)
	local outputItemSets, uniqueOutputItems = m.makeItemSets( outputArgs, parsedRecipeArgs, saveToDatabase )
	if showName then
		cells[1] = '!' .. m.makeNameCell( args.name, outputItemSets )
	end
	
	-- Cell with ingredients for the recipe
	local ingredientsItemSets, uniqueIngredientItems = m.makeItemSets( ingredientArgVals, parsedRecipeArgs, saveToDatabase )
	cells[#cells + 1] = '|' .. m.makeIngredientsCell( args.ingredients, ingredientsItemSets )
	
	-- Cell with the recipe itself
	local funcUi = require( i18n.moduleUi )[settings.uiFunc]
	cells[#cells + 1] = '|style="padding:1px;text-align:center"|' .. funcUi(args)
	
	-- Cell with the recipe’s description (optional)
	if showDescription then
		cells[#cells + 1] = '|' .. ( args.description or '' )
	end
	
	-- Put all cells together into a row
	out[#out + 1] = table.concat( cells, '\n' )
	
	-- Table footer
	out[#out + 1] = showFoot and '|}' or ''
	if showFoot then
		f:callParserFunction( '#dplvar:set',
			'recipetable-multirow', '',
			'recipetable-name', '',
			'recipetable-description', ''
		)
	end
	
	-- Save recipe data if asked to
	if saveToDatabase then
		m.saveToDatabase(args, uniqueIngredientItems, uniqueOutputItems, settings)
	end
	
	return table.concat( out, '\n|-\n' ), ingredientsItemSets, outputItemSets
end

return m