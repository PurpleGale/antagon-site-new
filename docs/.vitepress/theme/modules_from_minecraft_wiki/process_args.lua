local p = {}
function p.norm( origArgs )
	if type( origArgs ) ~= 'table' then
		origArgs = mw.getCurrentFrame():getParent().args
	end
	local args = {}
	
	for k, v in pairs( origArgs ) do
		v = mw.text.trim( tostring( v ) )
		if v ~= '' then
			args[k] = v
		end
	end
	
	return args
end

function p.merge( origArgs, parentArgs, norm )
	if type( origArgs ) ~= 'table' then
		norm = origArgs
		local f = mw.getCurrentFrame()
		origArgs = f.args
		parentArgs = f:getParent().args
	end
	local args = {}
	
	for k, v in pairs( origArgs ) do
		v = mw.text.trim( tostring( v ) )
		if not norm or v ~= '' then
			args[k] = v
		end
	end
	
	for k, v in pairs( parentArgs ) do
		v = mw.text.trim( v )
		if not norm or v ~= '' then
			args[k] = v
		end
	end
	
	return args
end
return p