{
  modules.nixos.system.keyring = _: {
    services.gnome.gnome-keyring.enable = true;

    security.pam.services = {
      login.enableGnomeKeyring = true;
    };
  };
}
