{
  autoGroups = {
    read_on_focus_gained.clear = true;
    save_on_focus_lost.clear = true;
  };
  autoCmd = [
    {
      group = "read_on_focus_gained";
      pattern = "*";
      event = ["FocusGained" "BufEnter" "CursorHold"];
      command = "silent! checktime";
    }

    {
      group = "save_on_focus_lost";
      pattern = "*";
      event = ["BufLeave" "FocusLost"];
      command = "silent! wall";
    }
  ];
}
