local p = {}

function p.animate( f )
	local args = f
	if f == mw.getCurrentFrame() then
		args = f:getParent().args
	end
	
	local icons = {}
	local sprite = require( 'Module:SpriteFile' ).sprite
	local name = args.name or 'InvSprite'
	
	local function image( icon )
		args.name = name
		args[1] = icon
		args.size = args.size or 32
		args.align = args.align or 'middle'
		args.keepcase = true
		return sprite(args) or ''
	end
	
	for icon in mw.text.gsplit( args[1], '%s*;%s*' ) do
		icons[#icons+1] = '<span>' .. (#icon > 0 and image( icon ) or '<br>') .. '</span>'
	end
	
	icons[1] = icons[1]:gsub( '^<span>', '<span class="animated-active">' )
	
	return '<span class="animated">' .. table.concat( icons ) .. '</span>'
end

return p