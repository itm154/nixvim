{
  plugins = {
    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp-emoji.enable = true;
    cmp-cmdline.enable = true;
    cmp = {
      enable = true;
      settings = {
        autoEnableSources = true;

        performance = {
          debounce = 60;
          fethingTimeout = 200;
          maxViewEntries = 30;
        };

        experimental = {
          ghost_text = true;
        };

        window = {
          # This is mainly for transparent windows
          completion = {border = "solid";};
          documentation = {border = "solid";};
        };

        mapping = {
          "<Tab>" = ''
            function(fallback)
              local line = vim.api.nvim_get_current_line()
              if line:match("^%s*$") then
                fallback()
              elseif cmp.visible() then
                cmp.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true })
              else
                fallback()
              end
            end
          '';

          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
        };

        sources = [
          {name = "nvim_lsp";}
          {name = "emoji";}
          {
            name = "buffer";
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            keywordLength = 3;
          }
          {
            name = "path";
            keywordLength = 3;
          }
        ];
      };
    };
  };
}
