{ simgrid, fetchurl } :
simgrid.overrideAttrs(oldAttrs: rec {
  version = oldAttrs.version + "-3.35_custom_vivaldi";
  rev = "78eb85095358153db1c14385697640c0ab766690"; # The desired SimGrid commit.
  src = fetchurl {
    url = "https://gitlab.com/migvasc/custom_simgrid_335/-/archive/${rev}/simgrid-${rev}.tar.gz";
    sha256 = "sha256-X0H5HGULhPBq5TRNhdXmIvtSVKq33KT6cLmdNdNK+fY=";
  };
})



