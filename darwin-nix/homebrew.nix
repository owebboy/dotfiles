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
  ];

  casks = [
    "apparency"
    "betterzip"
    "element"
    "elgato-control-center"
    "firefox"
    "jetbrains-toolbox"
    "kaleidoscope"
    "keepassxc"
    "keka"
    "macs-fan-control"
    "microsoft-excel"
    "microsoft-outlook"
    "microsoft-powerpoint"
    "microsoft-remote-desktop"
    "microsoft-word"
    "mongodb-compass"
    "mountain-duck"
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
    "suspicious-package"
    "telegram"
    "tower"
    "transmit"
    "vlc"
    "vmware-horizon-client"
    "whatsapp"
  ];
}
