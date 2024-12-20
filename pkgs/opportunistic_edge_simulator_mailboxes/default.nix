{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "0.0.in-tuto";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "4ad80c20099d47cae36dde7e82deed87d3006966";
    sha256 = "sha256-CDxXZeetP9LZ/KkdSqmu3FiH/qUn/mMGjRTZU9KQsQY=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ];
  
}