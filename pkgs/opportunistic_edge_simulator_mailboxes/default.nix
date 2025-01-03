{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "0.0.in-tuto";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "ccf820da5c6ae37d94ca3dac75d1d470687d0fab";
    sha256 = "sha256-8L6ampddqnqtr3qswPZee7DXtVlQk8Ux0Y6Gy2cTwQg=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ];
  
}