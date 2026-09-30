{
  modules.nixos.gui.helium = { inputs, ... }: {
    imports = [ inputs.helium.nixosModules.default ];

    programs.helium = {
      enable = true;

      # 🚩 Flags - Command-line arguments always passed to Helium
      flags = [
        "--ozone-platform-hint=auto"
      ];

      # 🎯 Policies - Written to /etc/chromium/policies/managed/helium-nixos.json
      # Also written to /etc/helium/policies/managed/ for future compatibility
      policies = {
        "BrowserSignin" = 0;
        "PasswordManagerEnabled" = false;
        "SyncDisabled" = true;
        "SpellcheckEnabled" = true;
        "SpellcheckLanguage" = [ "en-US" ];
        "ExtensionInstallForcelist" = [     # Pre-install extensions
          "cjpalhdlnbpafiamejdnhcphjbkeiagm"# uBlock Origin
          "nngceckbapebfimnlniiiahkandclblb"# BitWarden
          "nkbikckldmljjiiajklecmgmajgapbfl"# PIPx
        ];
      };
    };

      custom.persist.user.directories = [
        ".config/net.imput.helium"
      ];

      custom.keybinds = {
        "Mod+B".spawn = [
        "helium"
      ];
    };
  };
}
