# Oliver's Dotfiles

## How to use

1. Fork this repository
2. Clone into ~/.dotfiles
3. [Install Nix](https://nixos.org/download.html)
4. [Install Homebrew](https://brew.sh/)
5. [Install Nix-Darwin](https://github.com/LnL7/nix-darwin#installing)
6. Substitute your system username for `oliver` in `darwin-configuration.nix`
7. Run:

```bash
NIXPKGS_ALLOW_UNFREE=1 darwin-rebuild switch -I darwin-config=$HOME/.dotfiles/darwin-configuration.nix
```

```bash
nix run nix-darwin --extra-experimental-features nix-command --extra-experimental-features flakes --option trusted-substituters "https://cache.nixos.org https://nix-community.cachix.org https://numtide.cachix.org https://hydra.nixos.org" --option trusted-public-keys "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY= nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs= numtide.cachix.org-1:2ps1kLBUWjxIneOy1Ik6cQjb41X0iXVXeHigGmycPPE= hydra.nixos.org-1:CNHJZBh9K4tP3EKF6FkkgeVYsS3ohTl+oS0Qa8bezVs=" --option auto-optimise-store false  --fallback -- switch --flake ~/.dotfiles
```

## References

- nix-darwin configuration: https://daiderd.com/nix-darwin/manual/index.html
- home-manager: https://github.com/nix-community/home-manager
- home-manager options: https://mipmip.github.io/home-manager-option-search/
- awesome-nix: https://github.com/nix-community/awesome-nix
- NixVim: https://github.com/nix-community/nixvim

`xattr -d -r com.apple.quarantine ~/Library/QuickLook`
