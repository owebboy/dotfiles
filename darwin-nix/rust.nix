{pkgs, ...}: {
  environment.systemPackages = pkgs.rust-bin.stable.latest.default;
}
