{
  plugins.lualine = {
    enable = true;
    settings = {
      sections = {
        lualine_b = ["branch"];
        lualine_c = [
          "diagnostics"
          {__raw = ''{ "filename", path = 1 }'';}
        ];
        lualine_x = ["filetype"];
      };

      inactive_sections = {
        lualine_c = [
          {__raw = ''{ "filename", path = 1 }'';}
        ];
      };
    };
  };
}
