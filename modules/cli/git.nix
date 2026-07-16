{
  modules.nixos.cli.git = _: {
    programs.git = {
      enable = true;
      config = {
        user = {
          name = "ViSovereign";
          email = "sovvymobile@gmail.com";
        };
        "protocol.https".allow = "always";
        "push".autoSetupRemote = true;
        "init".defaultBranch = "main";
      };
    };
  };
}
