# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usbhid" "usb_storage" "sd_mod" "amdgpu" "udl" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];
  boot.kernelParams = [
    "acpi_enforce_resources=lax"
  ];

  fileSystems."/" =
    { device = "rpool/tmp/root";
      fsType = "zfs";
    };

  fileSystems."/nix" =
    { device = "rpool/cache/nix";
      fsType = "zfs";
    };

  fileSystems."/home" =
    { device = "rpool/state/home";
      fsType = "zfs";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/667A-C17B";
      fsType = "vfat";
    };

  swapDevices = [ { device = "/dev/disk/by-label/swap"; } ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp37s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp36s0.useDHCP = lib.mkDefault true;

  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  # https://nixos.wiki/wiki/AMD_GPU
  services.xserver.videoDrivers = [ "amdgpu" "displaylink" "modesetting" ];
  # Vulkan support
  # hardware.opengl.driSupport = true;
  # For 32 bit applications
  # hardware.opengl.driSupport32Bit = true;
  hardware.opengl.extraPackages = with pkgs; [
    amdvlk
  ];
  hardware.opengl.extraPackages32 = with pkgs; [
    driversi686Linux.amdvlk
  ];
  environment.systemPackages = [
    pkgs.displaylink
  ];

  # For the thinkpad trackpoint II, middle button to scroll feature
  # https://search.nixos.org/options?channel=unstable&show=services.xserver.libinput.mouse.scrollMethod&from=0&size=50&sort=relevance&type=packages&query=libinput.mouse
  services.xserver.libinput.mouse.scrollMethod = "button";
  services.xserver.libinput.mouse.scrollButton = 3;
}
