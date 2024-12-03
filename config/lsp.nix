{pkgs, ...}: let
  # This is the package that `nixvim` uses for vue-language-server
  # Change if needed
  volarOutPath = pkgs.nodePackages."@volar/vue-language-server".outPath;
in {
  plugins = {
    fidget.enable = true;

    lsp = {
      enable = true;
      keymaps.lspBuf = {
        "<F2>" = "rename";
        # TODO 0.11: remove
        "grn" = "rename";
        "grr" = "references";
        "gra" = "code_action";
        "gri" = "implementation";
        "g0" = "document_symbol";
      };
      servers = {
        # General
        bashls.enable = true;
        nixd.enable = true;
        yamlls.enable = true;

        # Rust
        rust_analyzer = {
          enable = true;

          # We install rust with rustup
          installCargo = false;
          installRustc = false;
        };

        # Front-end development
        cssls.enable = true;
        eslint.enable = true;
        html.enable = true;
        jsonls.enable = true;
        ts_ls = {
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

    schemastore = {
      enable = true;
      json.enable = true;
      yaml.enable = true;
    };
  };

  # UI

  extraPackages = with pkgs; [
    # For bashls
    shellcheck
    shfmt
  ];
}
