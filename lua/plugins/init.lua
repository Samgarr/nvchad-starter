return {

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier",
        "ruff-lsp", "ansible-language-server",
        "jedi-language-server", "ansible-lint"
  		},
  	},
  },

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  { "zapling/mason-conform.nvim"},

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "c", "markdown", "markdown_inline", "python", "yaml", "json"
  		},
  	},
  },
}
