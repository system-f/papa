{ mkDerivation, base, papa-bifunctors-export
, papa-bifunctors-implement, stdenv
}:
mkDerivation {
  pname = "papa-bifunctors";
  version = "0.3.1";
  src = ./.;
  libraryHaskellDepends = [
    base papa-bifunctors-export papa-bifunctors-implement
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "Prelude with only useful functions";
  license = stdenv.lib.licenses.bsd3;
}
