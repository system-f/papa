{ mkDerivation, base, papa-semigroupoids-export
, papa-semigroupoids-implement, stdenv
}:
mkDerivation {
  pname = "papa-semigroupoids";
  version = "0.3.1";
  src = ./.;
  libraryHaskellDepends = [
    base papa-semigroupoids-export papa-semigroupoids-implement
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "Prelude with only useful functions";
  license = stdenv.lib.licenses.bsd3;
}
