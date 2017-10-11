{ mkDerivation, base, papa-base-export, papa-base-implement, stdenv
}:
mkDerivation {
  pname = "papa-base";
  version = "0.3.0";
  src = ./.;
  libraryHaskellDepends = [
    base papa-base-export papa-base-implement
  ];
  homepage = "https://github.com/qfpl/papa";
  description = "Prelude with only useful functions";
  license = stdenv.lib.licenses.bsd3;
}
