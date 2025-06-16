{
  outputs,
  pkgs,
  ...
}:

{
  imports = [
    outputs.nixosModules.common
    outputs.nixosModules.nginx
    outputs.nixosModules.openssh

    ./boot.nix
    ./hardware.nix
  ];

  networking.hostName = "cx22";
  networking.domain = "example.com"; # FIXME: Set your domain

  users.users = {
    alice = {
      name = "Alice";
      home = "/home/alice";
      isNormalUser = true;
      shell = pkgs.zsh;
      initialPassword = "changeme";
      extraGroups = [ "wheel" ];
      openssh.authorizedKeys.keyFiles = [ ../../users/alice/pubkeys/replaceme.pub ]; # FIXME: Set your pubkey
    };
  };

  system.stateVersion = "25.05";
}
