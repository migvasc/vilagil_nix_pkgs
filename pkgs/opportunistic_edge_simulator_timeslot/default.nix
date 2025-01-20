{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "0.0.in-tuto";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "650f602a362ec40e41d12cb5f66622a19a1c0ba2";
    sha256 = "sha256-qTsht9hf7w1VY/5/SAqvigJdwSejDX35/939uuhZIVo=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ];
  
}