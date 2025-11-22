local p = {}

function p.main()
    local static = require( 'Module:Static' )
    static.x = ( static.x or 0 ) + 1
    return static.x
end

return p