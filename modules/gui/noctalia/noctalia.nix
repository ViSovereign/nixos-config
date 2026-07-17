{
  inputs,
  config,
  lib,
  ...
}:
{
  packages.noctalia =
    pkgs:
    inputs.nix-wrapper-modules.lib.wrapPackage {
      inherit pkgs;
      package = inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default;
      env.NOCTALIA_CONFIG_HOME = "${placeholder "out"}/";
      constructFiles = {
        settings = {
          relPath = "noctalia/config.toml";
          content = builtins.toJSON (import ./_settings.nix config);
          builder = "${lib.getExe pkgs.remarshal} -f json -i \"$1\" -t toml -o \"$2\"";
        };
      };
    };

  modules.nixos.gui.noctalia =
    { pkgs, lib, ... }:
    let
      pkg = config.packages.noctalia pkgs;
      exe = lib.getExe pkg;
    in
    {
      environment.systemPackages = [ pkg ];

      security.polkit = {
        enable = true;
        enablePkexecWrapper = true;
      };

      systemd.user.services.noctalia = {
        partOf = [ "graphical-session.target" ];
        after = [ "graphical-session.target" ];
        wantedBy = [ "graphical-session.target" ];
        restartTriggers = [ pkg ];
        environment.PATH = lib.mkForce null;
        serviceConfig = {
          ExecStart = exe;
          Restart = "on-failure";
        };
      };

      custom.keybinds = {

        "XF86AudioRaiseVolume".spawn = [
          exe
          "msg"
          "volume-up"
        ];
        "XF86AudioLowerVolume".spawn = [
          exe
          "msg"
          "volume-down"
        ];
        "XF86AudioMute".spawn = [
          exe
          "msg"
          "volume-mute"
        ];

        "Mod+XF86AudioRaiseVolume".spawn = [
          exe
          "msg"
          "mic-volume-up"
        ];
        "Mod+XF86AudioLowerVolume".spawn = [
          exe
          "msg"
          "mic-volume-down"
        ];
        "Mod+XF86AudioMute".spawn = [
          exe
          "msg"
          "mic-volume-mute"
        ];

        "XF86MonBrightnessUp".spawn = [
          exe
          "msg"
          "brightness-up"
        ];
        "XF86MonBrightnessDown".spawn = [
          exe
          "msg"
          "brightness-down"
        ];

        "XF86AudioPlay".spawn = [
          exe
          "msg"
          "media"
          "toggle"
        ];
        "XF86AudioNext".spawn = [
          exe
          "msg"
          "media"
          "next"
        ];
        "XF86AudioPrev".spawn = [
          exe
          "msg"
          "media"
          "previous"
        ];

        "Mod+Space".spawn = [
          exe
          "msg"
          "panel-toggle"
          "launcher"
        ];
        "Mod+Comma".spawn = [
          exe
          "msg"
          "settings-toggle"
        ];
        "Mod+Escape".spawn = [
          exe
          "msg"
          "panel-toggle"
          "session"
        ];
        "Mod+V".spawn = [
          exe
          "msg"
          "panel-toggle"
          "clipboard"
        ];
        "Mod+S".spawn = [
          exe
          "msg"
          "screenshot-region"
        ];
        "Print".spawn = [
          exe
          "msg"
          "screenshot-fullscreen"
        ];
        "XF86AudioMedia".spawn = [
          exe
          "msg"
          "screenshot-fullscreen"
        ];
      };
    };
}
