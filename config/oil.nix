{
  plugins.oil = {
    enable = true;

    settings = {
      delete_to_trash = true;
      lsp_file_method.autosave_changes = true;
      skip_confirm_for_simple_edits = true;
      view_options = {
        show_hidden = true;
        is_always_hidden = {
          __raw = ''
            function(name, _)
              local entries = { "..", ".git", ".jj" }
              return vim.tbl_contains(entries, name)
            end
          '';
        };
      };
    };
  };
}
