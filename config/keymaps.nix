let
  setKeymap = mode: key: action: options: {
    mode = mode;
    key = key;
    action = action;
    options = options;
  };
in {
  keymaps = [
    # Don't try to move the cursor with <Space>
    (setKeymap ["n" "v"] "<Space>" "<Nop>" {silent = true;})

    # Don't open help
    (setKeymap ["n" "i"] "<F1>" "<Nop>" {
      noremap = true;
      silent = true;
    })

    # Remap `j` and `k` to work with wrapped lines
    (setKeymap "n" "k" "v:count == 0 ? 'gk' : 'k'" {
      silent = true;
      expr = true;
    })

    (setKeymap "n" "j" "v:count == 0 ? 'gj' : 'j'" {
      silent = true;
      expr = true;
    })

    # Quickly switch between buffers
    (setKeymap "n" "<leader><leader>" "<C-^>" {
      noremap = true;
      silent = true;
      desc = "Switch to previous buffer";
    })

    # Diagnostics
    (setKeymap "n" "<leader>dl" "vim.diagnostic.setloclist" {desc = "Open diagnostics list";})

    # Hide search highlight when pressing <ESC>
    (setKeymap "n" "<Esc>" ":noh<CR><Esc>" {
      noremap = true;
      silent = true;
    })

    # Close buffer
    (setKeymap "n" "<leader>w" ":Bdelete<CR>" {desc = "Close buffer";})

    # Global search
    (setKeymap "n" "<leader>/" ":Grep!<Space>" {desc = "Find in project";})

    # Open parent folder with Oil
    (setKeymap "n" "-" "<Cmd>Oil<CR>" {desc = "Open parent directory";})
    (setKeymap "n" "_" "<Cmd>Oil .<CR>" {desc = "Open working directory";})

    # Snippet navigation
    (setKeymap ["i" "s"] "<Tab>" {
      __raw = ''
        function()
          if vim.snippet.active({direction = 1}) then
            return '<cmd>lua vim.snippet.jump(1)<cr>'
          else
            return '<Tab>'
          end
        end
      '';
    } {expr = true;})
  ];
}
