pkgs: {
  enable = true;
  extraConfig = ''
    local wezterm = require 'wezterm'

    return {
      font_size = 14.0,

      color_scheme = 'Catppuccin Mocha',

      -- Use fish as the default shell
      default_prog = { '${pkgs.fish}/bin/fish' },

      -- Additional WezTerm configurations
      window_background_opacity = 0.95,
      window_padding = {
        left = 2,
        right = 2,
        top = 2,
        bottom = 2,
      },

      -- You can add more custom configurations here
    }
  '';
}
