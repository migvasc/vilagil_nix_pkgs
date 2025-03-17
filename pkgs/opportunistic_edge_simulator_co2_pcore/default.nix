{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "co2_github";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "087bd4b1b929a0c1645cc5335bccf242fad10621";
    sha256 = "sha256-1JUOofAbU3Kse8jc6HYAQ6OVKm2upL6qddmfJPcnRLw=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ]; 
}