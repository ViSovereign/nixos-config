{
  fileSystems."/mnt/truenas" = {
    device = "//alpine101/";
    fsType = "cifs";
    options = [
      "credentials=/etc/smb-credentials/share"
      "_netdev"
      "uid=1000"
      "gid=100"
    ];
  };
}
