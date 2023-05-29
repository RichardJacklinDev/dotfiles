local Plugin = {'NTBBloodbath/zig-tools.nvim'}
local user = {}

Plugin.dependencies = {
		{'akinsho/toggleterm.nvim'},
}

function Plugin.config()
		require("zig-tools").setup()
end

return Plugin
