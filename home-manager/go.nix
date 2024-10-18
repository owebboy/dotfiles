{
  programs.go = {
    enable = true;
    packages = {
      "github.com/suntong/html2md" = builtins.fetchGit "https://github.com/suntong/html2md";
    };
  };
}
