{pkgs, ...}: {
  imports = [
    ./awscli.nix
    ./direnv.nix
    ./fzf.nix
    ./ssh.nix
    ./zoxide.nix
    ./tmux.nix
    ./go.nix
    ./vim.nix
    ./nix-index.nix
    ./bat.nix
    ./git.nix
    ./alacritty.nix
    ./fish.nix
  ];

  home = {
    sessionPath = [
      "$HOME/bin"
      "$HOME/go"
    ];
    sessionVariables = {
      EDITOR = "nvim";
      GOPATH = "$HOME/go";
      VOLTA_HOME = "$HOME/.volta";
      MANPAGER = "nvim +Man!";
      LESS = "-RF --mouse";
      PAGER = "less";
      PATH = "/opt/homebrew/bin:$HOME/.local/bin:$HOME/.volta/bin:$PATH";
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
      #cd = "z";
      tree = "ls --tree";
      cat = "bat";
      gtar = "${pkgs.gnutar}/bin/tar";
    };
  };
}
