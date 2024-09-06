{
  description = "My first flake!";
  
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-24.05";
  };

  outputs = {self, nixpkgs, ...}:
  let
    lib = nixpkgs.lib;
  in
  {
    nixosConfigurations = {
      nixos_vm = lib.nixosSystem {
        system = "x86_64-linux";
	modules = [ ./configuration.nix ];
      };
    };
  };
}
