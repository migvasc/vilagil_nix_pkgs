{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "0.0.co2";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "9b8af59eeacbf202a7e9677477d4cd88cf96d0a1";
    sha256 = "sha256-H1ekd2dG7ZuzJd5H4OKXEqp2x8KWAyCnrvieX5gWKN8=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ];
  
}