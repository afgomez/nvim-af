{
  plugins.treesitter = {
    enable = true;
    folding = true;
    nixvimInjections = true;

    settings = {
      ensure_installed = "all";

      highlight.enable = true;
      indent.enable = true;
    };
  };
}
