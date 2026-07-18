{
  modules.nixos.cli.microfetch = _: {
    programs.microfetch = {
      enable = true;
    };
  };
}
