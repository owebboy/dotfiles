{pkgs, ...}: {
  programs.fish = {
    generateCompletions = true;
    shellInitLast = ''
      set fish_greeting # Disable greeting
      # restart with tmux if not already in tmux session
      if type -q tmux
            if not test -n "$TMUX"
                tmux attach-session -t default; or tmux new-session -s default
            end
        end

    '';
    enable = true;
    plugins = [
      {
        name = "catppuccin";
        src = pkgs.fetchFromGitHub {
          owner = "catppuccin";
          repo = "fish";
          rev = "cc8e4d8fffbdaab07b3979131030b234596f18da";
          sha256 = "1iqmchnz0gglwsxrqcm300754s84gsxrbwmfxh5mdlm16gcr9n5r";
        };
      }
    ];
  };

  programs.eza = {
    enable = true;
    enableFishIntegration = true;
    git = true;
    icons = "auto";
  };

  programs.starship = {
    enable = true;
    enableTransience = true;
    enableFishIntegration = true;
    settings = {
      palette = "catppuccin_mocha";
      palettes.catppuccin_mocha = {
        rosewater = "#f5e0dc";
        flamingo = "#f2cdcd";
        pink = "#f5c2e7";
        mauve = "#cba6f7";
        red = "#f38ba8";
        maroon = "#eba0ac";
        peach = "#fab387";
        yellow = "#f9e2af";
        green = "#a6e3a1";
        teal = "#94e2d5";
        sky = "#89dceb";
        sapphire = "#74c7ec";
        blue = "#89b4fa";
        lavender = "#b4befe";
        text = "#cdd6f4";
        subtext1 = "#bac2de";
        subtext0 = "#a6adc8";
        overlay2 = "#9399b2";
        overlay1 = "#7f849c";
        overlay0 = "#6c7086";
        surface2 = "#585b70";
        surface1 = "#45475a";
        surface0 = "#313244";
        base = "#1e1e2e";
        mantle = "#181825";
        crust = "#11111b";
      };

      character = {
        success_symbol = "[[󰄛](green) ❯](peach)";
        error_symbol = "[[󰄛](red) ❯](peach)";
        vimcmd_symbol = "[󰄛 ❮](subtext1)";
      };

      git_branch = {
        style = "bold mauve";
      };

      directory = {
        truncation_length = 4;
        style = "bold lavender";
      };
    };
  };

  programs.yazi = {
    enable = true;
    enableFishIntegration = true;
  };
}
