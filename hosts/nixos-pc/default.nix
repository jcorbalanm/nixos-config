{ ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
    ../../modules/configuration.nix
  ];

  _module.args.laptop = false;

  networking.hostName = "nixos-pc";
}
