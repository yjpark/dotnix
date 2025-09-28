{ pkgs, ... }:
{
  # https://docs.noctalia.dev/getting-started/nixos/#install-package
  services.noctalia-shell = {
    enable = true;
  };
}
