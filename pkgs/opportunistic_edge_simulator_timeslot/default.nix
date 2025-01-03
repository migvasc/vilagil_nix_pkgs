{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "0.0.in-tuto";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "1d615702b41e30a0792118b31933fd0f756436ab";
    sha256 = "sha256-yAiCAd4ELpg4Ih7SGFm8T1Kn9h+XgFVf79HBwQ2aZVA=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ];
  
}