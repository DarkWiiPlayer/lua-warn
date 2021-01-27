--- Allows using lua -lw instead of lua -W for compatibility
require 'warn'
warn("@on")
-- In case this is used explicitly in Lua 5.4+, turn it on separately:
require 'warn.compatible' '@on'
