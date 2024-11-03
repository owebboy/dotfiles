{
  system.defaults = {
    finder = {
      AppleShowAllExtensions = true;
      ShowPathbar = true;
      FXEnableExtensionChangeWarning = false;
      CreateDesktop = false;
      FXPreferredViewStyle = "clmv";
    };
    LaunchServices.LSQuarantine = true;
    NSGlobalDomain = {
      ApplePressAndHoldEnabled = false;
      AppleInterfaceStyle = "Dark";
      AppleFontSmoothing = 2;
      AppleScrollerPagingBehavior = true;
      AppleShowAllExtensions = true;
      AppleShowAllFiles = true;
      AppleWindowTabbingMode = "manual";
      NSAutomaticCapitalizationEnabled = false;
      NSAutomaticInlinePredictionEnabled = false;
      NSDocumentSaveNewDocumentsToCloud = false;
      NSNavPanelExpandedStateForSaveMode2 = true;
      "com.apple.sound.beep.volume" = 0.000;
    };
    SoftwareUpdate.AutomaticallyInstallMacOSUpdates = true;
    dock = {
      show-recents = false;
      autohide = false;
      autohide-delay = 0.00;
      autohide-time-modifier = 0.00;
    };

    #loginWindow.GuestEnabled = false;
    screencapture.type = "heic";
  };
}
