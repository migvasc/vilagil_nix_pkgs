{ simgrid, fetchurl } :
simgrid.overrideAttrs(oldAttrs: rec {
  version = oldAttrs.version + "-3.31_custom_mig";
  rev = "1a22b5d0b9213ffa36991fa584668cc130c9c44c"; # The desired SimGrid commit.
  src = fetchurl {
    url = "https://gitlab.com/migvasc/custom_simgrid_336/-/archive/${rev}/simgrid-${rev}.tar.gz";
    sha256 = "sha256-jRlhgBkap2X/Ey4ufPIvUC5+25/+0zmJuJRVbgD1J3c=";
  };
})



