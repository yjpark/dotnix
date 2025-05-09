{
  description = "YJ Park's NixOS and Home Manager Configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixos-hardware = {
      url = "github:nixos/nixos-hardware/master";
    };
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
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-alien = {
      url = "github:thiagokokada/nix-alien/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    vscode-server = {
      url = "github:nix-community/nixos-vscode-server";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    niri = {
      url = "github:sodiboo/niri-flake";
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
              inputs.nix-alien.overlays.default
              inputs.sops-nix.overlays.default
              inputs.niri.overlays.niri
            ];
          })
          ./hosts/${host}
          inputs.home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.yjpark = import ./home/${home};
          }
          inputs.sops-nix.nixosModules.sops
          inputs.vscode-server.nixosModules.default
          inputs.niri.nixosModules.niri
        ] ++ extra;
      };
      mkHome =
      { system
      , home
      , extra
      }: inputs.home-manager.lib.homeManagerConfiguration {
        pkgs = inputs.nixpkgs.legacyPackages.${system};
        modules = [
          ./home/${home}
          ./programs/home-manager.nix
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
      nixosConfigurations.pc = mkHost {
        system = "x86_64-linux";
        host = "pc";
        home = "yjpark/linux/normal";
        extra = [
          inputs.nixos-hardware.nixosModules.common-cpu-intel
          inputs.nixos-hardware.nixosModules.common-pc-ssd
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
      nixosConfigurations."dev-edger-dev" = mkHost {
        system = "aarch64-linux";
        host = "dev.edger.dev";
        home = "yjpark/linux/server";
        extra = [
          inputs.nixos-wsl.nixosModules.wsl
        ];
      };
      homeConfigurations."yjpark@mbp" = mkHome {
        system = "x86_64-darwin";
        home ="yjpark/darwin.nix";
        extra = [];
      };
      homeConfigurations."yjpark@yjpark-mbp.local" = mkHome {
        system = "x86_64-darwin";
        home ="yjpark/darwin.nix";
        extra = [];
      };
      homeConfigurations."yjpark@linux.server" = mkHome {
        system = "x86_64-linux";
        home = "yjpark/linux/server";
        extra = [];
      };
      homeConfigurations."yjpark@linux.server.arm64" = mkHome {
        system = "aarch64-linux";
        home = "yjpark/linux/server";
        extra = [];
      };
      homeConfigurations."root@linux.session" = mkHome {
        system = "x86_64-linux";
        home = "root/linux/session";
        extra = [];
      };
      homeConfigurations."yjpark@minimal" = mkHome {
        system = "x86_64-linux";
        home = "yjpark/minimal";
        extra = [];
      };
      homeConfigurations."yjpark@minimal.darwin" = mkHome {
        system = "x86_64-darwin";
        home = "yjpark/minimal";
        extra = [];
      };
    };
}
