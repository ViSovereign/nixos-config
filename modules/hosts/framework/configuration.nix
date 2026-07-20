{ config, ... }: {
  nixosConfigurations = config.lib.mkNixos "framework" {
    modules =
      with config.modules.nixos;
      with config.lib;
      [
        (collect gui { exclude = [ "steam" ]; })
        (collect cli { })
        (collect system {
          exclude = [ "impermanence" ];
        })

        ./_filesystems.nix

        hardware.usb
        hardware.thunderbolt
        hardware.disk.nvme
        hardware.cpu.amd
        hardware.firmware
        hardware.networking
        hardware.bluetooth
        hardware.fingerprint
        hardware.power

      ];
  };
}
