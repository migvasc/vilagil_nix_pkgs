{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "co2_github";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "91ca8e7cfb589792e7e4da5ad869ef7b824029db";
    sha256 = "sha256-+0xVJfiy0JIJJKoecsBnLBPZhoGDU3y9k2x/h2VL9l0=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ]; 
}