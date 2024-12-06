{ stdenv, fetchgit, cmake, simgrid, boost, nlohmann_json }:

 stdenv.mkDerivation rec {
  pname = "opportunistic_edge_simulator";
  version = "0.0.in-tuto";
  src = fetchgit {
    url = "https://github.com/migvasc/smart_city_cloud_edge_simulator";
    rev = "e1c4a797faaa44d4e7ac55274e92fff03198f856";
    sha256 = "sha256-O3qGfNQzCIrY6L3J9maOnf2hCgfPLgJGHMdZiK7tf6Q=";
  };

  buildInputs = [
    nlohmann_json
    simgrid
    boost
    cmake
  ];
  
}