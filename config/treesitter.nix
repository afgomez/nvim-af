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

    # Set commentstring on embedded languages (i.e. Vue, Markdown blocks, etc).
    ts-context-commentstring = {
      enable = true;
      disableAutoInitialization = true;
    };

    # Make `%` work with HTML tags, if-end blocks, etc
    vim-matchup = {
      enable = true;
      treesitter.enable = true;

      settings = {
        matchparen_deferred_enable = true;
        matchparen_deferred_hide_delay = 300;
        matchparen_deferred_show_delay = 50;
        matchparen_offscreen = {
          method = "popup";
        };
      };
    };
  };

  # Calculates `commentstring` only when needed
  extraConfigLua = ''
    local get_option = vim.filetype.get_option
    vim.filetype.get_option = function(filetype, option)
      return option == "commentstring"
        and require("ts_context_commentstring.internal").calculate_commentstring()
        or get_option(filetype, option)
    end
  '';
}
