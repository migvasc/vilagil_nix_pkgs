{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "0.0.in-tuto";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "a5b4661698db0a70e9ee250654055160cefb3fe8";
    sha256 = "sha256-RLyb9S8JHIEnPtiQG16zxvQw57ap2prH9EjOW6+eZyI=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ];
  
}