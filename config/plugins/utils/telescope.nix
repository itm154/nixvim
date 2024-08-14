{
  plugins.telescope = {
    enable = true;
    extensions = {
      file-browser.enable = true;
      fzf-native.enable = true;
    };
    settings = {
      defaults = {
        prompt_prefix = "   ";
        selection_caret = " ";
        entry_prefix = " ";
        sorting_strategy = "ascending";

        layout_config = {
          horizontal = {
            prompt_position = "top";
            preview_width = 0.55;
          };
          width = 0.87;
          height = 0.80;
        };
      };
    };
    keymaps = {
      "<leader>fw" = {
        action = "live_grep";
        options = {
          desc = "telescope live grep";
        };
      };
      "<leader>fb" = {
        action = "buffers";
        options = {
          desc = "telescope find buffers";
        };
      };
      "<leader>fh" = {
        action = "help_tags";
        options = {
          desc = "telescope help page";
        };
      };
      "<leader>ma" = {
        action = "marks";
        options = {
          desc = "telescope find marks";
        };
      };
      "<leader>fo" = {
        action = "oldfiles";
        options = {
          desc = "telescope find oldfiles";
        };
      };
      "<leader>fz" = {
        action = "current_buffer_fuzzy_find";
        options = {
          desc = "telescope find in current buffer";
        };
      };
      "<leader>cm" = {
        action = "git_commits";
        options = {
          desc = "telescope git commits";
        };
      };
      "<leader>gt" = {
        action = "git_status";
        options = {
          desc = "telescope git status";
        };
      };
      "<leader>ff" = {
        action = "find_files";
        options = {
          desc = "telescope find files";
        };
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>fa";
      action = "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>";
      options = {
        desc = "telescope find all files";
      };
    }
  ];
}
