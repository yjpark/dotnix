{ pkgs, ... }: {
  programs.just = {
    enable = true;
    enableFishIntegration = true;
  };
}