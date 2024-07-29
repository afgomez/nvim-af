{pkgs, ...}: let
  # This is the package that `nixvim` uses for vue-language-server
  # Change if needed
  volarOutPath = pkgs.nodePackages."@volar/vue-language-server".outPath;
in {
  plugins = {
    fidget.enable = true;

    lsp = {
      enable = true;
      servers = {
        nixd.enable = true;

        # Front-end development
        cssls.enable = true;
        eslint.enable = true;
        html.enable = true;
        jsonls.enable = true;
        tsserver = {
          enable = true;
          # Use vue-language-server hybrid mode
          filetypes = ["typescript" "javascript" "typescriptreact" "javascriptreact" "vue"];
          extraOptions = {
            init_options = {
              plugins = [
                {
                  name = "@vue/typescript-plugin";
                  location = "${volarOutPath}/lib/node_modules/@vue/language-server";
                  languages = ["vue"];
                }
              ];
            };
          };
        };
        volar.enable = true;
      };
    };
  };
}
