{
  description = "My first flake!";
  
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-24.05";
    home-manager.url = "github:nix-community/home-manager/release-24.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {self, nixpkgs, home-manager, ...}:
  let
    system = "x86_64-linux";
    lib = nixpkgs.lib;
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    nixosConfigurations = {
      nixos_vm = lib.nixosSystem {
        inherit system;
	modules = [ ./configuration.nix ];
      };
    };

    homeConfigurations = {
      carltonj2000 = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
	modules = [ ./home.nix ];
      };

    };

  };
}
