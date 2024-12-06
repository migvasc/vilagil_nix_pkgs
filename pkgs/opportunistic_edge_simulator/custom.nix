{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "0.0.in-tuto";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "e82f4878e9ff56350b76a2342fc07a7893e65eb4";
    sha256 = "sha256-sx7oOhyO92V7kuRe0LvnfPl6kFxXzlUkfuqX5VEaxjA=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ];
  
}