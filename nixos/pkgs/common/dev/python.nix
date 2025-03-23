{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    marimo
    uv
    python312Packages.bpython
  ];
}

