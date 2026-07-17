{
  inputs,
  config,
  lib,
  ...
}:
let
  extension = shortId: guid: {
    name = guid;
    value = {
      install_url =
        "https://addons.mozilla.org/en-US/firefox/downloads/latest/${shortId}/latest.xpi";
      installation_mode = "force_installed";
    };
  };

  prefs = {
    # Preferences from about:config
    "extensions.autoDisableScopes" = 0;
    "extensions.pocket.enabled" = false;
    "browser.compactmode.show" = true;
    "browser.startup.page" = 1;
    "zen.view.sidebar-expanded" = false;
    "browser.shell.checkDefaultBrowser" = false;
  };

  extensions = [
    (extension "bitwarden-password-manager" "{446900e4-71c2-419f-a6a7-df9c091e268b}")
    (extension "ublock-origin" "uBlock0@raymondhill.net")
    (extension "kagi-search-for-firefox" "search@kagi.com")
    (extension "darkreader" "addon@darkreader.org")
  ];

  policies = {
    DisableTelemetry = true;

    ExtensionSettings = builtins.listToAttrs extensions;

    SearchEngines = {
      Default = "ddg";

      Add = [
        {
          Name = "nixpkgs packages";
          URLTemplate = "https://search.nixos.org/packages?query={searchTerms}";
          IconURL = "https://wiki.nixos.org/favicon.ico";
          Alias = "@np";
        }
        {
          Name = "NixOS options";
          URLTemplate = "https://search.nixos.org/options?query={searchTerms}";
          IconURL = "https://wiki.nixos.org/favicon.ico";
          Alias = "@no";
        }
        {
          Name = "NixOS Wiki";
          URLTemplate = "https://wiki.nixos.org/w/index.php?search={searchTerms}";
          IconURL = "https://wiki.nixos.org/favicon.ico";
          Alias = "@nw";
        }
        {
          Name = "noogle";
          URLTemplate = "https://noogle.dev/q?term={searchTerms}";
          IconURL = "https://noogle.dev/favicon.ico";
          Alias = "@ng";
        }
      ];
    };
  };
in
{
  packages.zen =
    pkgs:
    pkgs.wrapFirefox
      inputs.zen.packages.${pkgs.stdenv.hostPlatform.system}.zen-browser-unwrapped
      {
        extraPrefs = lib.concatLines (
          lib.mapAttrsToList (
            name: value:
            ''lockPref(${builtins.toJSON name}, ${builtins.toJSON value});''
          ) prefs
        );

        extraPolicies = policies;
      };

  modules.nixos.gui.zen =
    { pkgs, ... }:
    let
      pkg = config.packages.zen pkgs;
    in
    {
      environment.systemPackages = [ pkg ];

      custom.keybinds."Mod+Shift+B".spawn = [ (lib.getExe pkg) ];
    };
}
