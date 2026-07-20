{
  modules.nixos.gui.tailscale = { ... }: {
    services.tailscale = {
      enable = true;
      useRoutingFeatures = "client";
    };
  };
}
