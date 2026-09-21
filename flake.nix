{
  description = "Development environment for the blog";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forEachSystem = function:
        nixpkgs.lib.genAttrs systems (system: function nixpkgs.legacyPackages.${system});
    in
    {
      devShells = forEachSystem (pkgs: {
        default = pkgs.mkShell {
          packages = [
            pkgs.ruby_4_0
            pkgs.bundler
          ];

          shellHook = ''
            export BUNDLE_PATH="''${BUNDLE_PATH:-$PWD/.bundle}"
            export PATH="$PWD/bin:$BUNDLE_PATH/bin:$PATH"

            if ! bundle check >/dev/null 2>&1; then
              echo "Ruby dependencies are not installed. Run: bundle install"
            fi
          '';
        };
      });
    };
}