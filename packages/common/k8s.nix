{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    kubectl
    kubectx
    linkerd
    pulumi-bin
    kubernetes-helm
  ];
}
