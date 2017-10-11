{ mkDerivation, base, semigroupoids, stdenv }:
mkDerivation {
  pname = "papa-semigroupoids-export";
  version = "0.3.1";
  src = ./.;
  libraryHaskellDepends = [ base semigroupoids ];
  homepage = "https://github.com/qfpl/papa";
  description = "export useful functions from `semigroupoids`";
  license = stdenv.lib.licenses.bsd3;
}
