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
    export VOLTA_HOME="$HOME/.volta"
    export PATH="$VOLTA_HOME/bin:$PATH"
  '';
  prezto = {
    enable = true;
    prompt.theme = "powerlevel10k";
    terminal = {
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
    ls = "lsd";
    poweroff = "sudo shutdown -h now";
    top = "htop";
    vi = "nvim";
    vim = "nvim";
    wget = "wget -c";
  };
}
