{inputs, ...}: {
  services.nix-daemon.enable = true;
  services.nix-daemon.enableSocketListener = true;
  programs.nix-index.enable = true;
  nix.optimise.automatic = true;
  nix.gc.automatic = true;
  nix.settings = {
    trusted-users = ["oliver"];
    sandbox = false;
    auto-optimise-store = true;
    experimental-features = ["nix-command" "flakes"];
    trusted-substituters = [
      "https://cache.nixos.org"
      "https://nix-community.cachix.org"
      "https://numtide.cachix.org"
      "https://hydra.nixos.org"
      "https://wezterm.cachix.org"
    ];
    trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "numtide.cachix.org-1:2ps1kLBUWjxIneOy1Ik6cQjb41X0iXVXeHigGmycPPE="
      "hydra.nixos.org-1:CNHJZBh9K4tP3EKF6FkkgeVYsS3ohTl+oS0Qa8bezVs="
      "wezterm.cachix.org-1:kAbhjYUC9qvblTE+s7S+kl5XM1zVa4skO+E/1IDWdH0="
    ];
    extra-sandbox-paths = [
      "/System/Library/Frameworks"
      "/System/Library/PrivateFrameworks"
      "/usr/lib"
      "/private/tmp"
      "/private/var/tmp"
      "/usr/bin/env"
    ];
  };

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  nixpkgs.overlays = [
    # Your overlays here
    inputs.rust-overlay.overlays.default
    inputs.nur.overlay
  ];
}
