On the new system, boot to nixos installer, then do the following

- prepare partitions
- mount related partitions under /mnt
- generate configuration with `nixos-generate-config --root /mnt`
- prepare branch with hardware-configuration.nix
- clone the repo at remote machine, and switch to proper branch
- install with `nixos-install --flake .#$host`

# Notes About Binary Cache

Need to specify binary cache substitutors in args for nixos-install, which in not reading from nix.settings.substitutors.

`nixos-install --flake .#$host --substituters https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store`


# This is not working ATM
- install with `nixos-install --flake https://github.com/yjpark/dotnix/$branch#$host`