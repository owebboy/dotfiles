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
    "homebrew/cask-fonts"
    "homebrew/cask-versions"
    "homebrew/services"
    "mongodb/brew"
  ];

  brews = [
    {
      name = "mongodb-community";
      restart_service = true;
      start_service = true;
    }
    "ykman"
    "yubikey-personalization"
    "nss"
    "asn"
    "code-cli"
    "homebrew/core/mongosh"
  ];

  casks = [
    "1password"
    "angry-ip-scanner"
    "apparency"
    "avifquicklook"
    "balenaetcher"
    "brave-browser"
    "chatgpt"
    "element"
    "firefox"
    "firefox@developer-edition"
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
    "syncthing"
    "telegram"
    "tower"
    "transmit"
    "vlc"
  ];
}
