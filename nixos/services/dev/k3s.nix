{ config, pkgs, ... }: {
  services.k3s = {
    enable = true;
    role = "server";
    extraFlags = toString [
      "--container-runtime-endpoint unix:///run/containerd/containerd.sock"
    ];
  };
  # Note: need to create the zfs mount manually
  # sudo zfs create -o mountpoint=/var/lib/containerd/io.containerd.snapshotter.v1.zfs rpool/state/containerd
  virtualisation.containerd = {
    enable = true;
    settings =
      let
        fullCNIPlugins = pkgs.buildEnv {
          name = "full-cni";
          paths = with pkgs;[
            cni-plugins
            cni-plugin-flannel
          ];
        };
      in {
        plugins."io.containerd.grpc.v1.cri".cni = {
          bin_dir = "${fullCNIPlugins}/bin";
          conf_dir = "/var/lib/rancher/k3s/agent/etc/cni/net.d/";
        };
        plugins."io.containerd.grpc.v1.cri".registry.mirrors."localhost:5000" = {
          endpoint = [
            "http://localhost:5000"
          ];
        };
        plugins."io.containerd.grpc.v1.cri".registry.mirrors."localhost:29003" = {
          endpoint = [
            "http://localhost:29003"
          ];
        };
      };
  }; 
  networking.firewall.allowedTCPPorts = [
    6443
    80
    443
  ];
  networking.firewall.allowedTCPPortRanges = [
    { from = 30000; to = 32767; }
  ];
}
