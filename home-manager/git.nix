{pkgs, ...}: {
  programs.git.difftastic.enable = true;
  programs.gh = {
    enable = true;
    gitCredentialHelper.enable = true;
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
      user.signingkey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJv1w9YH/yPiPvgmzhqZkNowGiIYNNhkColPPJ3XGGPN";
      gpg.format = "ssh";
      gpg.ssh.program = "/Applications/1Password.app/Contents/MacOS/op-ssh-sign";
      commit.gpgsign = true;
    };
    package = pkgs.gitAndTools.gitFull;
    lfs.enable = true;
  };

  programs.lazygit = {
    enable = true;
    settings = {
      os.editPreset = "nvim";
      gui.theme = {
        activeBorderColor = ["#89b4fa" "bold"];
        inactiveBorderColor = ["#a6adc8"];
        optionsTextColor = ["#89b4fa"];
        selectedLineBgColor = ["#313244"];
        cherryPickedCommitBgColor = ["#45475a"];
        cherryPickedCommitFgColor = ["#89b4fa"];
        unstagedChangesColor = ["#f38ba8"];
        defaultFgColor = ["#cdd6f4"];
        searchingActiveBorderColor = ["#f9e2af"];
        authorColors."*" = ["#b4befe"];
      };
    };
  };
}
