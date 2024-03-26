{
  config,
  pkgs,
  ...
}: let
  nixvim =
    import
    (builtins.fetchGit {
      url = "https://github.com/nix-community/nixvim";
      ref = "nixos-23.11";
    });
in {
  imports = [
    nixvim.nixDarwinModules.nixvim
    <home-manager/nix-darwin>
  ];

  nix.settings.trusted-users = ["oliver"];

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  services.nix-daemon.enable = true;

  security.pam.enableSudoTouchIdAuth = true;
  system.stateVersion = 4;

  homebrew = import ./darwin-nix/homebrew.nix;

  environment.systemPackages = import ./darwin-nix/packages.nix pkgs;
  environment.darwinConfig = "$HOME/.dotfiles/darwin-configuration.nix";

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableBashCompletion = true;
  };
  programs.nixvim = import ./home-manager/vim.nix;

  programs.tmux = import ./darwin-nix/tmux.nix;
  programs.gnupg.agent = import ./darwin-nix/gnupg.nix;
  programs.nix-index.enable = true;

  fonts.fontDir.enable = true;
  fonts.fonts = import ./darwin-nix/fonts.nix pkgs;

  users.users.oliver = {
    name = "oliver";
    home = "/Users/oliver";
  };

  system.activationScripts.postDarwinRebuild = {
    text = ''
      /usr/bin/xattr -d -r com.apple.quarantine ~/Library/QuickLook
    '';
    deps = [];
  };
  system.defaults = import ./darwin-nix/defaults.nix;

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.backupFileExtension = "bak";

  home-manager.users.oliver = {pkgs, ...}: {
    imports = [
      ./home-manager/git.nix
    ];

    home.stateVersion = "23.11";
    home.packages = import ./home-manager/packages.nix pkgs;
    home.sessionVariables = {
      EDITOR = "nvim";
      GOPATH = "$HOME/go";
      VOLTA_HOME = "$HOME/.volta";
    };

    programs.man.generateCaches = true;
    targets.darwin.search = "DuckDuckGo";

    programs.awscli = import ./home-manager/awscli.nix;
    programs.atuin = import ./home-manager/atuin.nix;
    programs.direnv = import ./home-manager/direnv.nix;
    programs.fzf = import ./home-manager/fzf.nix;
    programs.ssh = import ./home-manager/ssh.nix;
    programs.zsh = import ./home-manager/zsh.nix;
    programs.zoxide = import ./home-manager/zoxide.nix;
    programs.tmux = import ./home-manager/tmux.nix;
    programs.go = import ./home-manager/go.nix;

    programs.home-manager.enable = true;
    programs.bottom.enable = true;
    programs.lsd.enable = true;
    programs.lsd.enableAliases = true;
    programs.htop.enable = true;
    programs.vscode.enable = true;
    programs.aria2.enable = true;
    programs.bat.enable = true;
    programs.jq.enable = true;
    programs.less.enable = true;
    programs.lesspipe.enable = true;
    programs.gpg.enable = true;
  };
}
