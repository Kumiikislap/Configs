return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	branch = "main",
	config = function ()
		require('nvim-treesitter').setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
			install_dir = vim.fn.stdpath('data') .. '/site',
			sync_install = false,
			auto_install = true,
			highlight = {

				enable = true,
				additional_vim_regex_highlighting = { 'markdown' },
			},
			indent = {
				enable = true,
			},
		}
	end,
	what = function ()
		require('nvim-treesitter').install {
			'rust', 'javascript', 'zig',
			'gdscript',
			'cpp',
			'lua',
			'gdshader'
	}
	end
--	config = function()
--		require('nvim-treesitter.configs').setup({
--			ensure_installed = {
--				'gdscript',
--				'godot_resource',
--				'gdshader',
--				'cpp',
--				'c',
--				'rust',
--				'lua',
--				'vim',
--				'vimdoc',
--				'query'
--			},
--			sync_install = false,
--			auto_install = true,
--			highlight = {
--				enable = true,
--				additional_vim_regex_highlighting = { 'markdown' },
--			},
--			indent = {
--				enable = true,
--			},
--		})
--	end,
}
