{ config, pkgs, ... }: {
  services.interception-tools = {
    enable = true;
    plugins = [
      pkgs.interception-tools-plugins.dual-function-keys
    ];
    udevmonConfig = ''
    - JOB: "${pkgs.interception-tools}/bin/intercept -g $DEVNODE | ${pkgs.interception-tools-plugins.dual-function-keys}/bin/dual-function-keys -c /etc/dual-function-keys.yaml | ${pkgs.interception-tools}/bin/uinput -d $DEVNODE"
      DEVICE:
        EVENTS:
          EV_KEY: [KEY_LEFTSHIFT]
    '';
  };
  environment.etc."dual-function-keys.yaml".text = builtins.readFile ./dual-function-keys.yaml;
}
