{
  plugins.telescope = {
    enable = true;
    extensions = {
      frecency.enable = true;
    };

    settings.defaults.mappings = {
      i = {
        "<Esc>" = {
          __raw = "require('telescope.actions').close";
        };
      };
    };

    keymaps = {
      "<leader>f" = {
        action = "find_files";
        options.desc = "Find files";
      };
      "<leader>b" = {
        action = "buffers";
        options.desc = "Find buffers";
      };
    };
  };
}
