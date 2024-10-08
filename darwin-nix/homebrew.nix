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
    "oven-sh/bun"
    "nikitabobko/tap"
   "felixkratz/formulae" 
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
    "imagemagick"
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
    "oven-sh/bun/bun"
    "felixkratz/formulae/sketchybar"
  ];

  casks = [
    "1password"
    "1password-cli"
    "apparency"
    "avifquicklook"
    "element"
    "firefox@developer-edition"
    "google-chrome@dev"
    "inkscape"
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
    "proton-drive"
    "proton-pass"
    "prusaslicer"
    "qlcolorcode"
    "qlimagesize"
    "qlmarkdown"
    "qlstephen"
    "qlvideo"
    "quicklook-json"
    "quicklookase"
    "raycast"
    "safari-technology-preview"
    "signal"
    "sketch"
    "suspicious-package"
    "telegram"
    "tower"
    "transmit"
    "vlc"
    #"rectangle-pro"
    "nikitabobko/tap/aerospace"
    
  ];
}
