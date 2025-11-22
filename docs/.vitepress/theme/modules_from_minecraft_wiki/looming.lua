local p = {}

local i18n = {
	categoryUpcoming = 'Category:Upcoming',
	moduleArgs = [[Module:ProcessArgs]],
	moduleRecipe = [[Module:Recipe table]],
	type = 'Loom',
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
	
	args.Banner = args[1]
	args.Dye = args[2]
	args.Pattern = args[3]
	args.Sprite = args[4]
	args.Output = args[5]
	
	local out = recipeTable( args, {
		uiFunc = 'loom',
		type = i18n.type,
		ingredientArgs = { 'Banner', 'Dye', 'Pattern' },
		outputArgs = { 'Output' },
	} )
	
	local title = mw.title.getCurrentTitle()
	local category
	if args.upcoming and args.nocat ~= '1' and title.namespace == 0 and not title.isSubpage then
		category = '[[' .. i18n.categoryUpcoming .. ']]'
	end
	
	return out, category
end

return p