{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    lm_sensors
    gptfdisk
    ntfs3g
    smartmontools    # harddisk util: smartctl
    nvme-cli         # nvme tool
  ];
}


