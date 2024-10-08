{


  programs.fish = {
    enable = true;
  };

  programs.eza = {
    enable = true;
    enableFishIntegration = true;
    git = true;
    icons = true;
  };

  programs.starship = {
    enable = true;
    enableTransience = true;
    enableFishIntegration = true;
  }; 
}
