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

      #tmuxPlugins.cpu
    ];
  };
}
