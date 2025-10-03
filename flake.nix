{
  description = "lefthook-config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    inputs@{
      flake-parts,
      ...
    }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
      ];

      perSystem =
        {
          pkgs,
          ...
        }:
        {
          devShells.default = pkgs.mkShell {
            packages = [
              pkgs.dprint
              pkgs.lefthook
              pkgs.nixfmt-rfc-style
              pkgs.yamlfmt
            ];

            shellHook = ''
              lefthook install
            '';
          };
        };
    };
}
