{ config, ... }: {
  nixosConfigurations = config.lib.mkNixos "frameworkboot" {
    modules =
      with config.modules.nixos;
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
