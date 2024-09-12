{pkgs, ...}: {
  plugins = {
    fugitive.enable = true;
    gitsigns = {
      enable = true;
      settings = {
        current_line_blame = true;
        current_line_blame_opts.delay = 500;
      };
    };
  };

  extraPlugins = with pkgs.vimPlugins; [vim-rhubarb];
}
