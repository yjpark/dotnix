{
  description = "YJ Park's NixOS and Home Manager Configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/release-22.05";
    nixos-hardware.url = "github:nixos/nixos-hardware/master";
    home-manager = {
      url = "github:nix-community/home-manager/release-22.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    darwin = {
      url = "github:lnl7/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    rust-overlay.url = "github:oxalica/rust-overlay/master";
  };

  outputs = { self, nixpkgs, nixos-hardware, home-manager, darwin, rust-overlay }: {
    nixosConfigurations.alienware-13 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        nixos-hardware.nixosModules.common-cpu-intel
        nixos-hardware.nixosModules.common-pc-laptop-ssd
        ./hosts/alienware-13
        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.yjpark = import ./home/yjpark/linux.nix;
        }
        ({ pkgs, ... }: {
            nixpkgs.overlays = [ rust-overlay.overlays.default ];
            environment.systemPackages = [ pkgs.rust-bin.stable.latest.default ];
        })
      ];
    };
    darwinConfigurations.mbp = darwin.lib.darwinSystem {
      system = "x86_64-darwin";
      modules = [
        ./hosts/mbp
        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.yjpark = import ./home/yjpark/darwin.nix;
        }
      ];
    };
    homeConfigurations."yjpark@mbp" = home-manager.lib.homeManagerConfiguration {
      username = "yjpark";
      homeDirectory = "/Users/yjpark";
      system = "x86_64-darwin";
      configuration.imports = [
        ./home/yjpark/darwin.nix
      ];
    };
  };
}
