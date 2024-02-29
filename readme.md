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

## References

- nix-darwin configuration: https://daiderd.com/nix-darwin/manual/index.html
- home-manager: https://github.com/nix-community/home-manager
- home-manager options: https://mipmip.github.io/home-manager-option-search/
- awesome-nix: https://github.com/nix-community/awesome-nix
- NixVim: https://github.com/nix-community/nixvim

`xattr -d -r com.apple.quarantine ~/Library/QuickLook`
