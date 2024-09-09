{ config, pkgs, ... }:
#let 
#  myAliases = {
#    ll = "ls -l";
#    la = "ls -la";
#    n = "nvim";
#    ".." = "cd ..";
#    update = "sudo nixos-rebuild switch --flake .#nixos_vm";
#  };
in
{
#  programs = {
#    bash = {
#      enable = true;
#      shellAliases = myAliases;
#    };
#    zsh = {
#      enable = true;
#      enableCompletion = true;
#      autosuggestion.enable = true;
#      syntaxHighlighting.enable = true;
#      shellAliases = myAliases;
#    };
#  };
}
