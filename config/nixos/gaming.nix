{ pkgs, config, variables, lib, ... }:

with lib;

let
  cfg = config.gaming;
in
{
  options.gaming.enable = mkEnableOption "Gaming";

  config = mkIf cfg.enable {
    # OpenGL support for Steam etc
    hardware = {
      opengl.driSupport32Bit = true;
      opengl.extraPackages32 = with pkgs.pkgsi686Linux; [ libva ];
      pulseaudio.support32Bit = true;
    };

    home-manager.users.tdvorak = {
      home.packages = with pkgs; [
        steam
        heroic
        gamemode
        gamescope
        mangohud
      ];
    };
  };
}
