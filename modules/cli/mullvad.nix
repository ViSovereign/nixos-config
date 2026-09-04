{
  modules.nixos.cli.mullvad = { pkgs, ... }: {
    environment.systemPackages = [ pkgs.mullvad ];

    services.mullvad = {
      enable = true;
      package = pkgs.mullvad;
    };
  };
}
