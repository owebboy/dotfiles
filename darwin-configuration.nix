{
  config,
  pkgs,
  ...
}: let
  nixvim =
    import
    (builtins.fetchGit {url = "https://github.com/nix-community/nixvim";});
  fenix =
    import
    (fetchTarball "https://github.com/nix-community/fenix/archive/main.tar.gz")
    {};
in {
  imports = [<home-manager/nix-darwin> nixvim.nixDarwinModules.nixvim];

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  nix.settings.trusted-users = ["oliver"];
  services.nix-daemon.enable = true;
  security.pam.enableSudoTouchIdAuth = true;
  system.stateVersion = 4;

  homebrew = import ./darwin-nix/homebrew.nix;

  environment.systemPackages = import ./darwin-nix/packages.nix pkgs;
  environment.darwinConfig = "$HOME/.dotfiles/darwin-configuration.nix";

  programs.nixvim = import ./darwin-nix/vim.nix;
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableBashCompletion = true;
  };

  programs.tmux = {
    enable = true;
    enableSensible = true;
    enableVim = true;
    enableMouse = true;
  };

  fonts.fontDir.enable = true;
  fonts.fonts = import ./darwin-nix/fonts.nix pkgs;

  users.users.oliver = {
    name = "oliver";
    home = "/Users/oliver";
  };

  home-manager.users.oliver = {pkgs, ...}: {
    imports = [
      ./home-manager/git.nix
    ];

    home.stateVersion = "23.05";
    home.packages = import ./home-manager/packages.nix pkgs fenix;
    home.sessionVariables = {EDITOR = "vim";};

    programs.atuin = import ./home-manager/atuin.nix;
    programs.direnv = import ./home-manager/direnv.nix;
    programs.fzf = import ./home-manager/fzf.nix;
    programs.ssh = import ./home-manager/ssh.nix;
    programs.zsh = import ./home-manager/zsh.nix;

    programs.home-manager.enable = true;
    programs.bottom.enable = true;
    programs.lsd.enable = true;
    programs.htop.enable = true;
    programs.vscode.enable = true;
  };
}
