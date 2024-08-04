{pkgs, ...}: let
  prettier = ["prettierd" "prettier"];
in {
  plugins.conform-nvim = {
    enable = true;
    extraOptions = {
      default_format_opts = {
        lsp_format = "fallback";
        stop_after_first = true;
      };
    };
    formatOnSave.timeoutMs = 500;
    formattersByFt = {
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

  opts.formatexpr = "v:lua.require'conform'.formatexpr()";

  extraPackages = with pkgs; [
    alejandra
    prettierd
    nodePackages.prettier
    stylua
  ];
}
