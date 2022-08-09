{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    ncdu
    /*
      ncdu_2 is broken on osx for now

      Package ‘zig-0.9.1’ in /nix/store/d8l30w7kzk908z6ry9davxi2y5fycwm3-source/pkgs/development/compilers/zig/default.nix:50 is marked as broken
     */
  ];
}