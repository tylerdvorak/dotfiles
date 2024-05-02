# Command line tools, terminals etc
{ pkgs, ... }:

with pkgs;

{
  home.packages = [
    kitty
    kitty-themes
    lm_sensors
    neofetch
    nixpkgs-fmt
    nix-prefetch-git
    nix-prefetch-github
    zoxide
  ];
}
