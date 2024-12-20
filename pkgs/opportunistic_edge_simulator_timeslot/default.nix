{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "0.0.in-tuto";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "76574a499843b3f32f4fce88d38a28fe70a5bd0f";
    sha256 = "sha256-az/ETf+cfvDsYAptWx94efvZhHn5iuSy0PJRkQCfmnQ=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ];
  
}