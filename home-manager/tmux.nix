{
  config,
  pkgs,
  inputs,
  ...
}: {
  programs.tmux = {
    enable = true;
    aggressiveResize = true;
    tmuxinator.enable = true;
    terminal = "screen-256color";
    mouse = true;
    newSession = true;
    keyMode = "vi";
    sensibleOnTop = true;
    plugins = with pkgs; [
      tmuxPlugins.cpu
      tmuxPlugins.yank
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
              # Configure the catppuccin plugin
              set -g @catppuccin_flavor "mocha"
              set -g @catppuccin_window_status_style "rounded"
              set -g @catppuccin_window_number_position "right"

              set -g @catppuccin_window_default_fill "number"
              set -g @catppuccin_window_default_text "#W"

              set -g @catppuccin_window_current_fill "number"
              set -g @catppuccin_window_current_text "#W"

              set -g @catppuccin_status_left_separator  " "
              set -g @catppuccin_status_right_separator ""
              set -g @catppuccin_status_fill "icon"
              set -g @catppuccin_status_connect_separator "no"

                set -g @catppuccin_directory_text "#{pane_current_path}"
                set -g status-left ""
          set -g  status-right "#{E:@catppuccin_status_directory}"
          set -ag status-right "#{E:@catppuccin_status_user}"
          set -ag status-right "#{E:@catppuccin_status_host}"
          set -ag status-right "#{E:@catppuccin_status_session}"
        '';
      }
    ];
  };
}
