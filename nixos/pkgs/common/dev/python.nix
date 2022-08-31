{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    python310Packages.bpython
  ];
}

