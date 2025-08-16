return {
	"catppuccin/nvim", name = "catppuccin", priority = 1000,
	config = function()
		require("catppuccin").setup({
		flavour ="latte",
		transparent_background = true,
		no_bold = true,
		color_overrides = {
			mocha= {
				base = "#fff4ff",
			},
			latte= {
				text = "#4d21cb",

				overlay0 = "#eddceb", -- line tabs

				blue = "#b64fdb",
				green = "#36bcc1",
				yellow  = "#be9374",
				red = "#d496cb",
				pink = "#b997e0",
				teal = "#ff0047",
				peach = "#d683c4",
				lavender = "#a392de", -- line count
				maroon = "#d94cb2",
				sapphire = "#000000",

				base = "#fff4ff",
				mantle = "#f6f0ff",
				crust = "#ffffff",-- autocom crust?,

				surface0 = "#ffffff", --sidebar
				surface1 = "#fcfbff", -- relative line count
				subtext0 = "#ede0fa",
				overlay2 = "#1c686e", --comments
				overlay1 = "#000000"
--
			},
		},
	})
	--vim.o.termguicolors = true
	vim.cmd.colorscheme "catppuccin"
	end
}
