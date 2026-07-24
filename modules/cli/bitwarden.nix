{
  modules.nixos.cli.bitwarden = {pkgs, ...}: {
    environment = {
      systemPackages = [ pkgs.bitwarden-cli ];
    };
  };
}
