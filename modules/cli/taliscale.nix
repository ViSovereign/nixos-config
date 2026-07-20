{
  modules.nixos.cli.tailscale = { ... }: {
    services.tailscale = {
      enable = true;
      useRoutingFeatures = "client";
    };
  };
}
