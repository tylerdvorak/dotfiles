{ pkgs, ... }:

{
  fonts = {
    enableFontDir = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      corefonts
      inconsolata
      fira
      fira-mono
      dejavu_fonts
      libertine
      ubuntu_font_family
      noto-fonts
      source-code-pro
      nerdfonts
    ];
  };
}
