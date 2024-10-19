{
  programs.go = {
    enable = true;
    packages = {
      "github.com/suntong/html2md" = builtins.fetchGit {
        url = "https://github.com/suntong/html2md";
        ref = "v1.5.0";
        rev = "b194d45263a3ce8627eb93f1132ed2bc408687f6";
        # sha256 = "1nnsbdp213z9fllmwbbjfisjsd4xixb13g9k4i4l0mbqzl7zww0x";
      };
    };
  };
}
