{
  pkgs ? import (fetchTarball https://github.com/NixOS/nixpkgs/archive/63dacb46bf939521bdc93981b4cbb7ecb58427a0.tar.gz) {}
}:

with pkgs;

let
  packages = rec {    
    opportunistic_edge_simulator = callPackage ./pkgs/opportunistic_edge_simulator { simgrid = simgrid_3_36_custom; };
    simgrid_3_36_custom = callPackage ./pkgs/simgrid_3_36_custom/custom.nix {};
inherit pkgs; 

};
in
  packages
