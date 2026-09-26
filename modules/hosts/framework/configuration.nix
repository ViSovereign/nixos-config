{ self, ... }:
{
  nixosConfigurations = self.lib.mkNixos "framework" {
    modules =
      with self.modules.nixos;
      with self.lib;
      [
        (collect gui { exclude = [ "steam" ]; })
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

        ./_disko.nix

      ];
  };
}
