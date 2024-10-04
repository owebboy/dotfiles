{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [<home-manager/nixos>];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  time.timeZone = "US/Michigan";
  i18n.defaultLocale = "en_US.UTF-8";
  hardware.pulseaudio.enable = true;
  xdg.portal.wlr.enable = true;

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.pathsToLink = ["/share/zsh"];

  nixpkgs.config = {
    allowUnfree = true;
  };

  services.printing.enable = true;
  services.libinput.enable = true;
  services.displayManager.defaultSession = "none+hyprland";

  programs.hyprland.enable = true;

  users.users.opope = {
    isNormalUser = true;
    extraGroups = ["wheel" "networkmanager"];
  };

  home-manager = import ./home.nix {inherit pkgs;};

  systemd.sysusers.enable = true;

  system.copySystemConfiguration = true;
  system.stateVersion = "24.05";
}
