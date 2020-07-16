Warn for Lua 5.3 and below
================================================================================

Lua 5.4 introduces the `warn` function, which allows the user to output warning
messages to `stderr` when warning output has been turned on.

This library adds this functionality to older versionf of Lua.

It can safely be required in Lua 5.4, in which case it simply does nothing.

Usage:

	require 'warn' -- On Lua 5.4+ this does absolutely nothing

	warn("@on")
	warn("Hello", "World")

Alternatively, libraries can optionally use this feature locally with

	local warn = warn or require 'warn.compatible'

Differences from vanilla warn (only applies below version 5.4)

- File name and line number are part of the output message
- The global function `WARN_PREFIX` can be used to customize this prefix

Also please note that this obviously doesn't add the `-W` flag to the Lua
interpreter.
