{
  enable = true;
  global.brewfile = true;
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
  ];

  casks = [
    "1password"
    "angry-ip-scanner"
    "apparency"
    "betterzip"
    "cleanmymac"
    "element"
    "firefox"
    "jetbrains-toolbox"
    "kaleidoscope"
    "keepassxc"
    "microsoft-auto-update"
    "microsoft-excel"
    "microsoft-outlook"
    "microsoft-teams"
    "microsoft-remote-desktop"
    "mongodb-compass"
    "protonmail-bridge"
    "protonvpn"
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
    "suspicious-package"
    "telegram"
    "tower"
    "transmit"
    "vlc"
    "whatsapp"
  ];
}
