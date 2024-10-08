pkgs:{
  enable = true;
  font = {
    name = "IosevkaTerm Nerd Font";
    size = 14;
  };

  shellIntegration.enableFishIntegration = true;
  themeFile = "Catppuccin-Mocha";

  settings = {
        shell = "${pkgs.fish}/bin/fish";

  };
}
