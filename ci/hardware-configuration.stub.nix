# CI-only stand-in for /etc/nixos/hardware-configuration.nix, which every
# real host imports as an absolute path (so it never has to live in this
# repo). Never used on a real machine - just enough for `nix build` to
# evaluate and build a full system closure on a GitHub Actions runner that
# has none of the real hardware.
{ ... }:

{
  fileSystems."/" = {
    device = "/dev/disk/by-uuid/00000000-0000-0000-0000-000000000000";
    fsType = "ext4";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/0000-0000";
    fsType = "vfat";
  };
}
