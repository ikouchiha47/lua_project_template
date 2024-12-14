-- You can manually set the placeholders with static values
--
local dir = "${PWD}"

return {
	name = "${PLUGIN}",
	dir = dir,
	config = function()
		-- local App = require("app") -- where app is app.lua in your dir/lua
		-- App.setup({
		-- 	pwd = dir,
		-- 	laddr = "0.0.0.0",
		-- 	lport = 8080,
		-- })
	end,
}
