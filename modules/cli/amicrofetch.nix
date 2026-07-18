{
  modules.nixos.cli.microfetch = {lib, pkgs, ...}: {
    environment = {
      systemPackages = [ pkgs.microfetch ];

      shellAliases = {
        mf = "microfetch";
      };
    };

    programs.fish = {
      interactiveShellInit = ''
        microfetch
      '';
    };
  };
}
