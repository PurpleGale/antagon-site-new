local p = {}

local i18n = {
	defaultBasePotion = 'Awkward Potion',
	defaultSplashPotion = 'Splash $1',
	defaultLingeringPotion = 'Lingering $1',
	specialPotionNames = {
		['Any Potion'] = {'Any Splash Potion', 'Any Lingering Potion'},
		['Awkward Potion'] = {'Awkward Splash Potion', 'Awkward Lingering Potion'},
		['Thick Potion'] = {'Thick Splash Potion', 'Thick Lingering Potion'},
		['Mundane Potion'] = {'Mundane Splash Potion', 'Mundane Lingering Potion'},
		['Uncraftable Potion'] = {'Uncraftable Splash Potion', 'Uncraftable Lingering Potion'},
	},
	moduleArgs = [[Module:ProcessArgs]],
	moduleRecipe = [[Module:Recipe table]],
	type = 'Brewing',
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
	args.base1 = args.base1 or args.base
	if not args.base1 and not args.base2 and not args.base3 then
		args.base1 = i18n.defaultBasePotion
	end
	
	local ingredientArgs = { 'Input', 'Base1', 'Base2', 'Base3' }
	local outputArgs = { 'Output1', 'Output2', 'Output3' }
	
	if args.showvariants then
		ingredientArgs = { 'Input', 'Base1' }
		outputArgs = { 'Output1' }
		local base2 = {}
		local base3 = {}
		local output2 = {}
		local output3 = {}
		for potion in mw.text.gsplit( args.base1, '%s*;%s*' ) do
			if i18n.specialPotionNames[potion] then
				table.insert( base2, i18n.specialPotionNames[potion][1] )
				table.insert( base3, i18n.specialPotionNames[potion][2] )
			else
				local splash = i18n.defaultSplashPotion:gsub( '%$1', potion )
				local lingering = i18n.defaultLingeringPotion:gsub( '%$1', potion )
				table.insert( base2, splash )
				table.insert( base3, lingering )
			end
		end
		for potion in mw.text.gsplit( args[2], '%s*;%s*' ) do
			if i18n.specialPotionNames[potion] then
				table.insert( output2, i18n.specialPotionNames[potion][1] )
				table.insert( output3, i18n.specialPotionNames[potion][2] )
			else
				local splash = i18n.defaultSplashPotion:gsub( '%$1', potion )
				local lingering = i18n.defaultLingeringPotion:gsub( '%$1', potion )
				table.insert( output2, splash )
				table.insert( output3, lingering )
			end
		end
		args.Base1 = args.base1
		args.Base2 = table.concat( base2, ';' )
		args.Base3 = table.concat( base3, ';' )
		args.Output1 = args[2]
		args.Output2 = table.concat( output2, ';' )
		args.Output3 = table.concat( output3, ';' )
	else
		args.Base1 = args.base2
		args.Base2 = args.base1
		args.Base3 = args.base3
		args.Output1 = args[3]
		args.Output2 = args[2]
		args.Output3 = args[4]
	end
	
	local out = recipeTable( args, {
		uiFunc = 'brewingStand',
		type = i18n.type,
		ingredientArgs = ingredientArgs,
		outputArgs = outputArgs,
	} )
	
	local title = mw.title.getCurrentTitle()
	
	return out
end

return p