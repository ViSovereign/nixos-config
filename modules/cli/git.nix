{
  modules.nixos.cli.git = { ... }: {
    programs.git = {
      enable = true;
      config = {
        user = {
          name = "ViSovereign";
          email = "Sovvymobile@gmail.com";
        };
        "protocol.https".allow = "always";
        "push".autoSetupRemote = true;
        "init".defaultBranch = "main";
      };
    };
  };
}
