{
  pkgs ? import (fetchTarball https://github.com/NixOS/nixpkgs/archive/32b8f4cb419ab8c3f7903b30e959d9e67c26be7d.tar.gz) {}
}:

with pkgs;



let
  packages = rec {
    opportunistic_edge_simulator = callPackage ./pkgs/opportunistic_edge_simulator { simgrid = custom_simgrid; };    
    simgrid_3_36_custom = callPackage ./pkgs/simgrid_3_36_custom/custom.nix {};    
inherit pkgs; # similar to `pkgs = pkgs;` This lets callers use the nixpkgs version defined in this file.

};
in
  packages
