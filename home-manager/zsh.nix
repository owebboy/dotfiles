{
  enable = true;
  enableAutosuggestions = true;
  enableCompletion = true;
  dotDir = ".config/zsh";
  history.extended = true;
  autocd = true;
  initExtra = ''
    source ~/.config/zsh/.p10k.zsh
    source ~/.cargo/env
    export PATH="$VOLTA_HOME/bin:$HOME/go:$PATH"
  '';
  prezto = {
    enable = true;
    prompt.theme = "powerlevel10k";
    terminal = {
      autoTitle = true;
    };
    tmux = {
      autoStartLocal = true;
      autoStartRemote = true;
      itermIntegration = true;
    };
  };
  shellAliases = {
    cls = "clear";
    cpv = "rsync -ah --info=progress2";
    df = "df -h";
    egrep = "egrep --color=auto";
    fgrep = "fgrep --color=auto";
    grep = "grep --color=auto";
    poweroff = "sudo shutdown -h now";
    top = "htop";
    vim = "nvim";
    wget = "wget -c";
  };
}
