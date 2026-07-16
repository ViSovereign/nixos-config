{
  modules.nixos.hardware.fingerprint = _: {
    services.fprintd.enable = true;

    security.pam.services = {
      sudo.fprintAuth = true; # Enable fingerprint for sudo
      su.fprintAuth = true; # Enable fingerprint for su
      login.fprintAuth = false; # Keep for login
    };
  };
}
