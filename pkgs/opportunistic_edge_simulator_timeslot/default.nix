{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "0.0.in-tuto";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "0fed359f13a7902605b0714f26a2411c4b70c2c1";
    sha256 = "sha256-JuZWJqKLSCDMAPhmaRnN47UMjvmzm6CyoGz7KFdkJi4=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ];
  
}