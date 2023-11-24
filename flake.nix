{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    systems.url = "github:nix-systems/default";

    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-parts.inputs.nixpkgs-lib.follows = "nixpkgs";

    pre-commit-hooks.url = "github:cachix/pre-commit-hooks.nix";
  };

  outputs = inputs: 
    (inputs.flake-parts.lib.mkFlake { inherit inputs; }
      {
        systems = import inputs.systems;
        imports = [
          ./flake/checks.nix
          ./flake/dev-shells.nix
        ];
      });
}
