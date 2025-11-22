local slot = require( [[Module:Inventory slot]] ).slot
local p = {}

local function addSlot( args, item, prefix, class, default )
	local none, nostacksize
	prefix = prefix or ''
	if #prefix == 0 then
		none = 'none'
		nostacksize = ((item == '' or nil) and '') or (args and args[item] and args[item]:gsub( '[,%d]', '' ) or '')
	end
	return slot{
		nostacksize or args[item], mod = args.Mod, link = none or args[prefix .. 'link'],
		title = none or args[prefix .. 'title'], class = class, default = default,
		parsed = args.parsed
	}
end

local function experience_class(exp_value)
	local MINMAX = {
	  {-32768, 2},
	  {3, 6},
	  {7, 16},
	  {17, 36},
	  {37, 72},
	  {73, 148},
	  {149, 306},
	  {307, 616},
	  {617, 1236},
	  {1237, 2476},
	  {2477, 32767}
	}

	local EXP_IMGS = {
		"xp-2",
		"xp-6",
		"xp-16",
		"xp-36",
		"xp-72",
		"xp-148",
		"xp-306",
		"xp-616",
		"xp-1236",
		"xp-2476",
		"xp-32767",
	}
	
	local n = assert( tonumber(exp_value), "Module:UI: Experience value is not a number (" .. exp_value .. ")" )
	
	local idx = 2; exp = tonumber( exp_value )
	if exp <= MINMAX[#MINMAX][2] then
	  for i = 1, #MINMAX do
		if MINMAX[i][1] < exp and MINMAX[i][2] >= exp then
		  idx = i
		  break
		end
	  end
	end
	
	return tostring( EXP_IMGS[idx] )
end

-- Crafting table
function p.craftingTable( f )
	local args = f
	if f == mw.getCurrentFrame() then
		args = f:getParent().args
	else
		f = mw.getCurrentFrame()
	end
	
	local body = mw.html.create( 'span' ):addClass( 'mcui mcui-Crafting_Table pixel-image' )
	
	local input = body:tag( 'span' ):addClass( 'mcui-input' )
	for num = 1, 3 do
		local row = input:tag( 'span' ):addClass( 'mcui-row' )
		for _, letter in ipairs{ 'A', 'B', 'C' } do
			row:wikitext( addSlot( args, letter .. num, letter .. num ) )
		end
	end
	
	local arrow = body:tag( 'span' ):addClass( 'mcui-arrow' ):tag( 'br' ):done()
	
	body
		:tag( 'span' )
			:addClass( 'mcui-output' )
			:wikitext( addSlot( args, 'Output', 'O', 'invslot-large' ) )
	
	local shapeless = args.shapeless or ''
	local fixed = args.fixed or ''
	if shapeless ~= '' or fixed ~= '' then
		local icon = body:tag( 'span' )
			:addClass( 'mcui-icons' )
			:tag( 'span' )
				:tag( 'br' )
			:done()
		if shapeless ~= '' then
			icon:addClass( 'mcui-shapeless' )
				:attr( 'title',
					'This recipe is shapeless; the inputs may be placed in any arrangement in the crafting grid.'
				)
		elseif fixed ~= '' then
			local notFixed = args.notfixed or ''
			local exceptFixed = ''
			if notFixed ~= '' then
				exceptFixed = '; except for ' .. notFixed .. ', which can go anywhere'
			end
			
			icon:addClass( 'mcui-fixed' )
				:attr( 'title',
					'This recipe is fixed; the input arrangement may not be moved or mirrored in the crafting grid' .. exceptFixed .. '.'
				)
		end
	end
	
	return tostring( mw.html.create( 'div' ):node( body ) )
end

-- Furnace
function p.furnace( f )
	local args = f
	if f == mw.getCurrentFrame() then
		args = f:getParent().args
	else
		f = mw.getCurrentFrame()
	end
	
	local body = mw.html.create( 'span' ):addClass( 'mcui mcui-Furnace pixel-image' )
	
	local input = body:tag( 'span' ):addClass( 'mcui-input' )
	input:wikitext( addSlot( args, 'Input', 'I' ) )
	local fuel = input:tag( 'span' ):addClass( 'mcui-fuel' ):tag( 'br' ):done()
	local burning = args.Input or '' ~= '' and args.Fuel or '' ~= ''
	if not burning then
		fuel:addClass( 'mcui-inactive' )
	end
	
	input:wikitext( addSlot( args, 'Fuel', 'F' ) )
	
	local arrow = body:tag( 'span' ):addClass( 'mcui-arrow' ):tag( 'br' ):done()
	if not burning or ( args.Output or '' ) == '' then
		arrow:addClass( 'mcui-inactive' )
	end
	
	body
		:tag( 'span' )
			:addClass( 'mcui-output' )
			:wikitext( addSlot( args, 'Output', 'O', 'invslot-large' ) )
			
	args.Experience = args.Experience or ''
	if args.Experience ~= '' then
		-- Converts commas to dots, removes all spaces and splits the arguments with semicolon.
		local split = mw.text.split(string.gsub(args.Experience, '[ ,]', {[' '] = '', [','] = '.'}), ';', true)
		local animated = body:tag('span')
				:attr('title', 'XP reward. If there is a fractional part, it means the recipe has a chance equal to the fractional part of rewarding an additional XP point.')
				:addClass('animated mcui-experience')
		local isNotFirst = true
		for i, v in ipairs(split) do
			local xp = tonumber(v)
			assert(xp, 'Module:UI: "' .. v .. '" is not a valid number')
			local xpWrapper = animated:tag('span')
					:addClass(isNotFirst and 'animated-active' or nil)
			xpWrapper:tag('span')
					:addClass(experience_class(xp) .. ' mcui-experience-orb')
			xpWrapper:tag('span')
					:addClass('mcui-experience-text')
					:wikitext(('&nbsp;' and xp > 72 or '') .. xp)
			isNotFirst = false
		end
	end
	
	return tostring( mw.html.create( 'div' ):node( body ) )
end

-- Brewing Stand
function p.brewingStand( f )
	local args = f
	if f == mw.getCurrentFrame() then
		args = f:getParent().args
	else
		f = mw.getCurrentFrame()
	end
	
	local body = mw.html.create( 'span' ):addClass( 'mcui mcui-Brewing_Stand pixel-image' )
	
	local input = body:tag( 'span' ):addClass( 'mcui-input' )
	input:tag( 'span' ):addClass( 'mcui-bubbling' ):tag( 'br' )
	input:wikitext( addSlot( args, 'Input', 'I' ) )
	input:tag( 'span' ):addClass( 'mcui-arrow' ):tag( 'br' )
	if ( args.Input or '' ) == '' or
		( ( args.Output1 or '' ) == '' and ( args.Output2 or '' ) == '' and ( args.Output3 or '' ) == '' )
	then
		input:addClass( 'mcui-inactive' )
	end
	
	body
		:tag( 'span' )
			:addClass( 'mcui-paths' )
			:tag( 'br' )
	
	if ( ( args.Base1 or '' ) ~= '' or ( args.Base2 or '' ) ~= '' or ( args.Base3 or '' ) ~= '' ) then
		local base = body:tag( 'span' ):addClass( 'mcui-base' )
		local arrows = body:tag( 'span' ):addClass( 'mcui-arrowDown' )
		for i = 1, 3 do
			base:wikitext( addSlot( args, 'Base' .. i, 'B' .. i, 'mcui-base' .. i ) )
			arrows:tag( 'span' ):addClass( 'mcui-arrowDown' .. i ):tag( 'br' )
		end
	end
	
	local output = body:tag( 'span' ):addClass( 'mcui-output' )
	for i = 1, 3 do
		output:wikitext( addSlot( args, 'Output' .. i, 'O' .. i, 'mcui-output' .. i ) )
	end
	
	return tostring( mw.html.create( 'div' ):node( body ) )
end

-- Stonecutter
function p.stonecutter( f )
	local args = f
	if f == mw.getCurrentFrame() then
		args = f:getParent().args
	else
		f = mw.getCurrentFrame()
	end
	
	local body = mw.html.create( 'span' ):addClass( 'mcui mcui-Stonecutter pixel-image' )
	
	local input = body:tag( 'span' ):addClass( 'mcui-input' )
	input:wikitext( addSlot( args, 'Input', 'I' ) )
	
	local arrow = body:tag( 'span' ):addClass( 'mcui-stonecutterArrow' )
	arrow:wikitext( addSlot( args, 'Output', '', 'invslot-plain mcui-stonecutterSprite' ) )
	
	body
		:tag( 'span' )
			:addClass( 'mcui-output' )
			:wikitext( addSlot( args, 'Output', 'O', 'invslot-large' ) )
	
	return tostring( mw.html.create( 'div' ):node( body ) )
end

-- Loom
function p.loom( f )
	local args = f
	if f == mw.getCurrentFrame() then
		args = f:getParent().args
	else
		f = mw.getCurrentFrame()
	end
	
	local body = mw.html.create( 'span' ):addClass( 'mcui mcui-Loom pixel-image' )
	
	local tapestry = body:tag( 'span' ):addClass( 'mcui-tapestry' )
	if args.Banner and #args.Banner>0 then
		tapestry:wikitext( addSlot( args, 'Banner', 'B', 'mcui-inputBanner' ) )
	end
	if args.Dye and #args.Dye>0 then
		tapestry:wikitext( addSlot( args, 'Dye', 'D', 'mcui-inputDye' ) )
	end
	if args.Pattern and #args.Pattern>0 then
		tapestry:wikitext( addSlot( args, 'Pattern', 'P', 'mcui-inputPattern' ) )
	end
	tapestry:tag( 'span' ):tag( 'br' ):done()
	local arrow = body:tag( 'span' ):addClass( 'mcui-loomArrow' )
	
	local bannerSprite
	if args.Sprite and #args.Sprite > 0 then
		local animate = require( [[Module:AnimateSprite]] ).animate
		bannerSprite = animate{
			args.Sprite,
			name = 'SlotSprite'
		}
	else
		bannerSprite = '<br>'
	end
	
	arrow
		:tag( 'span' )
			:addClass( 'mcui-bannerSprite' )
			:wikitext( bannerSprite )
	
	body
		:tag( 'span' )
			:addClass( 'mcui-output' )
			:wikitext( addSlot( args, 'Output', 'O', 'invslot-large' ) )
	
	return tostring( mw.html.create( 'div' ):node( body ) )
end

-- Grindstone
function p.grindstone( f )
	local args = f
	if f == mw.getCurrentFrame() then
		args = f:getParent().args
	else
		f = mw.getCurrentFrame()
	end
	
	local body = mw.html.create( 'span' ):addClass( 'mcui mcui-Grindstone pixel-image' )
	
	local grindstone = body:tag( 'span' ):addClass( 'mcui-grindstone' )
	grindstone:wikitext( addSlot( args, 'Input1', 'I1', 'mcui-input1' ) )
	grindstone:wikitext( addSlot( args, 'Input2', 'I2', 'mcui-input2' ) )
		
	local arrow = body:tag( 'span' ):addClass( 'mcui-arrow' )
	
	body
		:tag( 'span' )
			:addClass( 'mcui-output' )
			:wikitext( addSlot( args, 'Output', 'O', 'invslot-large' ) )
	
	return tostring( mw.html.create( 'div' ):node( body ) )
end

-- Smithing Table
function p.smithing(f) 
	local args = f
	if f == mw.getCurrentFrame() then
		args = f:getParent().args
	else
		f = mw.getCurrentFrame()
	end
	
	local body = mw.html.create( 'span' ):addClass( 'mcui mcui-Smithing_Table pixel-image' )
	
	local smithingTable = body:tag( 'span' ):addClass( 'mcui-smithingTable' )
	smithingTable:wikitext( addSlot( args, 'Input1', 'I1', 'mcui-input1' ) )
	smithingTable:wikitext( addSlot( args, 'Input2', 'I2', 'mcui-input2' ) )
	smithingTable:wikitext( addSlot( args, 'Input3', 'I3', 'mcui-input3' ) )
		
	local arrow = body:tag( 'span' ):addClass( 'mcui-arrow' )
	arrow:cssText([[display: inline-block;
					width: 44px;
					height: 30px;
					margin: 3px 18px;
					vertical-align: top;]])
	
	if args.crossed then
		arrow:addClass('mcui-inactive')
	end
	
	body
		:tag( 'span' )
			:addClass( 'mcui-output' )
			:wikitext( addSlot( args, 'Output', 'O', 'invslot' ) )
	
	return tostring( mw.html.create( 'div' ):node( body ) )
end

-- Anvil
function p.anvil(f) 
	local args = f
	if f == mw.getCurrentFrame() then
		args = f:getParent().args
	else
		f = mw.getCurrentFrame()
	end

	local body = mw.html.create( 'span' ):addClass( 'mcui mcui-Anvil pixel-image' )
	
	local hammer = body:tag( 'span' ):addClass('mcui-hammer')
	hammer:cssText([[display: block;
					 width: 60px;
					 height: 60px;]])
	                    
	local title = body:tag( 'span' ):addClass('mcui-Anvil-inputbox mcui-input')
	local itemName
	if args.Input1 and #args.Input1 > 0 then
		local animate = require( [[Module:AnimateText]] ).animate
		itemName = animate{
			args.Input1:gsub('Damaged ', ''):gsub( ';' , ',,' )
	    }
	else
		title:addClass( 'mcui-inactive' )
		itemName = '<br>'
	end
	title:wikitext( ( itemName:gsub( 'class="animated"', 'class="mcui-Anvil-inputtext animated"' ) ) )
	
	local anvilA = body:tag( 'span' ):addClass( 'mcui-anvil' ):css('margin-left', '18px')
	anvilA:wikitext( addSlot( args, 'Input1', 'I1', 'mcui-input1' ) )
	
	local plus = body:tag( 'span' ):addClass( 'mcui-plus' )
	plus:cssText([[display: inline-block;
				   width: 26px;
				   height: 26px;
				   margin: 6px 18px;
				   vertical-align: top;]])
	
	local anvilB = body:tag( 'span' ):addClass( 'mcui-anvil' )
	anvilB:wikitext( addSlot( args, 'Input2', 'I2', 'mcui-input2' ) )
		
	local arrow = body:tag( 'span' ):addClass( 'mcui-arrow' )
    arrow:cssText([[display: inline-block;
					width: 44px;
					height: 30px;
					margin: 4px 18px;
					vertical-align: top;]])
	
	if args.crossed then
		arrow:addClass('mcui-inactive')
	end
	
	body
		:tag( 'span' )
			:addClass( 'mcui-output' )
			:css( 'margin-right', '18px' )
			:wikitext( addSlot( args, 'Output', 'O', 'invslot' ) )
	
	if args.cost then
		local cost = body:tag('span'):addClass('mcui-Anvil-cost')
		if args.expensive then
			cost:addClass('mcui-Anvil-cost-expensive')
		else
			cost:addClass('mcui-Anvil-cost-normal')
		end
		
		if args.cost == 'expensive' then
			cost:wikitext('Too expensive')
		else
			cost:wikitext('Enchantment Cost: ' .. args.cost)
		end
	end
	
	local wrapper = mw.html.create( 'div' )
	wrapper:wikitext( require( [[Module:TSLoader]] ).call( "Anvil/styles.css" ) )
	return tostring( wrapper:node( body ) )
end

function p.legacySmithing(f) 
	local args = f
	if f == mw.getCurrentFrame() then
		args = f:getParent().args
	else
		f = mw.getCurrentFrame()
	end

	local body = mw.html.create( 'span' ):addClass( 'mcui mcui-Smithing_Table pixel-image' )
	
	local smithingA = body:tag( 'span' ):addClass( 'mcui-smithingTable' )
	smithingA:wikitext( addSlot( args, 'Input1', 'I1', 'mcui-input1' ) )
	
	local plus = body:tag( 'span' ):addClass( 'mcui-plus' )
	plus:cssText([[display: inline-block;
				   width: 26px;
				   height: 26px;
				   margin: 6px 18px;
				   vertical-align: top;]])
	
	local smithingB = body:tag( 'span' ):addClass( 'mcui-smithingTable' )	
	smithingB:wikitext( addSlot( args, 'Input2', 'I2', 'mcui-input2 invslot-default-smithing' ) )
		
	local arrow = body:tag( 'span' ):addClass( 'mcui-arrow' )
	arrow:cssText([[display: inline-block;
					width: 44px;
					height: 30px;
					margin: 4px 18px;
					vertical-align: top;]])
	
	if args.crossed then
		arrow:addClass('mcui-inactive')
	end
	
	body
		:tag( 'span' )
			:addClass( 'mcui-output' )
			:wikitext( addSlot( args, 'Output', 'O', 'invslot' ) )

	return tostring( mw.html.create( 'div' ):node( body ) )
end

return p