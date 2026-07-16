{
  modules.nixos.hardware.power = _: {
    services = {
      upower.enable = true;
      power-profiles-daemon.enable = true;

      logind.settings.Login = {
        HandleLidSwitch = "suspend-then-hibernate";
        HandleLidSwitchExternalPower = "suspend";
        HandleLidSwitchDocked = "ignore";
      };
    };
  };
}
