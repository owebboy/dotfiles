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
    shell = "${pkgs.fish}/bin/fish";
    baseIndex = 1;
    historyLimit = 102400;
    escapeTime = 10;
    prefix = "C-a";
    extraConfig = ''
      set -ag terminal-overrides ',xterm-256color*:RGB'

      set -g @catppuccin_flavor "mocha"
      set -g @catppuccin_window_status_style "rounded"


      set -ogq @catppuccin_window_text " #W" 
      set -g status-interval 5
      set -g status-left-length 100
      set -g status-right-length 100
      set -g status-left '#{E:@catppuccin_status_session} '

      set -g renumber-windows on

      # Use emacs keybindings in the status line
      set-option -g status-keys emacs

      # Use vim keybindings in copy mode
      setw -g mode-keys vi

      # Copy mode
      unbind-key -T copy-mode-vi v

      bind-key -T copy-mode-vi v \
        send-keys -X begin-selection

      bind-key -T copy-mode-vi 'C-v' \
        send-keys -X rectangle-toggle

      bind-key -T copy-mode-vi y \
        send-keys -X copy-pipe-and-cancel "pbcopy"

      bind-key -T copy-mode-vi MouseDragEnd1Pane \
        send-keys -X copy-pipe-and-cancel "pbcopy"

      bind '\' split-window -h -c '#{pane_current_path}'
      bind - split-window -v -c '#{pane_current_path}'
    '';
    plugins = with pkgs; [
      #tmuxPlugins.yank
      tmuxPlugins.fpp
      tmuxPlugins.tmux-fzf
      {
        plugin = tmuxPlugins.vim-tmux-navigator;
        extraConfig = ''

        '';
      }
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

      #tmuxPlugins.cpu
    ];
  };
}
