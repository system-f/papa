{ mkDerivation, base, papa-lens-export, papa-lens-implement, stdenv
}:
mkDerivation {
  pname = "papa-lens";
  version = "0.3.1";
  src = ./.;
  libraryHaskellDepends = [
    base papa-lens-export papa-lens-implement
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "Prelude with only useful functions";
  license = stdenv.lib.licenses.bsd3;
}
