# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "xhci_hcd" "ehci_pci" "ata_piix" "usbhid" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/2441bc17-8367-4314-82f1-7c4ebcf2b939";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/b6a8c168-d458-4934-899c-9aca93d55f8c";
      fsType = "ext4";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/74b0c701-7ce2-4058-9fd4-e580f3b573a5"; }
    ];

  nix.maxJobs = 4;
}
