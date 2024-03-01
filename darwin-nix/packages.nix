pkgs:
with pkgs; [
  #  _1password-gui
  _1password
  cachix
  keka
  keepassxc
  #  rectangle-pro
  postman
  iterm2
  powershell
  tailscale
  transmission
  zoom-us
  mas

  (import (fetchTarball https://install.devenv.sh/latest)).default
]
