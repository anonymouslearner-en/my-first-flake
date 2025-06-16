{ config, ... }:

{
  networking.firewall.allowedTCPPorts = [ 80 ];

  services.nginx = {
    enable = true;
    virtualHosts = {
      "${config.networking.domain}" = { };
    };
  };
}
