{ outputs, ... }:

{
  imports = [
    outputs.nixosModules.common
    outputs.nixosModules.nginx
    outputs.nixosModules.openssh

    ./boot.nix
    ./hardware.nix

    ../../users/alice
  ];

  networking.hostName = "cx22";
  networking.domain = "lintesting.com"; # FIXME: Set your domain

  system.stateVersion = "25.05";
}
