{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    fzf
    git
    htop
    iproute2
    jq
    lsof
    nano
    neovim
    netcat-openbsd
    nettools
    pciutils
    psmisc
    rsync
    tldr
    tree
    unzip
    usbutils
    wget
    zip
  ];
}
