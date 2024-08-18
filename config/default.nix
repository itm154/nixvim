{
  imports = [
    # Base settings
    ./settings.nix
    ./keymaps.nix

    # Theme
    ./plugins/themes

    # Auto-completions
    ./plugins/completion/autopair.nix
    ./plugins/completion/cmp.nix
    ./plugins/completion/lspkind.nix

    # Editor
    ./plugins/editor/colorizer.nix
    ./plugins/editor/indent-blankline.nix
    ./plugins/editor/illuminate.nix
    ./plugins/editor/nvim-tree.nix
    ./plugins/editor/todo-comments.nix
    ./plugins/editor/treesitter.nix

    # Git
    ./plugins/git/gitsigns.nix

    # LSP
    ./plugins/lsp/conform.nix
    ./plugins/lsp/lsp.nix

    # Utility
    ./plugins/utils/friendly-snippets.nix
    ./plugins/utils/luasnip.nix
    ./plugins/utils/mini.nix
    ./plugins/utils/telescope.nix
    ./plugins/utils/whichkey.nix

    # UI
    ./plugins/ui/lualine.nix
    ./plugins/ui/web-devicons.nix
  ];
}
