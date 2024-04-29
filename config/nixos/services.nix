{
  services = {
    # Enable the OpenSSH daemon.
    openssh.enable = true;
    # Enable CUPS to print documents.
    printing.enable = true;
    # Enable FSTrim for SSH health
    fstrim.enable = true;

    # Enable the X11 windowing system.
    xserver = {
      enable = true;
      layout = "us,no";
      xkbOptions = "grp:alt_caps_toggle";
      exportConfiguration = true;

      # Enable the KDE Desktop Environment.
      displayManager.sddm.enable = true;
      desktopManager.plasma5.enable = true;
    };
  };
}
