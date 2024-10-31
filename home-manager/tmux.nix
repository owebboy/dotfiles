{pkgs, ...}: {
  programs.tmux = {
    enable = true;
    aggressiveResize = true;
    tmuxinator.enable = true;
    terminal = "screen-256color";
    mouse = true;
    newSession = true;
    keyMode = "emacs";
    sensibleOnTop = true;
    disableConfirmationPrompt = true;
    shell = "${pkgs.fish}/bin/fish";
    plugins = with pkgs; [
            #tmuxPlugins.yank
      tmuxPlugins.fpp
      tmuxPlugins.tmux-fzf
      tmuxPlugins.vim-tmux-navigator
      {
        plugin = tmuxPlugins.resurrect;
        extraConfig = "set -g @resurrect-strategy-nvim 'session'";
      }
      {
        plugin = tmuxPlugins.continuum;
        extraConfig = ''
          set -g @continuum-restore 'on'
          set -g @continuum-save-interval '60' # minutes
        '';
      }
      {
        plugin = tmuxPlugins.catppuccin;
        extraConfig = ''
          set -g @catppuccin_flavor "mocha"
          set -g @catppuccin_window_status_style "rounded"
        '';
      }

tmuxPlugins.cpu

    ];

    extraConfig = ''
      set -g status-right-length 100
      set -g status-left-length 100
      set -g status-left ""
      set -g status-right "#{E:@catppuccin_status_application}"
      set -agF status-right "#{E:@catppuccin_status_cpu}"
      set -ag status-right "#{E:@catppuccin_status_session}"
      set -ag status-right "#{E:@catppuccin_status_uptime}"
    '';
  };
}
