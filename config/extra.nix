{pkgs, ...}: {
  plugins = {
    # Pretty UI elements
    dressing.enable = true;

    # Detect indentation
    guess-indent.enable = true;

    # Remember where I was editing when opening a file
    lastplace.enable = true;

    # Insert closing character
    nvim-autopairs.enable = true;
  };

  extraPlugins = with pkgs.vimPlugins; [
    # `[` `]` mappings
    vim-unimpaired

    # emacs-like movements in insert and command mode
    vim-rsi

    # Surround
    nvim-surround

    # Icons everywhere
    nvim-web-devicons
  ];

  extraConfigLua = ''
    require('nvim-web-devicons').setup()
    require('nvim-surround').setup({
      move_cursor = "sticky",
    })
  '';
}
