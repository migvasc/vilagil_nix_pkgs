{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "0.0.in-tuto";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "57024b7fc294e3d16c1c908ca63a65e6b7bd6b8f";
    sha256 = "sha256-3/cubEUfeHrs+zJ2iMaJ0sz8q+y1uQKwFccjJJxhaVg=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ];
  
}