{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      sources = [
        {name = "nvim_lsp";}
        {name = "path";}
        {name = "buffer";}
      ];
      mapping.__raw = ''
        cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<Tab>'] = cmp.mapping.confirm({ select = true }),
        })
      '';
      # window = {
      #   completion.border = "rounded";
      #   documentation.border = "rounded";
      # };
    };

    filetype = {
      gitcommit.sources = [{name = "git";} {name = "path";}];
      gitrebase.sources = [{name = "git";} {name = "path";}];
      jj.sources = [{name = "path";}];
    };

    # Use nvim-cmp also in Command/Ex mode
    cmdline = {
      "/" = {
        mapping.__raw = "cmp.mapping.preset.cmdline()";
        sources = [{name = "buffer";}];
      };
      ":" = {
        mapping.__raw = "cmp.mapping.preset.cmdline()";
        sources = [
          {name = "path";}
          {
            name = "cmdline";
            option = {
              ignore_cmds = ["Man" "!"];
            };
          }
        ];
      };
    };
  };

  plugins.lspkind = {
    enable = true;
    cmp.enable = true;
  };
}
