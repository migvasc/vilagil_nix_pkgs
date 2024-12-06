{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "0.0.in-tuto";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "e068ff5c36044c1628e856121dd1f311ef74d619";
    sha256 = "sha256-O3qGfNQzCIrY6L3J9maOnf2hCgfPLgJGHMdZiK7tf6Q=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ];
  
}