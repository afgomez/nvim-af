{
  extraFiles = {
    "after/ftplugin/lua.lua".text = ''
      vim.opt_local.tabstop = 3
      vim.opt_local.shiftwidth = 3
      vim.opt_local.softtabstop = 3
      vim.opt_local.expandtab = true
    '';

    "after/ftplugin/qf.lua".text = ''
      vim.opt_local.scrolloff = 0
      vim.opt_local.number = false
      vim.opt_local.cursorline = true
      vim.opt_local.textwidth = 0

      vim.keymap.set('n', '<Esc>', ':cclose<bar>lclose<CR>', { buffer = true, silent = true })
      vim.keymap.set('n', '<CR>', '<CR> :cclose<bar>lclose<CR>', { buffer = true, silent = true, noremap = true })
    '';
  };
}
