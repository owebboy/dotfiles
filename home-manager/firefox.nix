{pkgs, ...}: {
  programs.firefox = {
    enable = true;
    package = pkgs.firefox-beta-bin;
    profiles = {
      "oliver" = {
        id = 999;
        isDefault = true;

        search.default = "DuckDuckGo";
        search.force = true;
        search.engines = {
          "Nix Packages" = {
            urls = [
              {
                template = "https://search.nixos.org/packages";
                params = [
                  {
                    name = "query";
                    value = "{searchTerms}";
                  }
                ];
              }
            ];
            icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
            definedAliases = ["@np"];
          };
          "Nix Options" = {
            definedAliases = ["@no"];
            urls = [
              {
                template = "https://search.nixos.org/options";
                params = [
                  {
                    name = "query";
                    value = "{searchTerms}";
                  }
                ];
              }
            ];
          };
        };

        settings = {
          "extensions.autoDisableScopes" = 0;
        };

        extensions = with pkgs.nur.repos.rycee.firefox-addons; [
          onepassword-password-manager
          aria2-integration
          darkreader
          behave
          canvasblocker
          catppuccin-gh-file-explorer
          decentraleyes
          enhancer-for-youtube
          firefox-color
          multi-account-containers
          i-dont-care-about-cookies
          search-by-image
          stylus
          tampermonkey
          ublock-origin
          web-archives
        ];
      };
    };
  };
}
