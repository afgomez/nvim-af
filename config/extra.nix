{pkgs, ...}: {
  plugins = {
    # Detect indentation
    guess-indent.enable = true;

    # Remember where I was editing when opening a file
    lastplace.enable = true;

    # Insert closing character
    nvim-autopairs.enable = true;

    # Surround
    surround.enable = true;
  };

  extraPlugins = with pkgs.vimPlugins; [
    # `[` `]` mappings
    vim-unimpaired
    # emacs-like movements in insert and command mode
    vim-rsi

    # Icons everywhere
    nvim-web-devicons
  ];

  extraConfigLua = ''
    require('nvim-web-devicons').setup()
  '';
}
