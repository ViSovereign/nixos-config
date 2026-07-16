{
  modules.nixos.gui.firefox = { pkgs, ... }: {
    #environment.systemPackages = [ pkgs.firefox ];

    programs.firefox = {
      enable = true;
      preferences = {
        "browser.startup.homepage"      = "https://homepage.amandis.live";
        "privacy.resistFingerprinting"  = true;
        "sidebar.revamp" = true;
        "sidebar.verticalTabs" = true;
      };

      policies = {
        DisableTelemetry = true;
        OfferToSaveLogins = false;
        ExtensionSettings = let
          moz = short: "https://addons.mozilla.org/firefox/downloads/latest/${short}/latest.xpi";
        in {
          "*".installation_mode = "blocked";

          "uBlock0@raymondhill.net" = {
            install_url       = moz "ublock-origin";
            installation_mode = "force_installed";
            updates_disabled  = true;
          };

          "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
            install_url       = moz "bitwarden-password-manager";
            installation_mode = "force_installed";
            updates_disabled  = true;
          };

          "addon@darkreader.org" = {
            install_url       = moz "darkreader";
            installation_mode = "force_installed";
            updates_disabled  = true;
          };

          "search@kagi.com" = {
            install_url       = moz "kagi-search-for-firefox";
            installation_mode = "force_installed";
            updates_disabled  = true;
          };
        };

        profiles.default.search = {
          force           = true;

          engines = {
            "Nix Packages" = {
              urls = [
                {
                  template = "https://search.nixos.org/packages";
                  params = [
                    { name = "channel"; value = "unstable"; }
                    { name = "query";   value = "{searchTerms}"; }
                  ];
                }
              ];
              icon           = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
              definedAliases = [ "@np" ];
            };

            "Nix Options" = {
              urls = [
                {
                  template = "https://search.nixos.org/options";
                  params = [
                    { name = "channel"; value = "unstable"; }
                    { name = "query";   value = "{searchTerms}"; }
                  ];
                }
              ];
              icon           = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
              definedAliases = [ "@no" ];
            };

            "NixOS Wiki" = {
              urls = [
                {
                  template = "https://wiki.nixos.org/w/index.php";
                  params = [
                    { name = "search"; value = "{searchTerms}"; }
                  ];
                }
              ];
              icon           = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
              definedAliases = [ "@nw" ];
            };
          };
        };
      };
    };

    custom.keybinds = {
      "Mod+B".spawn = [
        "firefox"
      ];
    };
  };
}
