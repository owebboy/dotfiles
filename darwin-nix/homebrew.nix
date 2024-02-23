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
    "elgato-control-center"
    "firefox"
    "jetbrains-toolbox"
    "kaleidoscope"
    "keepassxc"
    "keka"
    "macs-fan-control"
    "microsoft-auto-update"
    "microsoft-excel"
    "microsoft-outlook"
    "microsoft-powerpoint"
    "microsoft-remote-desktop"
    "microsoft-word"
    "mongodb-compass"
    "mountain-duck"
    "postman"
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
    "syncthing"
    "telegram"
    "tower"
    "transmit"
    "vlc"
    "vmware-horizon-client"
    "whatsapp"
  ];
}
