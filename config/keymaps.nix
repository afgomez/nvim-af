let
  setKeymap = mode: key: action: options: {
    mode = mode;
    key = key;
    action = action;
    options = options;
  };
in {
  keymaps = [
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
  ];
}
