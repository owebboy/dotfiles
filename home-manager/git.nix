{pkgs, ...}: {
  programs.git.difftastic.enable = true;
  programs.gh = {
    enable = true;
    enableGitCredentialHelper = true;
    settings.git_protocol = "ssh";
  };
  programs.git-cliff.enable = true;
  programs.gitui.enable = true;
  programs.git = {
    enable = true;
    userEmail = "popeoliv@msu.edu";
    userName = "Oliver Pope";
    extraConfig = {
      pull = {rebase = true;};
    };
    package = pkgs.gitAndTools.gitFull;
    lfs.enable = true;
  };
}
