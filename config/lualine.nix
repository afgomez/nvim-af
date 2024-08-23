{
  plugins.lualine = {
    enable = true;

    sections = {
      lualine_b = ["branch"];
      lualine_c = [
        "diagnostics"
        {
          name = "filename";
          extraConfig = {path = 1;};
        }
      ];
      lualine_x = ["filetype"];
    };

    inactiveSections = {
      lualine_c = [
        {
          name = "filename";
          extraConfig = {path = 1;};
        }
      ];
    };
  };
}
