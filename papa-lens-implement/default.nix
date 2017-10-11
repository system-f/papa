{ mkDerivation, base, lens, stdenv }:
mkDerivation {
  pname = "papa-lens-implement";
  version = "0.3.0";
  src = ./.;
  libraryHaskellDepends = [ base lens ];
  homepage = "https://github.com/qfpl/papa";
  description = "useful `lens` functions reimplemented";
  license = stdenv.lib.licenses.bsd3;
}
