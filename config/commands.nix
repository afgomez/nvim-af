{
  userCommands = {
    Grep = {
      command = ":silent grep<bang> <args> | botright cw";
      nargs = "+";
      complete = "file";
      bang = true;
    };

    BD = {
      command = ":Bdelete";
    };

    BW = {
      command = ":Bwipeout";
    };
  };
}
