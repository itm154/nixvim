{
  globals.mapleader = " ";

  keymaps = [
    # -- --INSERT-- --
    {
      mode = "i";
      key = "<C-b>";
      action = "<ESC>^i";
      options = {
        silent = true;
        desc = "Move beginning of line";
      };
    }

    {
      mode = "i";
      key = "<C-e>";
      action = "<End>";
      options = {
        silent = true;
        desc = "Move end of line";
      };
    }

    {
      mode = "i";
      key = "<C-h>";
      action = "<Left>";
      options = {
        silent = true;
        desc = "Move left";
      };
    }

    {
      mode = "i";
      key = "<C-l>";
      action = "<Right>";
      options = {
        silent = true;
        desc = "Move right";
      };
    }

    {
      mode = "i";
      key = "<C-j>";
      action = "<Down>";
      options = {
        silent = true;
        desc = "Move down";
      };
    }

    {
      mode = "i";
      key = "<C-k>";
      action = "<Up>";
      options = {
        silent = true;
        desc = "Move up";
      };
    }

    # -- --NORMAL-- --
    {
      mode = "n";
      key = "j";
      action = ''v:count || mode(1)[0:1] == "no" ? "j" : "gj"'';
      options = {
        expr = true;
        silent = true;
        desc = "Move down";
      };
    }

    {
      mode = "n";
      key = "k";
      action = ''v:count || mode(1)[0:1] == "no" ? "k" : "gk"'';
      options = {
        expr = true;
        silent = true;
        desc = "Move down";
      };
    }

    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
      options = {
        silent = true;
        desc = "Move to left window";
      };
    }

    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
      options = {
        silent = true;
        desc = "Move to right window";
      };
    }

    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
      options = {
        silent = true;
        desc = "Move down";
      };
    }

    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
      options = {
        silent = true;
        desc = "Move up";
      };
    }

    {
      mode = "n";
      key = "<Esc>";
      action = "<cmd>noh<CR>";
      options = {
        silent = true;
        desc = "Clear highlights";
      };
    }

    {
      mode = "n";
      key = "<C-s>";
      action = "<cmd>w<CR>";
      options = {
        silent = false;
        desc = "Save file";
      };
    }

    {
      mode = "n";
      key = "<C-c>";
      action = "<cmd>%y+<CR>";
      options = {
        silent = false;
        desc = "Copy whole file";
      };
    }

    {
      mode = "n";
      key = "<leader>n";
      action = "<cmd>set rnu!<CR>";
      options = {
        silent = true;
        desc = "Toggle relative line number";
      };
    }
    {
      mode = "n";
      key = "<leader>x";
      action = "<cmd>bd<CR>";
      options = {
        silent = true;
        desc = "Close buffer";
      };
    }

    # -- --VISUAL-- --
    {
      mode = "v";
      key = "j";
      action = ''v:count || mode(1)[0:1] == "no" ? "j" : "gj"'';
      options = {
        expr = true;
        silent = true;
        desc = "Move down";
      };
    }

    {
      mode = "v";
      key = "k";
      action = ''v:count || mode(1)[0:1] == "no" ? "k" : "gk"'';
      options = {
        expr = true;
        silent = true;
        desc = "Move down";
      };
    }

    # -- --X-MODE (idk what its actually called)-- --
    {
      mode = "x";
      key = "j";
      action = ''v:count || mode(1)[0:1] == "no" ? "j" : "gj"'';
      options = {
        expr = true;
        silent = true;
        desc = "Move down";
      };
    }

    {
      mode = "x";
      key = "k";
      action = ''v:count || mode(1)[0:1] == "no" ? "k" : "gk"'';
      options = {
        expr = true;
        silent = true;
        desc = "Move down";
      };
    }
  ];
}
