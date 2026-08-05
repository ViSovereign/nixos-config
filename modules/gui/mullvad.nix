{
  modules.nixos.cli.mullvad-vpn = { pkgs, ... }: {
    environment.systemPackages = [ pkgs.mullvad-vpn ];

    services.mullvad-vpn = {
      enable = true;
      package = pkgs.mullvad-vpn;
    };
  };
}
