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
  };

  # Calcuulates `commentstring` only when needed
  extraConfigLua = ''
    local get_option = vim.filetype.get_option
    vim.filetype.get_option = function(filetype, option)
      return option == "commentstring"
        and require("ts_context_commentstring.internal").calculate_commentstring()
        or get_option(filetype, option)
    end
  '';
}
