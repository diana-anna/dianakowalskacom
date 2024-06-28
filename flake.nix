{
  description = "Development environment for dianakowalska.com";

  inputs = { nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable"; };

  outputs = { self, nixpkgs }:
    let pkgs = import nixpkgs { system = "x86_64-linux"; };
    in {
      devShells.x86_64-linux.default =
        pkgs.mkShell { packages = [ pkgs.hugo ]; };
    };
}
