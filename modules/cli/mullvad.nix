{
  modules.nixos.cli.mullvad = { pkgs, ... }: {
    environment.systemPackages = [ pkgs.mullvad ];
  };
}
