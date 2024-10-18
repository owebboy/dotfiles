{pkgs, ...}: {
  fonts.packages = with pkgs; [
    fira
    fira-code
    fira-code-symbols
    fira-mono
    inter
    iosevka
    iosevka-bin
    overpass
    (nerdfonts.override {fonts = ["Iosevka" "IosevkaTerm"];})
  ];
}
