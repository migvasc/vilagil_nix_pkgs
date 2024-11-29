{ simgrid, fetchurl } :

simgrid.overrideAttrs(oldAttrs: rec {
  version = oldAttrs.version + "-3.36_custom_vivaldi";
  rev = "45ff8e53fb5128e61554714c900e14695df0cc36"; # The desired SimGrid commit.
  src = fetchurl {
    url = "https://gitlab.com/migvasc/custom_simgrid_336/-/archive/${rev}/simgrid-${rev}.tar.gz";
    sha256 = "sha256-VWdnsq65ZtLkGpn3mU0agRECcZ3fsg+abmMjbiI/ySo=";
  };
})
