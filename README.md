# NixOS Configuration

Run flake via `sudo nixos-rebuild switch --flake .#nixos_vm`.
Run home-manager via `home-manager switch --flake .`.

Update the lock file to the latest revisions via `nix flake update`.
The system still needs to be rebuilt after the above command.

## Home Manger

Install as stand alone via commands below.

```
nix-channel --add https://github.com/nix-community/home-manager/archive/release-24.05.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install
```

This creates `~/.config/home-manager/home.nix` that is copied to this repo.

## Code History

The code in this repository was create base off the following.

- https://youtu.be/ACybVzRvDhs?si=7BEkQVIUxrYyz0Je
- https://gitlab.com/librephoenix/nixos-config
- https://youtu.be/rEovNpg7J0M?si=dIlqrbHkAeGJupp_
- https://youtu.be/IiyBeR-Guqw?si=kj5_J3E9fGmYM4yD

## GNOME Setting

Switch ctrl and caps lock via:

```
gsettings reset org.gnome.desktop.input-sources xkb-options
gsettings reset org.gnome.desktop.input-sources sources
```
