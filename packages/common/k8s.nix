{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    kubectl
    k0sctl
    tanka
  ];
}
