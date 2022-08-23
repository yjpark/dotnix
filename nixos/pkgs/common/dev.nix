{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    dotnet-sdk
    python310Packages.bpython
  ];
}

