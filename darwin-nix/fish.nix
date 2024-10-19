{
  pkgs,
  lib,
  inputs,
  ...
}: {
  programs.fish.enable = true;
  environment.shells = [pkgs.fish];
  users.users.oliver.shell = pkgs.fish;
  environment.loginShell = "${pkgs.fish}/bin/fish";

  environment.pathsToLink = ["/share/fish"];
}
