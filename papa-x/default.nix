{ mkDerivation, base, papa-x-export, papa-x-implement, stdenv }:
mkDerivation {
  pname = "papa-x";
  version = "0.3.1";
  src = ./.;
  libraryHaskellDepends = [ base papa-x-export papa-x-implement ];
  homepage = "https://github.com/qfpl/papa";
  description = "Prelude with only useful functions";
  license = stdenv.lib.licenses.bsd3;
}
