{pkgs, ...}: {
  programs.kitty = {
    enable = true;
    font = {
      name = "Iosevka Term";
      size = 16;
      package = pkgs.iosevka-bin;
    };

    shellIntegration.enableFishIntegration = true;
    shellIntegration.enableBashIntegration = true;
    # themeFile = "Catppuccin-Mocha";
    theme = "Catppuccin-Mocha";

    settings = {
      shell = "${pkgs.fish}/bin/fish";
      window_margin_width = "10";
      background_tint = "0.97";
      background_tint_gaps = "-10.0";
      window_border_width = "1pt";
      active_border_color = "#44ffff";
      single_window_margin_width = "0";
      enabled_layouts = "Tall, *";
      macos_option_as_alt = "true";
      macos_colorspace = "displayp3";
      background_opacity = "0.9";
      background_blur = "64";
      tab_bar_style = "powerline";
      tab_powerline_style = "slanted";
      copy_on_select = "no";
      strip_trailing_spaces = "never";
    };
  };
}
