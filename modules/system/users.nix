{
  modules.nixos.system.users = { config, args, ... }: {
    users.users.${args.user} = {
      isNormalUser = true;
      description = "Captain";
      hashedPassword = "$6$0ghV/lIB43aBa1YX$l/R1EafwHeJXZcO3NxelWrf2xxBjAzrMShK.uHvvlh4DwGBle93CDUyj9t4tckuE2MPG6Dyk.OAOvFwIRNzpk.";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
    };
  };
}
