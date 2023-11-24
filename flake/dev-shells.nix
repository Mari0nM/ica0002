_:
{
  perSystem = { config, pkgs, ... }: {
    devShells = {
      default = pkgs.mkShellNoCC {
        name = "ica0002-shell";

        shellHook = ''
          ${config.pre-commit.installationScript}
        '';
      };
    };
  };
}
