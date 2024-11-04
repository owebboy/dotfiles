# Hyprland config imported into configuration
{ pkgs
, inputs
, ...
}: {
  nixpkgs.overlays = [ inputs.nixpkgs-wayland.overlay ];

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  environment.systemPackages = with pkgs;
    [
      libnotify

      # Network
      networkmanagerapplet
      networkmanager_dmenu

      # A/V helper
      wireplumber
      xdg-desktop-portal-hyprland
      xwayland
      pyprland
      wayland-scanner
      hyprwayland-scanner

      # Audio
      pwvucontrol

      # Cursor
      glib
      adwaita-icon-theme

      # Locking / Sleeping
      hyprlock
      swaylock

      # Screenshots
      hyprshot
    ]
    ++ (with waylandPkgs; [
      # Status bar
      waybar

      # Notification
      dunst
      wofi
      grim
      slurp
      swww
    ]);

  xdg.portal = {
    enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
  };

  services.libinput.enable = true; # touchpad
  services.libinput.touchpad.naturalScrolling = true;

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    # set the flake package
    #package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    # make sure to also set the portal package, so that they are in sync
    #portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
  };
}
# https://github.com/ZainKergaye/nixosdotfiles/blob/master/system/wm/wayland/hypr.nix
