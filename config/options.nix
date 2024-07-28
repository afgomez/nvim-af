{
  config = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    colorschemes.kanagawa = {
      enable = true;
      settings = {
        dimInactive = true;
      };
    };

    opts = {
      # Default to 2 spaces
      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      
      # Autoident
      autoindent = true;
      smartindent = true;
      
      # Autoread/write
      autoread = true;
      autowriteall = true;
      
      # Enable mouse 
      mouse = "a";
      
      # Use the system clipboard 
      clipboard = "unnamedplus";
      
      # Select like other editors
      selection = "exclusive";
      
      # Search
      ignorecase = true;
      smartcase = true;  # Toggle case sensitive if the search pattern has CaPS
      
      # UI
      number = true;       # Show line numbers
      signcolumn = "yes";  # Always show the signcolumn (avoids screen jumping)
      cursorline = true;   # Show active line 
      
      cmdheight = 2;       # Make the command line higher (shows longer notification messages)
      
      scrolloff = 8;       # Show some context when scrolling
      
      virtualedit = "block"; # in V-BLOCK, create a rectangular selection
      
      wrap = false;
      linebreak = true;
      showbreak = "↪";

      splitright = true;
      splitbelow = true;

      # Backup/Undo
      swapfile = false;
      backup = false;
      undofile = true;
      undolevels = 10000;

      # fold (other options are handled by tree-sitter)
      foldlevel = 9999;
    };
  };
}
