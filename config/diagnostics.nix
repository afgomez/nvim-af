{
  # UI
  diagnostics = {
    virtual_text = false;
    float = {
      header = false;
      border = "rounded";
    };
    signs.text = {
      __raw = ''
        {
          [vim.diagnostic.severity.ERROR] = " ⏺",
          [vim.diagnostic.severity.WARN] = " ⏺",
          [vim.diagnostic.severity.INFO] = " ⏺",
          [vim.diagnostic.severity.HINT] = " ⏺",
        }
      '';
    };
  };

  # Open a diagnostics window on hover, only if there's nothing else open
  # source: https://neovim.discourse.group/t/how-to-show-diagnostics-on-hover/3830/2
  autoGroups = {
    diagnostics.clear = true;
  };
  autoCmd = [
    {
      event = "CursorHold";
      pattern = "*";
      command = "lua OpenDiagnosticIfNoFloat()";
      group = "diagnostics";
    }
  ];

  extraConfigLua = ''
    function OpenDiagnosticIfNoFloat()
      for _, winid in pairs(vim.api.nvim_tabpage_list_wins(0)) do
        if vim.api.nvim_win_get_config(winid).zindex then
          return
        end
      end
      -- THIS IS FOR BUILTIN LSP
      vim.diagnostic.open_float(0, {
        scope = "cursor",
        focusable = false,
        close_events = {
          "CursorMoved",
          "CursorMovedI",
          "BufHidden",
          "BufLeave",
          "InsertCharPre",
          "WinLeave",
        },
      })
    end
  '';
}
