{
  enable = true;
  autosuggestion.enable = true;
  enableCompletion = true;
  dotDir = ".config/zsh";
  history.extended = true;
  autocd = true;
  initExtra = ''
    [[ ! -f ~/.cargo/env ]] ||source ~/.cargo/env
    [[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
    export PATH="$VOLTA_HOME/bin:$PATH"
    export BUN_INSTALL="$HOME/.bun"
    export PATH="$BUN_INSTALL/bin:$PATH"
  '';

  prezto = {
    enable = true;
    extraConfig = ''
      zstyle ':prezto:module:editor' key-bindings 'vi'
      zstyle ':prezto:module:prompt' theme 'powerlevel10k'
    '';
    prompt = {
      theme = "powerlevel10k";
    };
    terminal = {
      autoTitle = true;
    };
    tmux = {
      autoStartLocal = true;
      autoStartRemote = true;
      itermIntegration = true;
    };
    editor = {
      keymap = "vi";
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
    cd = "z";
    tree = "ls --tree";
  };
}
