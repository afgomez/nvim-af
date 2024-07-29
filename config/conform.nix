{pkgs, ...}: {
  plugins.conform-nvim = {
    enable = true;
    formatOnSave.lspFallback = false;
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

  extraPackages = with pkgs; [
    alejandra
    prettierd
    nodePackages.prettier
    stylua
  ];
}
