{ outputs, ... }:

{
  imports = [
    outputs.nixosModules.common
    outputs.nixosModules.nginx
    outputs.nixosModules.openssh

    ./boot.nix
    ./hardware.nix

    ../../users/clinton
  ];

  networking.hostName = "cx22";
  networking.domain = "lint-ee.nixos.ovh"; # FIXME: Set your domain

  system.stateVersion = "25.05";
}
