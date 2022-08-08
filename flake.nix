{
  description = "YJ Park's NixOS and Home Manager Configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/release-22.05";
    nixos-hardware.url = "github:nixos/nixos-hardware/master";

    home-manager = {
      url = "github:nix-community/home-manager/release-22.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    rust-overlay.url = "github:oxalica/rust-overlay/master";
  };

  outputs = { self, nixpkgs, nixos-hardware, home-manager, rust-overlay }: {
    nixosConfigurations.alienware-13 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        nixos-hardware.nixosModules.common-cpu-intel
        nixos-hardware.nixosModules.common-pc-laptop-ssd
        ./hosts/alienware-13
        # ./home/nixos.nix
        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.yjpark = import ./home/yjpark;
        }
        ({ pkgs, ... }: {
            nixpkgs.overlays = [ rust-overlay.overlays.default ];
            environment.systemPackages = [ pkgs.rust-bin.stable.latest.default ];
        })
      ];
    };
    homeConfigurations.yjpark = home-manager.lib.homeManagerConfiguration {
      modules = [
        ./home/yjpark
      ];
    };
  };
}
