{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "0.0.in-tuto";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "f332705084101f8ff05cf245643a834072ff5616";
    sha256 = "sha256-jYxg7IUa0F1HGZnWmHID/HgLlB7zcJTMkJA6Bmg5PHo=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ];
  
}