{ mkDerivation, base, directory, doctest, filepath
, papa-base-export, papa-bifunctors-export, papa-lens-export
, papa-semigroupoids-export, QuickCheck, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-export";
  version = "0.2.1";
  src = ./.;
  libraryHaskellDepends = [
    base papa-base-export papa-bifunctors-export papa-lens-export
    papa-semigroupoids-export
  ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/data61/papa-export";
  description = "Reasonable default import";
  license = stdenv.lib.licenses.bsd3;
}
