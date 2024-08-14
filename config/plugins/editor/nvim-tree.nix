{
  plugins.nvim-tree = {
    enable = true;

    filters = {dotfiles = true;};
    disableNetrw = true;
    hijackCursor = true;
    syncRootWithCwd = true;

    updateFocusedFile = {
      enable = true;
      updateRoot = false;
    };

    view = {
      width = 30;
      preserveWindowProportions = true;
    };

    renderer = {
      rootFolderLabel = false;
      highlightGit = true;
      indentMarkers.enable = true;
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>NvimTreeToggle<CR>";
      options = {
        silent = true;
        desc = "Toggle nvim-tree";
      };
    }
  ];
}
