{ pkgs, ... }:

{
  users.users = {
    # FIXME: Set your username
    clinton = {
      name = "clinton";
      home = "/home/clinton";
      isNormalUser = true;
      shell = pkgs.zsh;
      initialPassword = "initialpassword";
      extraGroups = [ "wheel" ];
      openssh.authorizedKeys.keyFiles = [ ./pubkeys/id_lintee.pub ]; # FIXME: Set your pubkey
    };
  };
}
