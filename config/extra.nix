{pkgs, ...}: {
  plugins = {
    # Pretty UI elements
    dressing.enable = true;

    # autoclose lua/bash/ruby/etc
    endwise.enable = true;

    # Detect indentation
    guess-indent.enable = true;

    # Remember where I was editing when opening a file
    lastplace.enable = true;

    # Insert closing character
    nvim-autopairs.enable = true;

    # Keep window layout when closing buffers
    bufdelete.enable = true;

    # Enable dev icons
    web-devicons.enable = true;
  };

  extraPlugins = with pkgs.vimPlugins; [
    # Async make, task runner, etc
    vim-dispatch

    # `[` `]` mappings
    vim-unimpaired

    # emacs-like movements in insert and command mode
    vim-rsi

    # Surround
    nvim-surround
  ];

  extraConfigLua = ''
    require('nvim-web-devicons').setup()
    require('nvim-surround').setup({
      move_cursor = "sticky",
    })
  '';
}
