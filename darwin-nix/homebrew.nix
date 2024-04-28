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
    "cleanmymac"
    "element"
    "firefox"
    "jetbrains-toolbox"
    "kaleidoscope"
    "keepassxc"
    "keka"
    "microsoft-auto-update"
    "microsoft-excel"
    "microsoft-outlook"
    "microsoft-teams"
    "microsoft-remote-desktop"
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
    "signal"
    "sketch"
    "sublime-merge"
    "sublime-text"
    "syncthing"
    "suspicious-package"
    "telegram"
    "tower"
    "transmit"
    "vlc"
    "whatsapp"
  ];
}
