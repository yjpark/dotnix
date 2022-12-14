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

  outputs = inputs:
    let mkHost =
      { system
      , host
      , home
      , extra
      }: inputs.nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ({ pkgs, ... }: {
            nixpkgs.overlays = [
              inputs.nix-alien.overlay
              inputs.fenix.overlays.default
              inputs.sops-nix.overlay
            ];
          })
          ./hosts/${host}
          inputs.home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.yjpark = import ./home/${home};
          }
          inputs.sops-nix.nixosModules.sops
        ] ++ extra;
      };
    in {
      nixosConfigurations.edger = mkHost {
        system = "x86_64-linux";
        host = "edger";
        home = "yjpark/linux/normal";
        extra = [
          inputs.nixos-hardware.nixosModules.common-cpu-amd
          inputs.nixos-hardware.nixosModules.common-pc-ssd
        ];
      };
      nixosConfigurations.alienware-13 = mkHost {
        system = "x86_64-linux";
        host = "alienware-13";
        home = "yjpark/linux/normal";
        extra = [
          inputs.nixos-hardware.nixosModules.common-cpu-intel
          inputs.nixos-hardware.nixosModules.common-pc-laptop-ssd
        ];
      };
      nixosConfigurations.gpd-p2 = mkHost {
        system = "x86_64-linux";
        host = "gpd-p2";
        home = "yjpark/linux/normal";
        extra = [
          inputs.nixos-hardware.nixosModules.common-cpu-intel
          inputs.nixos-hardware.nixosModules.common-pc-laptop-ssd
        ];
      };
      nixosConfigurations.hp-g1 = mkHost {
        system = "x86_64-linux";
        host = "hp-g1";
        home = "yjpark/linux/normal";
        extra = [
          inputs.nixos-hardware.nixosModules.common-cpu-intel
          inputs.nixos-hardware.nixosModules.common-pc-laptop-ssd
        ];
      };
      nixosConfigurations.wsl = mkHost {
        system = "x86_64-linux";
        host = "wsl";
        home = "yjpark/linux/wsl";
        extra = [
          inputs.nixos-wsl.nixosModules.wsl
        ];
      };
      homeConfigurations."yjpark@mbp" = inputs.home-manager.lib.homeManagerConfiguration {
        username = "yjpark";
        homeDirectory = "/Users/yjpark";
        system = "x86_64-darwin";
        configuration.imports = [
          ./home/yjpark/darwin.nix
        ];
      };
    };
}
