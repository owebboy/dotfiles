pkgs:
with pkgs; [
  fira
  fira-code
  fira-code-symbols
  fira-mono
  inter
  iosevka
  overpass
  (nerdfonts.override { fonts = [ "Iosevka" "IosevkaTerm" ]; })
]
