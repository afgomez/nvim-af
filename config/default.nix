{
  # Import all your configuration modules here
  imports = [
    ./performance.nix

    ./options.nix
    ./keymaps.nix
    ./autocmds.nix
    ./commands.nix

    ./lualine.nix
    ./telescope.nix
    ./oil.nix

    ./diagnostics.nix
    ./treesitter.nix
    ./lsp.nix
    ./conform.nix
    ./completion.nix

    ./git.nix
    ./indent-lines.nix
    ./extra.nix

    ./compiler.nix
    ./after.nix
  ];
}
