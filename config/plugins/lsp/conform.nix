{
  lib,
  pkgs,
  ...
}: {
  config = {
    extraConfigLuaPre = ''
      local slow_format_filetypes = {}

      vim.api.nvim_create_user_command("FormatDisable", function(args)
         if args.bang then
          -- FormatDisable! will disable formatting just for this buffer
          vim.b.disable_autoformat = true
        else
          vim.g.disable_autoformat = true
        end
      end, {
        desc = "Disable autoformat-on-save",
        bang = true,
      })
      vim.api.nvim_create_user_command("FormatEnable", function()
        vim.b.disable_autoformat = false
        vim.g.disable_autoformat = false
      end, { desc = "Re-enable autoformat-on-save",
      })
      vim.api.nvim_create_user_command("FormatToggle", function(args)
        if args.bang then
          -- Toggle formatting for current buffer
          vim.b.disable_autoformat = not vim.b.disable_autoformat
        else
          -- Toggle formatting globally
          vim.g.disable_autoformat = not vim.g.disable_autoformat
        end
      end, {
        desc = "Toggle autoformat-on-save",
        bang = true,
      })
    '';
    plugins.conform-nvim = {
      enable = true;
      settings = {
        # NOTE: Make sure the formatter name matches what is declared under formatters attribute
        # Refer to https://nix-community.github.io/nixvim/plugins/conform-nvim/settings/index.html
        # and search for available formatters on nixos package search
        formattersByFt = {
          nix = ["alejandra"];
          "_" = ["trim_whitespace"];
        };

        # NOTE: Put formatters here according to the nix
        formatters = {
          alejandra = {
            command = "${lib.getExe pkgs.alejandra}";
          };
        };

        formatOnSave = ''
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end

            if slow_format_filetypes[vim.bo[bufnr].filetype] then
              return
            end

            local function on_format(err)
              if err and err:match("timeout$") then
                slow_format_filetypes[vim.bo[bufnr].filetype] = true
              end
            end

            return { timeout_ms = 200, lsp_fallback = true }, on_format
           end
        '';

        formatAfterSave = ''
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end

            if not slow_format_filetypes[vim.bo[bufnr].filetype] then
              return
            end

            return { lsp_fallback = true }
          end
        '';

        notifyOnError = true;
      };
    };
  };
}
