{
  enable = true;
  enableAutosuggestions = true;
  enableCompletion = true;
  dotDir = ".config/zsh";
  history.extended = true;
  initExtra = ''
    source ~/.config/zsh/.p10k.zsh
  '';
  prezto = {
    enable = true;
    prompt.theme = "powerlevel10k";
    terminal = {
    };
    tmux = {
      autoStartRemote = true;
      itermIntegration = true;
    };
  };
  shellAliases = {
    chgrp = "chgrp --preserve-root";
    chmod = "chmod --preserve-root";
    chown = "chown --preserve-root";
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
