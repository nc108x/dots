return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "black",
        "clangd",
        "clang-format",
        "cmakelang",
        "cmakelint",
        "css-lsp",
        "json-lsp",
        "lua-language-server",
        "markdown-toc",
        "markdownlint-cli2",
        "marksman",
        "neocmakelsp",
        "prettier",
        "pyright",
        "ruff",
        "selene",
        "shellcheck",
        "shfmt",
        "sqlfluff",
        "stylua",
        "texlab",
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {},
    },
  },
}
