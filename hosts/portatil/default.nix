{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/configuration.nix
    ../../modules/niri.nix
  ];

  _module.args.laptop = true;

  networking.hostName = "nixos-portatil";
}
