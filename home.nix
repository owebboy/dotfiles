{pkgs, ...}: let
  nixvim =
    import
    (builtins.fetchGit {
      url = "https://github.com/nix-community/nixvim";
      ref = "nixos-24.05";
    });
in {
  imports = [
    ./home-manager/git.nix
    nixvim.homeManagerModules.nixvim
  ];
  home.username = "opope";
  home.homeDirectory = "/home/opope";
  home.stateVersion = "24.05";

  home.packages = import ./home-manager/packages.nix pkgs;
  home.sessionPath = [
    "$HOME/bin"
    "$HOME/go"
  ];
  home.sessionVariables = {
    EDITOR = "nvim";
    GOPATH = "$HOME/go";
    VOLTA_HOME = "$HOME/.volta";
    MANPAGER = "nvim +Man!";
    LESS = "-R";
  };

  programs.man.generateCaches = true;
  targets.darwin.search = "DuckDuckGo";

  programs.awscli = import ./home-manager/awscli.nix;
  programs.direnv = import ./home-manager/direnv.nix;
  programs.fzf = import ./home-manager/fzf.nix;
  programs.ssh = import ./home-manager/ssh.nix;
  programs.zsh = import ./home-manager/zsh.nix;
  programs.zoxide = import ./home-manager/zoxide.nix;
  programs.tmux = import ./home-manager/tmux.nix;
  programs.go = import ./home-manager/go.nix;
  programs.nixvim = import ./home-manager/vim.nix pkgs;
  programs.nix-index = import ./home-manager/nix-index.nix;

  programs.home-manager.enable = true;
  programs.bottom.enable = true;
  programs.lsd.enable = true;
  programs.lsd.enableAliases = true;
  programs.htop.enable = true;
  programs.aria2.enable = true;
  programs.jq.enable = true;
  programs.less.enable = true;
  programs.lesspipe.enable = true;
  programs.bat.enable = true;
  programs.lazygit.enable = true;

  # wayland
  services.mako.enable = true;
  services.clipman.enable = true;

  programs.wofi.enable = true;
  programs.waybar.enable = true;

  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.systemd.enable = true;
}
