local enabled = false

return function(...)
  if select('#', ...) == 1 and (...):byte()==64 then
    if ... == "@on" then
      enabled = true
    elseif ... == "@off" then
      enabled = false
    end
  elseif enabled then
    if ngx and ngx.log then
      ngx.log(ngx.WARN, table.concat({...}, ' '))
    else
      local prefix = WARN_PREFIX or function()
        local i = debug.getinfo(3)
        return "Lua warning ("..i.short_src..":"..i.currentline.."):"
      end
      io.stderr:write(table.concat({prefix(), ...}, ' '))
      io.stderr:write("\n")
    end
  end
end
