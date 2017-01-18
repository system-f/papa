{ mkDerivation, base, directory, doctest, filepath, lens
, papa-base-implement, papa-bifunctors-implement
, papa-lens-implement, papa-semigroupoids-implement, QuickCheck
, stdenv, template-haskell
}:
mkDerivation {
  pname = "papa-implement";
  version = "0.2.1";
  src = ./.;
  libraryHaskellDepends = [
    base lens papa-base-implement papa-bifunctors-implement
    papa-lens-implement papa-semigroupoids-implement
  ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/data61/papa-implement";
  description = "Reasonable default import";
  license = stdenv.lib.licenses.bsd3;
}
