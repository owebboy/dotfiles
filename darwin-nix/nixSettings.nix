{
  services.nix-daemon.enable = true;
  services.nix-daemon.enableSocketListener = true;
  nix.optimise.automatic = true;
  nix.gc.automatic = true;
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

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  nixpkgs.overlays = [
    # Your overlays here
  ];
}
