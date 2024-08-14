{
  config = {
    clipboard = {
      providers.wl-copy.enable = true;
    };

    opts = {
      clipboard = "unnamedplus";
      cursorline = true;
      cursorlineopt = "number";

      expandtab = true;
      shiftwidth = 2;
      smartindent = false;
      tabstop = 2;
      softtabstop = 2;

      fillchars = {eob = " ";};
      ignorecase = true;
      smartcase = true;
      mouse = "a";

      number = true;
      relativenumber = true;
      numberwidth = 2;
      ruler = false;

      signcolumn = "yes";
      splitbelow = true;
      splitright = true;
      undofile = true;

      hlsearch = false;
      incsearch = true;

      scrolloff = 4;
    };
  };
}
