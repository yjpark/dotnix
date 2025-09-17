{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    marimo
    uv
    python313Packages.bpython
  ];
}

