{
  modules.nixos.system.users = { config, args, ... }: {
    users.users.${args.user} = {
      isNormalUser = true;
      description = "Captain";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
    };
  };
}
