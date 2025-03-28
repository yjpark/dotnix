{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    marimo
    python312Packages.bpython
  ];
}

