local version = _VERSION:gsub("[^%d]", "")
version = assert(tonumber(version), "Failed to identify Lua version")

if version < 54 then
	warn = require 'warn.compatible'
end
