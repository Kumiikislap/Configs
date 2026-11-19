local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
	'--branch=stable',
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	spec = 'raincandy.lazy',
	change_detection = { notify = false }
})

function gdshader()
	vim.lsp.start {
	   name = "gdshader-lsp",
       cmd = {
           "<path to gdshader-lsp binary>",
       },
       capabilities = vim.lsp.protocol.make_client_capabilities()
	}
end
