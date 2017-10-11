{ mkDerivation, base, papa, papa-base, papa-base-export
, papa-base-implement, papa-bifunctors, papa-bifunctors-export
, papa-bifunctors-implement, papa-lens, papa-lens-export
, papa-lens-implement, papa-semigroupoids
, papa-semigroupoids-export, papa-semigroupoids-implement, papa-x
, papa-x-export, papa-x-implement, stdenv
}:
mkDerivation {
  pname = "papa-example";
  version = "0.3.1";
  src = ./.;
  libraryHaskellDepends = [
    base papa papa-base papa-base-export papa-base-implement
    papa-bifunctors papa-bifunctors-export papa-bifunctors-implement
    papa-lens papa-lens-export papa-lens-implement papa-semigroupoids
    papa-semigroupoids-export papa-semigroupoids-implement papa-x
    papa-x-export papa-x-implement
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "Reasonable default import";
  license = stdenv.lib.licenses.bsd3;
}
