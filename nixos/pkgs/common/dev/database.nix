{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    pgcli
    mycli
    clickhouse-cli
  ];
}

