{pkgs, ...}: {
  programs.fish.enable = true;
  programs.tmux.enable = true;
  environment.shells = [pkgs.fish];
  users.users.oliver.shell = pkgs.fish;
  environment.pathsToLink = ["/share/fish"];

}
