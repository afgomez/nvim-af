{
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./keymaps.nix

    ./telescope.nix

    ./treesitter.nix
    ./lsp.nix
    ./conform.nix
    ./completion.nix

    ./git.nix
    ./indent-lines.nix
    ./extra.nix
  ];
}
