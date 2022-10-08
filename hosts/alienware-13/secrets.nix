{ config, pkgs, ... }: {
  sops.secrets."nix-serve.a13.secret" = {
    sopsFile = ../../secrets/settings.yaml;
    #owner = "nix-serve";
    #group = "nix-serve";
    mode = "0444";
  };
  # systemd.services.nix-serve.serviceConfig.User = "nix-serve";
  # systemd.services.nix-serve.serviceConfig.Group = "nix-serve";
  services.nix-serve.secretKeyFile = "${config.sops.secrets."nix-serve.a13.secret".path}";
}

