{
  enable = true;
  global.brewfile = true;
  onActivation = {
    cleanup = "uninstall";
    autoUpdate = true;
    upgrade = true;
  };
  taps = [
    "homebrew/bundle"
    "homebrew/services"
    "mongodb/brew"
  ];

  brews = [
    {
      name = "mongodb-community";
      restart_service = true;
      start_service = true;
    }
    "asn"
    "brotli"
    "c-ares"
    "code-cli"
    "icu4c"
    "libnghttp2"
    "libuv"
    "mas"
    "mongodb/brew/mongodb-community-shell"
    "mongodb/brew/mongodb-database-tools"
    "mongosh"
    "node"
    "nss"
    "podman"
    "podman-compose"
    "ykman"
    "yubikey-personalization"
  ];

  casks = [
    "1password"
    "1password-cli"
    "angry-ip-scanner"
    "apparency"
    "avifquicklook"
    "balenaetcher"
    "brave-browser"
    "raycast"
    "element"
    "eloston-chromium"
    "firefox"
    "firefox@developer-edition"
    "iterm2"
    "jetbrains-toolbox"
    "kaleidoscope"
    "keepassxc"
    "keka"
    "mactex"
    "microsoft-auto-update"
    "microsoft-excel"
    "microsoft-outlook"
    "microsoft-remote-desktop"
    "microsoft-teams"
    "microsoft-word"
    "mongodb-compass"
    "podman-desktop"
    "postman"
    "protonmail-bridge"
    "protonvpn"
    "prusaslicer"
    "qlcolorcode"
    "qlimagesize"
    "qlmarkdown"
    "qlstephen"
    "qlvideo"
    "quicklook-json"
    "quicklookase"
    "rectangle-pro"
    "safari-technology-preview"
    "signal"
    "sketch"
    "suspicious-package"
    "telegram"
    "tower"
    "transmit"
    "vlc"
    "arc"
  ];
}
