{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    kubectl
    kubectx
    krew
    linkerd
    kubernetes-helm
    k9s
    kubeshark
    kubespy
    kubevela
  ];
}
