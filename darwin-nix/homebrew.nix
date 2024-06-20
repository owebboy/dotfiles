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
    "asn"
    "code-cli"
    "homebrew/core/mongosh"
    "mas"
    "nss"
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
    "chatgpt"
    "element"
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
  ];
}
