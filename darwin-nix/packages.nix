pkgs:
with pkgs; [
  _1password
  cachix
  iterm2
  powershell
  tailscale
  transmission
  zoom-us
  (import (fetchTarball https://install.devenv.sh/latest)).default
]
