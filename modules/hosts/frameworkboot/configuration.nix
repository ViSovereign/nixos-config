{ self, ... }: {
  nixosConfigurations = self.lib.mkNixos "frameworkboot" {
    modules =
      with self.modules.nixos;
      with config.lib;
      [
        (collect cli { })
        (collect system { })

        hardware.usb
        hardware.thunderbolt
        hardware.disk.nvme
        hardware.cpu.amd
        hardware.firmware
        hardware.networking
        hardware.bluetooth
        hardware.fingerprint
        hardware.power

        ../framework/_disko.nix

      ];
  };
}
