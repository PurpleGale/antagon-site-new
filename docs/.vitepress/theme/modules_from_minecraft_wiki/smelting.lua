local p = {}

local i18n = {
	defaultFuel = 'Any fuel',
	moduleArgs = [[Module:ProcessArgs]],
	moduleRecipe = [[Module:Recipe table]],
	type = 'Smelting',
}
p.i18n = i18n

local recipeTable = require( i18n.moduleRecipe ).table

function p.table( f )
	local args = f
	if f == mw.getCurrentFrame() then
		args = require( i18n.moduleArgs ).merge( true )
	else
		f = mw.getCurrentFrame()
	end
	
	args.Input = args[1]
	args.Output = args[2]
	args.Experience = args[3]
	args.Fuel = args.fuel or i18n.defaultFuel
	
	local out = recipeTable( args, {
		uiFunc = 'furnace',
		type = i18n.type,
		ingredientArgs = { 'Input', 'Fuel' },
		outputArgs = { 'Output' },
	} )
	
	local title = mw.title.getCurrentTitle()
	
	return out, category
end

return p