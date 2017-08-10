{ mkDerivation, base, directory, doctest, filepath, papa-base
, papa-base-export, papa-base-implement, papa-bifunctors
, papa-bifunctors-export, papa-bifunctors-implement, papa-lens
, papa-lens-export, papa-lens-implement, papa-semigroupoids
, papa-semigroupoids-export, papa-semigroupoids-implement, papa-x
, papa-x-export, papa-x-implement, QuickCheck, stdenv
, template-haskell
}:
mkDerivation {
  pname = "papa";
  version = "0.3.0";
  src = ./.;
  libraryHaskellDepends = [
    base papa-base papa-base-export papa-base-implement papa-bifunctors
    papa-bifunctors-export papa-bifunctors-implement papa-lens
    papa-lens-export papa-lens-implement papa-semigroupoids
    papa-semigroupoids-export papa-semigroupoids-implement papa-x
    papa-x-export papa-x-implement
  ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "Reasonable default import";
  license = stdenv.lib.licenses.bsd3;
}
