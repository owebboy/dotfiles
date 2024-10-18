{pkgs, ...}: let
  nixvim =
    import
    (builtins.fetchGit {
      url = "https://github.com/nix-community/nixvim";
      ref = "main";
    });
in {
  imports = [
    <home-manager/nix-darwin>
  ];

  nix.settings = {
    trusted-users = ["oliver"];
    sandbox = false;
    auto-optimise-store = true;
    extra-sandbox-paths = [
      "/System/Library/Frameworks"
      "/System/Library/PrivateFrameworks"
      "/usr/lib"
      "/private/tmp"
      "/private/var/tmp"
      "/usr/bin/env"
    ];
  };

  programs.fish.enable = true;
  environment.shells = with pkgs; [fish];
  users.users.oliver.shell = pkgs.fish;
  environment.loginShell = "${pkgs.fish}/bin/fish";

  nix.optimise.automatic = true;
  nix.gc.automatic = true;

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  services.nix-daemon.enable = true;
  services.nix-daemon.enableSocketListener = true;

  security.pam.enableSudoTouchIdAuth = true;
  system.stateVersion = 4;

  homebrew = import ./darwin-nix/homebrew.nix;

  environment.darwinConfig = "$HOME/.dotfiles/darwin-configuration.nix";
  environment.systemPackages = with pkgs; [
    kitty
    terminal-notifier
  ];

  environment.pathsToLink = ["/share/fish"];

  programs.tmux = import ./darwin-nix/tmux.nix;
  programs.nix-index.enable = true;

  fonts.packages = import ./darwin-nix/fonts.nix pkgs;

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
      ./home-manager/fish.nix
      nixvim.homeManagerModules.nixvim
    ];

    home.stateVersion = "23.11";
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
      LESS = "-RF --mouse";
      PAGER = "less";
      PATH = "/opt/homebrew/bin:$HOME/.volta/bin:$PATH";
    };
    home.shellAliases = {
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
      cat = "bat";
    };

    programs.man.generateCaches = true;
    targets.darwin.search = "DuckDuckGo";

    programs.awscli = import ./home-manager/awscli.nix;
    programs.direnv = import ./home-manager/direnv.nix;
    programs.fzf = import ./home-manager/fzf.nix;
    programs.ssh = import ./home-manager/ssh.nix;
    #programs.zsh = import ./home-manager/zsh.nix;
    programs.zoxide = import ./home-manager/zoxide.nix;
    programs.tmux = import ./home-manager/tmux.nix pkgs;
    programs.go = import ./home-manager/go.nix;
    programs.nixvim = import ./home-manager/vim.nix pkgs;
    programs.nix-index = import ./home-manager/nix-index.nix;
    programs.kitty = import ./home-manager/kitty.nix pkgs;
    programs.wezterm = import ./home-manager/wezterm.nix pkgs;
    programs.bat = import ./home-manager/bat.nix pkgs;

    programs.home-manager.enable = true;
    programs.bottom.enable = true;
    programs.htop.enable = true;
    programs.aria2.enable = true;
    programs.jq.enable = true;
    programs.less.enable = true;
    programs.lesspipe.enable = true;
    programs.lazygit.enable = true;
    programs.ripgrep.enable = true;
    programs.ripgrep.arguments = [
      "--max-columns=150"
      "--max-columns-preview"

      # Add my 'web' type.
      "--type-add"
      "web:*.{html,css,js}*"

      # Search hidden files / directories (e.g. dotfiles) by default
      "--hidden"

      # Using glob patterns to include/exclude files or folders
      "--glob=!.git/*"

      # Set the colors.
      "--colors=line:none"
      "--colors=line:style:bold"

      # Because who cares about case!?
      "--smart-case"
    ];
  };
}
