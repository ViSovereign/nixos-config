{
  modules.nixos.cli.mullvad-vpn = { pkgs, ... }: {
    environment.systemPackages = [ pkgs.mullvad-vpn ];
  };
}
