{
  plugins = {
    treesitter = {
      enable = true;
      folding = true;
      nixvimInjections = true;

      settings = {
        ensure_installed = "all";

        highlight.enable = true;
        indent.enable = true;
      };
    };

    # Auto-close HTML tags
    ts-autotag.enable = true;
  };
}
