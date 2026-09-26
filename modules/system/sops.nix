{ inputs, ... }: {
  modules.nixos.system.sops =
  { args, ... }: {
    imports = [ inputs.sops-nix.nixosModules.default ];

    sops = {
      defaultSopsFile = ../../secrets/secrets.yaml;
      age.keyFile = "/etc/age/key.txt";

      secrets = {
        #user-password.neededForUsers = true;
        github-token.owner = args.user;
        wallhaven-api.owner = args.user;
      };
    };
  };
}
