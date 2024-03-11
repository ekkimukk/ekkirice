{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    nerdfonts
    jetbrains-mono
    victor-mono
    fira-code
  ];
}
