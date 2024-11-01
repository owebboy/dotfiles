{pkgs, ...}: {
  programs.alacritty = {
    enable = true;
    settings = let
      # Theme setup at the top level of settings
      catppuccin-mocha = builtins.fromTOML (builtins.readFile (
        pkgs.fetchFromGitHub {
          owner = "catppuccin";
          repo = "alacritty";
          rev = "f6cb5a5c2b404cdaceaff193b9c52317f62c62f7";
          sha256 = "H8bouVCS46h0DgQ+oYY8JitahQDj0V9p2cOoD4cQX+Q=";
        }
        + "/catppuccin-mocha.toml"
      ));
    in {
      env.TERM = "xterm-256color";
      # The rest of your settings
      window = {
        decorations = "buttonless";
        startup_mode = "Windowed";
        opacity = 0.9;
        blur = true;
        option_as_alt = "Both";
        padding = {
          x = 12;
          y = 12;
        };
      };
      font = {
        size = 14.00;
        normal.family = "IosevkaTerm NF";
      };
      # Theme colors added at same level as other top-level settings
      colors = catppuccin-mocha.colors;
    };
  };
}
