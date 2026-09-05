{
  modules.nixos.gui.mullvad-vpn = { pkgs, ... }: {
    environment.systemPackages = [ pkgs.mullvad-vpn pkgs.mullvad];

    services.mullvad-vpn = {
      enable = true;
      gui.enable = true;
    };
  };
}
