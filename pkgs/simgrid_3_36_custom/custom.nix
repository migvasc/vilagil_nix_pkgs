{ simgrid, fetchurl } :

simgrid.overrideAttrs(oldAttrs: rec {
  version = oldAttrs.version + "-3.36_custom_vivaldi";
  rev = "3113891c1d11050c739ff5c0ef4692b2937b765c"; # The desired SimGrid commit.
  src = fetchurl {
    url = "https://github.com/migvasc/custom_simgrid_3_36/-/archive/${rev}/simgrid-${rev}.tar.gz";
    sha256 = "sha256-DgU17ocCqWnvVDUNrngJhT/lq/z76GxHOA27c4f9z6o=";
  };
})

