{ ... }: {
  import = [
    ./sound.nix
    ./usb.nix
    ./time.nix
    ./swap.nix
    ./bootloader.nix
    ./nix-settings.nix
    ./gc.nix
    ./linux-kernel.nix
    ./screen.nix
    ./display-manager.nix
    ./opengl.nix
    ./fonts.nix
    ./theme.nix
    ./bluetooth.nix
    ./networking.nix
    ./firewall.nix
    ./dns.nix
    ./users.nix
    ./info-fetchers.nix # optional

    ./hyprland/system.nix
  ];
}
