{ pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.tdvorak = {
    isNormalUser = true;
    description = "Tyler Dvorak";
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.fish;
  };

  home-manager.users.tdvorak = { pkgs, ... }: {
    nixpkgs.overlays = [ (import ../pkgs) ];
    imports = [
      # Import all home configurations
      ../home
    ];
  };
}
