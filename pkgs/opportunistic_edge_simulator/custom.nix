{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "0.0.in-tuto";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "0c91753efbe7b0f8f3d44bd03a7d96213a059640";
    sha256 = "sha256-uWR+6ZaUItUKZ9lUj/StM3FdSv0PthdDrm9dxYlo1QU=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ];
  
}