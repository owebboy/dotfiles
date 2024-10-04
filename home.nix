{pkgs, ...}: let
  nixvim =
    import
    (builtins.fetchGit {
      url = "https://github.com/nix-community/nixvim";
      ref = "main";
    });
in {
  imports = [
    ./home-manager/git.nix
    nixvim.homeManagerModules.nixvim
  ];

  nix.gc.automatic = true;

  home.username = "opope";
  home.homeDirectory = "/home/opope";
  home.stateVersion = "24.05";

  home.sessionVariables.NIXOS_OZONE_WL = "1";
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
  programs.alacritty.enable = true;
  programs.kitty.enable = true;

  # wayland
  services.mako.enable = true;
  services.clipman.enable = true;
  services.dunst.enable = true;

  programs.wofi.enable = true;
  programs.waybar.enable = true;
  programs.hyprlock.enable = true;

  services.hypridle.enable = true;
  services.hypridle.settings = {
    general = {
      after_sleep_cmd = "hyprctl dispatch dpms on";
      ignore_dbus_inhibit = false;
      lock_cmd = "hyprlock";
    };

    listener = [
      {
        timeout = 900;
        on-timeout = "hyprlock";
      }
      {
        timeout = 1200;
        on-timeout = "hyprctl dispatch dpms off";
        on-resume = "hyprctl dispatch dpms on";
      }
    ];
  };

  wayland.windowManager.hyprland = import ./home-manager/hyprland.nix;
  programs.librewolf.enable = true;

  home.pointerCursor = {
    gtk.enable = true;
    # x11.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 16;
  };
}
