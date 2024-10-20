{pkgs, ...}: {
  fonts.packages = with pkgs; [
    inter
    iosevka
    iosevka-bin
    iosevka-comfy
    (nerdfonts.override {fonts = ["Iosevka" "IosevkaTerm"];})
  ];
}
