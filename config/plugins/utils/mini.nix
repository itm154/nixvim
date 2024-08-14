{
  plugins.mini = {
    enable = true;
    modules = {
      move = {
        mappings = {
          left = "<M-h>";
          right = "<M-l>";
          down = "<M-j>";
          up = "<M-k>";

          line_down = "<M-j>";
          line_up = "<M-k>";
        };

        options = {
          reindent_linewise = true;
        };
      };
      comment = {};
      surround = {};
    };
  };
}
