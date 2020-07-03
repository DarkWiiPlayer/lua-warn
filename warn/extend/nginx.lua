return function(warn)
	if ngx and ngx.log then
		return function(...)
			if select('#', ...) == 1 and (...):byte()==64 then
				-- Do Nothing; we're gonna print either way :D
			else
				ngx.log(ngx.WARN, table.concat({...}, ' '))
			end
		end
	end
end
