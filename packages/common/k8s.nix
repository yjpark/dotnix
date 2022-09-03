{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    kubectl
    kubectx
    linkerd
    kubernetes-helm
  ];
}
