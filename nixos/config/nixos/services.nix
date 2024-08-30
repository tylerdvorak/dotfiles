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

      # Enable the KDE Desktop Environment.
      displayManager.sddm.enable = true;
      desktopManager.plasma6.enable = true;
    };
  };
  environment.plasma6.excludePackages = with pkgs.libsForQt5; [
    plasma-browser-integration
    konsole
    oxygen
  ];
}
