{ mkDerivation, base, directory, doctest, filepath, papa-base
, papa-base-export, papa-base-implement, papa-bifunctors
, papa-bifunctors-export, papa-bifunctors-implement, papa-export
, papa-implement, papa-lens, papa-lens-export, papa-lens-implement
, papa-semigroupoids, papa-semigroupoids-export
, papa-semigroupoids-implement, QuickCheck, stdenv
, template-haskell
}:
mkDerivation {
  pname = "papa";
  version = "0.2.1";
  src = ./.;
  libraryHaskellDepends = [
    base papa-base papa-base-export papa-base-implement papa-bifunctors
    papa-bifunctors-export papa-bifunctors-implement papa-export
    papa-implement papa-lens papa-lens-export papa-lens-implement
    papa-semigroupoids papa-semigroupoids-export
    papa-semigroupoids-implement
  ];
  testHaskellDepends = [
    base directory doctest filepath QuickCheck template-haskell
  ];
  homepage = "https://github.com/data61/papa";
  description = "Reasonable default import";
  license = stdenv.lib.licenses.bsd3;
}
