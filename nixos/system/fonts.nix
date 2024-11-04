{ pkgs, ... }:

{
  # Fonts
  fonts.packages = with pkgs; [
    iosevka
    iosevka-bin
    (nerdfonts.override { fonts = [ "IosevkaTerm" ]; })
    font-awesome
];
}
