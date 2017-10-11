{ mkDerivation, base, semigroupoids, semigroups, stdenv }:
mkDerivation {
  pname = "papa-semigroupoids-implement";
  version = "0.3.1";
  src = ./.;
  libraryHaskellDepends = [ base semigroupoids semigroups ];
  homepage = "https://github.com/qfpl/papa";
  description = "useful `semigroupoids` functions reimplemented";
  license = stdenv.lib.licenses.bsd3;
}
