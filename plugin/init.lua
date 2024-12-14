-- Contains initialization and setup code
-- Example: Setting up key bindings, autocmds
--
--
-- local App = require("app")

-- Start the server
-- vim.api.nvim_create_user_command("AppServe", App.LocalConnect, {})

-- Command to connect
-- vim.api.nvim_create_user_command("AppConnect", function(opts)
--         App.Connect(opts.args)
-- end, { nargs = 1 })
--
-- vim.api.nvim_create_autocmd("VimLeavePre", {
--         callback = function()
--                 App.Kill()
--         end,
-- })
