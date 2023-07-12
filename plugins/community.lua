return {
 -- Add the community repository of plugin specifications
 "AstroNvim/astrocommunity",
 -- example of imporing a plugin, comment out to use it or add your own
 -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

 { import = "astrocommunity.colorscheme.catppuccin" },
 { import = "astrocommunity.colorscheme.helix-nvim" },
 { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
 { import = "astrocommunity.colorscheme.sonokai" },
 -- { import = "astrocommunity.completion.copilot-lua-cmp" },
 { import = "astrocommunity.pack.rust" },
 { import = "astrocommunity.pack.go" },
 { import = "astrocommunity.git.git-blame-nvim" },
 { import = "astrocommunity.indent.indent-blankline-nvim" },
 { import = "astrocommunity.indent.mini-indentscope" },
 {
  "echasnovski/mini.indentscope",
  opts = {
   options = { try_as_border = false, indent_at_cursor = true },
  },
 },
}
