{ mkDerivation, base, bifunctors, stdenv }:
mkDerivation {
  pname = "papa-bifunctors-implement";
  version = "0.3.0";
  src = ./.;
  libraryHaskellDepends = [ base bifunctors ];
  homepage = "https://github.com/qfpl/papa";
  description = "useful `bifunctors` functions reimplemented";
  license = stdenv.lib.licenses.bsd3;
}
