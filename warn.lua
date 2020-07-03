local version = _VERSION:gsub("[^%d]", "")
version = assert(tonumber(version), "Failed to identify Lua version")

if not warn then
	warn = require 'warn.compatible'
end
