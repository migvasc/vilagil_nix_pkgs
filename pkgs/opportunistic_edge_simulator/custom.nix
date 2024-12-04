{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "0.0.in-tuto";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "bf62dc5c83395d729c60e93fdb4c9324dd28af0a";
    sha256 = "sha256-E7rfEqDL6LYeDjqxwGRXMcCe0OtHSR3ho5zFymD6LpA=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ];
  
}