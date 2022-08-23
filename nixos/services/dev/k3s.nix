{ config, pkgs, ... }: {
  services.k3s = {
    enable = true;
    role = "server";
    extraFlags = toString [
      "--container-runtime-endpoint unix:///run/containerd/containerd.sock"
      "--no-deploy metrics-server"
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
      };
  }; 
  networking.firewall.allowedTCPPorts = [
    6443
  ];
}
