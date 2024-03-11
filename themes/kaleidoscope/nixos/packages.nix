{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    neovim wget git feh gnumake 
    zip unzip htop tmux alacritty 
    telegram-desktop python3 libgcc
    lua nodejs firefox unclutter-xfixes
    zathura sxhkd brightnessctl redshift
    psmisc rar obsidian lua gcc flameshot
    vim gimp
  ];

  nixpkgs.config.permittedInsecurePackages = [
    "electron-25.9.0" # for obsidian
  ];
}
