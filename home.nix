{ inputs
, pkgs
, ...
}: {
  imports = [
    ./home-manager/shell.nix
    ./home-manager/packages.nix
    ./home-manager/xdg.nix
    ./nixos/system/hyprland/hyprland.nix
  ];

  home.username = "oliver";
  home.homeDirectory = "/home/oliver";
  home.stateVersion = "23.11";
  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.vanilla-dmz;
    name = "Vanilla-DMZ";
  };

  colorScheme = inputs.nix-colors.colorSchemes.catppuccin-mocha;

  #targets.darwin.search = "DuckDuckGo";

  programs.man.generateCaches = true;

  programs.home-manager.enable = true;
  programs.ruff.enable = true;
  programs.ruff.settings = {
    line-length = 80;
  };
  programs.bottom.enable = true;
  programs.htop.enable = true;
  programs.aria2.enable = true;
  programs.jq.enable = true;
  programs.less.enable = true;
  programs.lesspipe.enable = true;
  programs.ripgrep.enable = true;
  programs.ripgrep.arguments = [
    "--max-columns=150"
    "--max-columns-preview"

    # Add my 'web' type.
    "--type-add"
    "web:*.{html,css,js}*"

    # Search hidden files / directories (e.g. dotfiles) by default
    "--hidden"

    # Using glob patterns to include/exclude files or folders
    "--glob=!.git/*"

    # Set the colors.
    "--colors=line:none"
    "--colors=line:style:bold"

    # Because who cares about case!?
    "--smart-case"
  ];
}
