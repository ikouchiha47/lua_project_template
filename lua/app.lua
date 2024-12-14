-- This is where you define your methods, objects, core code
-- You can locally import other files. like:
--
-- local LocalServe = require("server.lua")
-- where server.lua resides in $PROJECT_ROOT/lua/server.lua
--
-- Import libraries after rocksinstall
--
-- local md5 = require("md5")
--
-- This is the setup template
-- Even if you change this, keep in notice
-- packge.path:
-- package.cpath
--

local M = {
	pwd = "",
}

function M.setup(opts)
	-- this is only required in the app.lua,
	-- or whatever the entrypoint of your plugin is.

	local pwd = opts.pwd
	package.path = package.path .. ";" .. pwd .. "/lua/lua_modules/share/lua/5.1/?.lua"
	package.cpath = package.cpath .. ";" .. pwd .. "/lua/lua_modules/lib/lua/5.1/?.so"

	M.pwd = pwd
end

-- Other functions on M:
--
-- function M.LocalConnect()
-- end
--
-- function M:closeConnection()
-- end
--

return M
