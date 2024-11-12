{pkgs, ...}: {
  imports = [
    ./darwin-nix/homebrew.nix
    ./darwin-nix/defaults.nix
    ./darwin-nix/nixSettings.nix
    ./darwin-nix/fish.nix
    ./darwin-nix/fonts.nix
    ./darwin-nix/rust.nix
    ./darwin-nix/gnupg.nix
];

  security.pam.enableSudoTouchIdAuth = true;
  system.stateVersion = 4;
  environment.darwinConfig = "$HOME/.dotfiles/flake.nix";
  environment.systemPackages = with pkgs; [
    alacritty
    terminal-notifier
    iosevka-bin
  ];

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
}
