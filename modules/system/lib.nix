{
  inputs,
  config,
  lib,
  ...
}:
{
  config.lib = {
    mkNixos =
      hostName:
      {
        hostPlatform ? "x86_64-linux",
        timeZone ? "America/New_York",
        keyMap ? "us",
        user ? "b",
        modules ? [ ],
      }:
      {
        ${hostName} = lib.nixosSystem {
          specialArgs = {
            inherit inputs;
            inherit (config) theme;
            args = {
              inherit
                hostName
                hostPlatform
                timeZone
                keyMap
                user
                ;
            };
          };
          modules = [ ./_custom.nix ] ++ modules;
        };
      };

    collect =
      subtree:
      {
        exclude ? [ ],
      }:
      let
        collectLeaves =
          value:
          if value ? imports then
            [ value ]
          else
            value
            |> (v: if exclude == [ ] then v else removeAttrs v exclude)
            |> lib.attrNames
            |> lib.concatMap (name: collectLeaves value.${name});
      in
      {
        imports = collectLeaves subtree;
      };
  };
}
