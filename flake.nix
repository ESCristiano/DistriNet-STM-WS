{
  description = "Embedded ARM dev shell with Python packages";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
	
	dependencies = [
          pkgs.cmake
          pkgs.gcc-arm-embedded-13
      	];

      in {
        devShells.default = pkgs.mkShell {
          name = "tfm-dev-shell";

          buildInputs = [
            dependencies
          ];

          shellHook = ''
           echo "ARM dev environment ready."
	  
	   # If fish exists, open it
           if command -v fish &> /dev/null; then
             exec fish
           fi
          '';
        };
      }
    );
}
