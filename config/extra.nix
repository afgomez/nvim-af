{ pkgs, ... } : {
  plugins = {
    # Detect indentation
    guess-indent.enable = true;

    # Remember where I was editing when opening a file
    lastplace.enable = true;

    # Insert closing character
    nvim-autopairs.enable = true;

    # Surround
    surround.enable = true;

    # Trim whitespace when saving
    trim.enable = true;
  };

  extraPlugins = with pkgs.vimPlugins; [
    # `[` `]` mappings
    vim-unimpaired
    # emacs-like movements in insert and command mode
    vim-rsi
  ];
}
