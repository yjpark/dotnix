{
  description = "YJ Park's NixOS and Home Manager Configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:nixos/nixos-hardware/master";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-darwin = {
      url = "github:lnl7/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixos-wsl = {
      url = "github:nix-community/NixOS-WSL/main";
    };
    nix-alien = {
      url = "github:thiagokokada/nix-alien/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    sops-nix = {
      url = "github:Mic92/sops-nix";
    };
  };

  outputs = { self, nixpkgs, nixos-hardware, home-manager, nix-darwin, nixos-wsl, nix-alien, fenix, sops-nix }: {
    nixosConfigurations.edger = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ({ pkgs, ... }: {
          nixpkgs.overlays = [ nix-alien.overlay fenix.overlay sops-nix.overlay ];
        })
        nixos-hardware.nixosModules.common-cpu-amd
        nixos-hardware.nixosModules.common-pc-ssd
        ./hosts/edger
        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.yjpark = import ./home/yjpark/linux/normal;
        }
        sops-nix.nixosModules.sops
      ];
    };
    nixosConfigurations.alienware-13 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ({ pkgs, ... }: {
          nixpkgs.overlays = [ nix-alien.overlay fenix.overlay sops-nix.overlay ];
        })
        nixos-hardware.nixosModules.common-cpu-intel
        nixos-hardware.nixosModules.common-pc-laptop-ssd
        ./hosts/alienware-13
        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.yjpark = import ./home/yjpark/linux/normal;
        }
        sops-nix.nixosModules.sops
      ];
    };
    nixosConfigurations.gpd-p2 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ({ pkgs, ... }: {
          nixpkgs.overlays = [ nix-alien.overlay fenix.overlay sops-nix.overlay ];
        })
        nixos-hardware.nixosModules.common-cpu-intel
        nixos-hardware.nixosModules.common-pc-laptop-ssd
        ./hosts/gpd-p2
        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.yjpark = import ./home/yjpark/linux/normal;
        }
        sops-nix.nixosModules.sops
      ];
    };
    nixosConfigurations.wsl = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ({ pkgs, ... }: {
          nixpkgs.overlays = [ nix-alien.overlay fenix.overlay sops-nix.overlay ];
        })
        nixos-wsl.nixosModules.wsl
        ./hosts/wsl
        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.yjpark = import ./home/yjpark/linux/wsl;
        }
        sops-nix.nixosModules.sops
      ];
    };
    darwinConfigurations.mbp = nix-darwin.lib.darwinSystem {
      system = "x86_64-darwin";
      modules = [
        ({ pkgs, ... }: {
          nixpkgs.overlays = [ nix-alien.overlay fenix.overlay sops-nix.overlay ];
        })
        ./hosts/mbp
        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.yjpark = import ./home/yjpark/darwin.nix;
        }
        sops-nix.nixosModules.sops
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
