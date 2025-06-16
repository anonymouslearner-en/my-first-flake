{ pkgs, ... }:

{
  users.users = {
    # FIXME: Set your username
    alice = {
      name = "Alice";
      home = "/home/alice";
      isNormalUser = true;
      shell = pkgs.zsh;
      initialPassword = "changeme";
      extraGroups = [ "wheel" ];
      openssh.authorizedKeys.keyFiles = [ ./pubkeys/replaceme.pub ]; # FIXME: Set your pubkey
    };
  };
}
