{
  modules.nixos.hardware.filesystems = _: {

    fileSystems."/" = {
      device = "/dev/disk/by-uuid/d2670b20-7848-4f60-94b5-8e4d0b01e81f";
      fsType = "btrfs";
    };

    fileSystems."/home" = {
      device = "/dev/disk/by-uuid/d2670b20-7848-4f60-94b5-8e4d0b01e81f";
      fsType = "btrfs";
      options = [ "subvol=home" ];
    };

    fileSystems."/nix" = {
      device = "/dev/disk/by-uuid/d2670b20-7848-4f60-94b5-8e4d0b01e81f";
      fsType = "btrfs";
      options = [ "subvol=nix" ];
    };

    fileSystems."/boot" = {
      device = "/dev/disk/by-uuid/45F2-DE7A";
      fsType = "vfat";
      options = [
        "fmask=0077"
        "dmask=0077"
      ];
    };

    swapDevices = [
      { device = "/dev/disk/by-uuid/3e6ddd4f-6506-4a96-b8e2-e856a9ed2ae7"; }
    ];
  };
}
