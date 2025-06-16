let
  de = "de_DE.UTF-8";
  en = "en_US.UTF-8";
in
{
  i18n = {
    defaultLocale = en;
    extraLocaleSettings = {
      LC_ADDRESS = de;
      LC_IDENTIFICATION = de;
      LC_MEASUREMENT = de;
      LC_MONETARY = de;
      LC_NAME = de;
      LC_NUMERIC = de;
      LC_PAPER = de;
      LC_TELEPHONE = de;
      LC_TIME = en;
    };
  };

  console = {
    font = "Lat2-Terminus16";
    keyMap = "de";
  };

  time.timeZone = "Europe/Berlin";
}
