{
  inputs,
  ...
}:
{

  modules.nixos.gui.noctalia-greeter =
    { args, pkgs, lib, ... }:
    let
      pkg = inputs.noctalia-greeter.packages.${pkgs.stdenv.hostPlatform.system}.default;
      exe = lib.getExe' pkg "noctalia-greeter-apply-appearance";
      cursor = {
        theme = "Bibata-Modern-Ice";
        size = 24;
        path = "${pkgs.bibata-cursors}/share/icons";
      };
      greeterToml = (pkgs.formats.toml { }).generate "greeter.toml" (
        import ./_settings.nix { inherit args cursor; }
      );
    in
    {
      imports = [ inputs.noctalia-greeter.nixosModules.default ];

      programs.noctalia-greeter = {
        enable = true;
        package = pkg;
        greeter-args = "";
        settings.cursor = cursor;
      };

      system.activationScripts.noctaliaGreeter = ''
        touch /var/log/noctalia-greeter.log /var/lib/noctalia-greeter/greeter.log
        chown greeter:greeter /var/log/noctalia-greeter.log /var/lib/noctalia-greeter/greeter.log 2>/dev/null || true
        chmod 0664 /var/log/noctalia-greeter.log /var/lib/noctalia-greeter/greeter.log 2>/dev/null || true

        GREETD_CONFIG=/etc/greetd/config.toml ${exe} --setup-system

        install -D -o greeter -g greeter -m 0644 ${greeterToml} /var/lib/noctalia-greeter/greeter.toml

        rm -f /var/lib/noctalia-greeter/greeter.conf
      '';
    };
}
