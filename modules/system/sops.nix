{ inputs, ... }: {
  modules.nixos.system.sops = { args, ... }: {
    imports = [ inputs.sops-nix.nixosModules.sops ];

    sops = {
      defaultSopsFile = ../../secrets/secrets.yaml;
      age.keyFile = "/var/lib/sops-nix/key.txt";

      secrets = {
        #user-password.neededForUsers = true;
        github-token.owner = args.user;
        wallhaven-api.owner = args.user;
      };
    };
  };
}
