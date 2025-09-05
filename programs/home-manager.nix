{ pkgs, ... }: {
  programs.home-manager = {
    enable = true;
    backupFileExtension = 'backup';
  };
}
