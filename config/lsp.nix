{
  plugins = {
    fidget.enable = true;

    lsp = {
      enable = true;
      servers = {
        nixd.enable = true;
      };
    };
  };
}
