{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/configuration.nix
  ];

  _module.args.laptop = true;

  networking.hostName = "nixos-portatil";
}
