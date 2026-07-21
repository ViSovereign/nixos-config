{
  modules.nixos.gui.ly = { args, ... }: {
    services.displayManager = {
      autoLogin = {
        enable = false;
        inherit (args) user;
      };
      ly = {
        enable = false;
        x11Support = false;
      };
    };
  };
}
