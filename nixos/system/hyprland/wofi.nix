{ config, ... }:
let
  palette = config.colorScheme.palette;
in
{
  programs.wofi = {
    enable = true;
    settings = {
      width = 600;
      height = 400;
      mode = "drun";
      filter_rate = 100;
      allow_markup = true;
      no_actions = true;
      term = "alacritty";
      halign = "fill";
      orientation = "vertical";
      content_halign = "fill";
      drun-display_generic = true;
     };
     style = ''
#entry {
  border-radius: 3px;
  padding: 2px 3px 2px 3px;
}

#entry:selected {
  background-color: #5e81ac;
}

#text:selected {
  color: #d8dee9;
}

#window {
  padding: 2px;
  background-color: rgba(53, 59, 73, 0.97);
  border: 4px solid #ebcb8b;
  border-radius: 8pt;
  font-family: 'Iosevka Term Nerd Font';
  font-size: 15px;
}

#input {
  border: 2px solid #5e81ac;
  background-color: #4c566a;
  color: #d8dee9;
  padding: 3px 5px 3px 5px;
  border-radius: 5px;
}

#inner-box {
  color: #d8dee9;
  padding: 2px;
  background-color: transparent;
}

#outer-box {
  margin: 15px;
  background-color: transparent;
}

#scroll {
  margin-top: 10px;
  background-color: transparent;
  border: none;
}

#text {
  padding: 3px;
  background-color: transparent;
}

#img {
  background-color: transparent;
  padding: 5px;
}

     '';
  };
}
