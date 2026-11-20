# Minimal niri session (portatil only). GNOME stays as is: everything here
# only runs inside the "Niri" session picked in GDM.
{ pkgs, ... }:

let
  # Fail the rebuild if config.kdl is invalid, instead of finding out at login.
  niriConfig = pkgs.runCommand "niri-config.kdl" { } ''
    HOME=$TMPDIR ${pkgs.niri}/bin/niri validate -c ${./niri/config.kdl}
    cp ${./niri/config.kdl} $out
  '';
in
{
  programs.niri.enable = true;
  security.pam.services.swaylock = { };
  environment.systemPackages = [ pkgs.xwayland-satellite ]; # X11 apps; niri starts it on demand

  home-manager.users.jcorbalan = {
    home.packages = with pkgs; [ swayidle swaybg brightnessctl playerctl ];
    xdg.configFile."niri/config.kdl".source = niriConfig;

    programs.fuzzel.enable = true;
    programs.swaylock.enable = true;
    services.mako.enable = true;

    programs.waybar = {
      enable = true;
      settings.mainBar = {
        layer = "top";
        modules-left = [ "niri/workspaces" ];
        modules-center = [ "clock" ];
        modules-right = [ "pulseaudio" "network" "battery" "tray" ];
      };
    };
  };
}
