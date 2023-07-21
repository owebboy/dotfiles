pkgs:
with pkgs; [
  _1password
  cachix
  iterm2
  postman
  powershell
  tailscale
  teams
  zoom-us
  (import (fetchTarball https://install.devenv.sh/latest)).default
]
