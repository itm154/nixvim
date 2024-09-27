{
  plugins.todo-comments = {
    enable = true;
    settings = {
      colors = {
        error = ["DiagnosticError" "ErrorMsg" "#f38ba8"];
        warning = ["DiagnosticWarn" "WarningMsg" "#f9e2af"];
        info = ["DiagnosticInfo" "#f9e2af"];
        default = ["Identifier" "#fab387"];
        test = ["Identifier" "#89b4fa"];
      };
    };
  };
}
