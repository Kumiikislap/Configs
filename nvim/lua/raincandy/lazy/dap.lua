return {
	'mfussenegger/nvim-dap',
	dependencies = {
		'williamboman/mason.nvim',
		'nvim-neotest/nvim-nio',
	},
	config = function()
--		require("core.utils").load_mappings("dap")
		local dap = require('dap')

		-- Debugging keymaps
		vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = 'Debug: Toggle breakpoint' })
--		vim.keymap.set('n', '<leader><F5>', dap.continue, { desc = 'Debug: Start/Continue' })
--		vim.keymap.set('n', '<F7>', dap.step_over, { desc = 'Debug: Step over' })
--		vim.keymap.set('n', '<F8>', dap.step_into, { desc = 'Debug: Step into' })
--		vim.keymap.set('n', '<F9>', dap.step_out, { desc = 'Debug: Step out' })
--		vim.keymap.set('n', '<F6>', function () dap.terminate() end, { desc = 'Debug: Terminate' })


	-- Godot stuff
		dap.adapters.godot = {
		type = 'server',
			host = '127.0.0.1',
			port = 6007,
		}

		dap.configurations.gdscript = { {
			type = 'godot',
			request = 'launch',
			name = 'Launch scene',
			project = '${workspaceFolder}}',
			launch_scene = true,
		} }

		dap.configurations.cpp = {
			{
				type = 'codelldb',   --name of debugger
				request = 'launch',  -- -help dap-configuration for help 
				name = 'Launch scene',  -- name 
				program = '/home/kumii39/Godot/Godot_v4.4.1-stable_linux.x86_64',     --program to execute
				-- project = '${workspaceFolder}/project',
				args = { '--path', '${workspaceFolder}/project' },    -- project to open , relative to what folder you open neovim
			}
	}
	end,
}
