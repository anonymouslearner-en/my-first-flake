{ config, ... }:

{
  nix = {
    # Disable nix channels. Use flakes instead.
    channel.enable = false;

    # De-duplicate store paths using hardlinks except in containers
    # where the store is host-managed.
    optimise.automatic = !config.boot.isContainer;

    settings = {
      # Avoid disk full issues
      min-free = 512 * 1024 * 1024;
      max-free = 2048 * 1024 * 1024;

      # Enable flakes and new 'nix' command
      experimental-features = "nix-command flakes";

      # Workaround for https://github.com/NixOS/nix/issues/9574
      nix-path = config.nix.nixPath;

      # Avoid copying unnecessary stuff over SSH
      builders-use-substitutes = true;

      download-buffer-size = 524288000; # 500 MiB

      # Add all wheel users to the trusted-users group
      trusted-users = [ "@wheel" ];

      # Binary caches
      substituters = [
        "https://nix-community.cachix.org"
      ];
      trusted-public-keys = [
        "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      ];
    };
  };
}
