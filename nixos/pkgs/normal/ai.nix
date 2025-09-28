{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    whisper-cpp
    lmstudio
  ];
}
