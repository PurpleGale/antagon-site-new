local p = {}

local static = require( 'Module:Static' )
if not static.TSLoader then
	static.TSLoader = {}
end

function p.call( name )
	if not name then
		return nil
	end
	if not static.TSLoader.loadedTS then
		static.TSLoader.loadedTS = {}
	end
	local pagename = mw.title.getCurrentTitle()
	if not static.TSLoader.loadedTS[ pagename ] then
		static.TSLoader.loadedTS[ pagename ] = {}
	end
	if not name:find( '^%w*:' ) then
		name = 'Template:' .. name:sub( 1, 1 ):upper() .. name:sub( 2 )
	end
	name = name:sub( 1, 1 ):upper() .. name:sub( 2 )
	if static.TSLoader.loadedTS[ pagename ][ name ] == true then
		return ''
	end
	static.TSLoader.loadedTS[ pagename ][ name ] = true
	return mw.getCurrentFrame():extensionTag{ name = "templatestyles", args = { src = name } }
end

function p.main( f )
	local args = f
	local frame = mw.getCurrentFrame()
	if f == frame then
		args = require( 'Module:ProcessArgs' ).merge( true )
	end
	return p.call( args[ 1 ] )
end

return p