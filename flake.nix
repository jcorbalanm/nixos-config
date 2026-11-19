{
  description = "Julio Corbalán Moreno's NixOS configuration (laptop + desktop)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:
    let
      mkHost = hostname:
        nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = [
            home-manager.nixosModules.home-manager
            ./hosts/${hostname}
          ];
        };
    in
    {
      nixosConfigurations = {
        portatil = mkHost "portatil";
        pc = mkHost "pc";
      };
    };
}
