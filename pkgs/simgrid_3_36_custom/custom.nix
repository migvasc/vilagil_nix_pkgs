{ simgrid, fetchurl } :

simgrid.overrideAttrs(oldAttrs: rec {
  version = oldAttrs.version + "-3.36_custom_vivaldi";
  rev = "3113891c1d11050c739ff5c0ef4692b2937b765c"; # The desired SimGrid commit.
  src = fetchurl {
    url = "https://api.github.com/repos/migvasc/custom_simgrid_3_36/tarball/${rev}";
    
    sha256 = "sha256-MkZknQHo58N9SRYRWFiZX/I3nL2YEadOB+lqTH1ZQUg=";
  };
})

