local p = {}

-- Internationalization data
local i18n = {
	moduleArgs = [[Module:ProcessArgs]],
	moduleRecipe = [[Module:Recipe table]],
	moduleSlot = [[Module:Inventory slot]],
	type = 'Crafting'
}
p.i18n = i18n

-- Global dependencies and constants
local slot = require( i18n.moduleSlot )
local recipeTable = require( i18n.moduleRecipe ).table
local cArgVals = { 'A1', 'B1', 'C1', 'A2', 'B2', 'C2', 'A3', 'B3', 'C3' }
p.cArgVals = cArgVals

-- Service function: Automatically arrange the shapeless recipe set by numbered
-- parameters
local function arrangeShapelessRecipe(args)
	if args[1] then
		args.shapeless = 1
		if args[7] then
			args.A1 = args[1]
			args.B1 = args[2]
			args.C1 = args[3]
			args.A2 = args[4]
			args.B2 = args[5]
			args.C2 = args[6]
			if args[8] then
				-- ◼◼◼      ◼◼◼
				-- ◼◼◼  OR  ◼◼◼
				-- ◼◼◼      ◼◼◻
				-- (where ◼ is filled slot, ◻ is empty slot)
				args.A3 = args[7]
				args.B3 = args[8]
				args.C3 = args[9]
				if args[9] then
					-- If all slots are the same, the recipe is not shapeless
					local identical = true
					for i = 1, 8 do
						if args[i] ~= args[i + 1] then
							identical = false
							break
						end
					end
					if identical then
						args.shapeless = nil
					end
				end
			else
				-- ◼◼◼
				-- ◼◼◼
				-- ◻◼◻
				args.B3 = args[7]
			end
		elseif args[2] then
			args.A2 = args[1]
			args.B2 = args[2]
			if args[5] then
				-- ◻◻◻      ◻◻◻
				-- ◼◼◼  OR  ◼◼◼
				-- ◼◼◼      ◼◼◻
				args.C2 = args[3]
				args.A3 = args[4]
				args.B3 = args[5]
				args.C3 = args[6]
			elseif args[4] then
				-- ◻◻◻
				-- ◼◼◻
				-- ◼◼◻
				args.A3 = args[3]
				args.B3 = args[4]
			else
				-- ◻◻◻      ◻◻◻
				-- ◼◼◻  OR  ◼◼◻
				-- ◻◼◻      ◻◻◻
				args.B3 = args[3]
			end
		else
			-- ◻◻◻
			-- ◻◼◻
			-- ◻◻◻
			-- Recipe with only one ingredient is not shapeless
			args.B2 = args[1]
			args.shapeless = nil
		end
		
		-- Clear the original numbered parameters;
		-- [[Module:UI]].craftingTable() doesn’t need them
		for i = 1, 9 do
			args[i] = nil
		end
	end
end

-- Main entry point
function p.table( f )
	-- Process the arguments
	local args = f
	if f == mw.getCurrentFrame() then
		args = require( i18n.moduleArgs ).merge( true )
	else
		f = mw.getCurrentFrame()
	end
	
	-- Arrange the shapeless recipe
	arrangeShapelessRecipe(args)
	
	-- Create the recipe table and save the data
	local out = recipeTable( args, {
		uiFunc = 'craftingTable',
		type = i18n.type,
		ingredientArgs = cArgVals,
		outputArgs = { 'Output' },
		saveToDatabase = true,
		otherArgsToSave = {"type", "shapeless", "fixed", "notfixed", "group"},
		extraProperties = { ["type"] = args.type }
	} )
	
	return out
end

return p