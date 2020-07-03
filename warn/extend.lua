local name, file = ...

require 'warn'

-- Pick the first handler that feels up to the task
local function install(...)
	for i, handler in ipairs {...} do
		local result = require(name.."."..handler)(warn)
		if result then
			warn = result
		end
	end
end

return install
