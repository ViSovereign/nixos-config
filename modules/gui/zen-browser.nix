{
  modules.nixos.gui.zen-browser = { inputs, ... }: {
    imports = [ inputs.zen-browser.nixosModules.zen-browser ];

    programs.zen-browser = {
      enable = true;
    };
  };
}
