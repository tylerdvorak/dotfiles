{ pkgs, variables, ... }:

let
  unstable = import <unstable> {};
in
{
  # Select internationalisation properties.
  i18n = {
    consoleFont = "Iosevka Term Nerd Font";
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };

  # Set your time zone.
  time.timeZone = "America/Chicago";

  nix = {
    autoOptimiseStore = true;
    nixPath = [
      "nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixos"
      "nixos-config=/etc/nixos/dotfiles/hosts/${variables.hostname}/default.nix"
      "/nix/var/nix/profiles/per-user/root/channels"
    ];
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  networking = {
    networkmanager.enable = true;
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    acpi
    bind
    binutils
    coreutils
    curl
    gitAndTools.gitFull
    btop
    neovim
    pciutils
    psmisc
    ranger
    tree
    unzip
    wget
    zip
  ];
}
