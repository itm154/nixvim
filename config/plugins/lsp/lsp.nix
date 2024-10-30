{
  plugins = {
    lsp-format.enable = true;
    lsp = {
      enable = true;
      inlayHints = true;

      servers = {
        # NOTE: Add more servers here according to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

        # Misc
        marksman.enable = true;

        # Web
        cssls.enable = true;
        html.enable = true;
        emmet_ls.enable = true;
        denols.enable = true;

        # General programming languages
        jdtls.enable = true;
        clangd.enable = true;
        lua_ls.enable = true;
        nil_ls.enable = true;
      };

      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
        };

        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
      };
    };
  };
}
