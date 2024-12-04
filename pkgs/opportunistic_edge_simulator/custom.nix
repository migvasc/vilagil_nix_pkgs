{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "0.0.in-tuto";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "1be6d3377d03567c1211f51e6c1fe40d2d98ddfe";
    sha256 = "sha256-YaYuFvnxK4UoIZ8R16Ruqp3mE3wbc7n+X0pD/ncdZsI=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ];
  
}