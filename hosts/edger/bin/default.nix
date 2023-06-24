{ config, pkgs, ... }: {
  home.file."bin/host".source = config.lib.file.mkOutOfStoreSymlink "~/.nix/hosts/edger/bin";
}
