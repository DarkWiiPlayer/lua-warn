Warn for Lua 5.3 and below
================================================================================

Lua 5.4 introduces the `warn` function, which allows the user to output warning
messages to `stderr` when warning output has been turned on.

This library adds this functionality to older versionf of Lua.

It can safely be required in Lua 5.4, in which case it simply does nothing.
