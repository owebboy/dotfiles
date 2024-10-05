{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    /etc/nixos/hardware-configuration.nix
    <home-manager/nixos>
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  time.timeZone = "US/Michigan";
  i18n.defaultLocale = "en_US.UTF-8";
  xdg.portal.wlr.enable = true;
  fonts.fontconfig.enable = true;
  fileSystems.zfs.enable = true;

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

  home-manager.useUserPackages = true;
  home-manager.useGlobalPkgs = true;
  home-manager.users.opope = import ./home.nix pkgs;

  system.copySystemConfiguration = true;
  system.stateVersion = "24.05";
}
