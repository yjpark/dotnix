{ config, pkgs, ... }: {
  services.zerotierone = {
    joinNetworks = [
      "b6079f73c65fd409" #ilx
    ];
  };
}

