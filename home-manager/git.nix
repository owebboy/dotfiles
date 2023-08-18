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
      pull.rebase = true;
      push.autoSetupRemote = true;
      init.defaultBranch = "main";
      column.ui = "auto";
      difftool."Kaleidoscope".cmd = "ksdiff --partial-changeset --relative-path \"$MERGED\" -- \"$LOCAL\" \"$REMOTE\"";
      difftool = {
        prompt = false;
        trustExitCode = true;
      };
      mergetool."Kaleidoscope" = {
        cmd = "ksdiff --merge --output \"$MERGED\" --base \"$BASE\" -- \"$LOCAL\" --snapshot \"$REMOTE\" --snapshot";
        trustExitCode = true;
      };
      diff.tool = "Kaleidoscope";
      feature.manyFiles = true;
    };
    package = pkgs.gitAndTools.gitFull;
    lfs.enable = true;
  };
}
