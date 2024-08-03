{pkgs, ...}: {
  plugins.conform-nvim = {
    enable = true;
    formatOnSave.lspFallback = true;
    formattersByFt = {
      lua = ["stylua"];
      nix = ["alejandra"];

      css = [["prettierd" "prettier"]];
      html = [["prettierd" "prettier"]];
      javascript = [["prettierd" "prettier"]];
      typescript = [["prettierd" "prettier"]];
      vue = [["prettierd" "prettier"]];

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
