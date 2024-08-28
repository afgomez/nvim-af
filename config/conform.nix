{pkgs, ...}: let
  prettier = ["prettierd" "prettier"];
in {
  plugins.conform-nvim = {
    enable = true;
    settings = {
      default_format_opts = {
        lsp_format = "fallback";
        stop_after_first = true;
      };
      format_on_save.timeoutMs = 500;
      formatters_by_ft = {
        lua = ["stylua"];
        nix = ["alejandra"];

        css = prettier;
        html = prettier;
        javascript = prettier;
        typescript = prettier;
        vue = prettier;
        json = prettier;
        jsonc = prettier;

        "_" = ["trim_whitespace"];
      };
    };
  };

  opts.formatexpr = "v:lua.require'conform'.formatexpr()";

  extraPackages = with pkgs; [
    alejandra
    prettierd
    nodePackages.prettier
    stylua
  ];
}
