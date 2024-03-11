{ config, pkgs, callPackage, ... }:
{
  environment.pathsToLink = [ "/libexec" ];
  
  services.xserver = {
    enable = true;

    desktopManager = {
      xterm.enable = false;
    };

    displayManager = {
      lightdm.enable = false;
      startx.enable = true;
      defaultSession = "none+i3";
    };

    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        rofi
	polybar
      ];
    };
  };
}
