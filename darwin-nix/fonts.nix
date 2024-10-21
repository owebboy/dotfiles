{pkgs, ...}: {
  fonts.packages = with pkgs; [
    inter
    iosevka
    iosevka-bin
    (nerdfonts.override {fonts = ["Iosevka" "IosevkaTerm"];})
  ];
}
