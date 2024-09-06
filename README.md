# NixOS Configuration

Run flake via `sudo nixos-rebuild switch --flake .#nixos_vm`.

Update the lock file to the latest revisions via `nix flake update`.
The system still needs to be rebuilt after the above command.

## Code History

The code in this repository was create base off the following.

- https://gitlab.com/librephoenix/nixos-config
