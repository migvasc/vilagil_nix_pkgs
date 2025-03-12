{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "co2_github";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "dbfcab3417e1c1d7815d708064603c451b581d1c";
    sha256 = "sha256-PS9evWNGLrOPXiViflofEOA+mZ97cIBChhJJFjfz9IY=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ]; 
}