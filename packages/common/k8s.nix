{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    kubectl
    kubectx
    krew
    linkerd
    pulumi-bin
    kubernetes-helm
    k9s
    kubeshark
    kubespy
  ];
}
