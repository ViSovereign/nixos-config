{ config, ... }: {
  nixosConfigurations = config.lib.mkNixos "desktop" {
    modules =
      with config.modules.nixos;
      with config.lib;
      [
        (collect gui { })
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
        hardwarhardwaree.bluetooth
        hardware.fingerprint
        hardware.power

      ];
  };
}
