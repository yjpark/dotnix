{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    kubectl
    kubectx
    k0sctl
    tanka
    jsonnet-bundler
  ];
}
