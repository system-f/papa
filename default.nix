haskellPackages:
{
  papa = haskellPackages.callPackage ./papa { };
  papa-implement = haskellPackages.callPackage ./papa-implement { };
  papa-base = haskellPackages.callPackage ./papa-base { };
  papa-base-export = haskellPackages.callPackage ./papa-base-export { };
  papa-base-implement = haskellPackages.callPackage ./papa-base-implement { };
  papa-bifunctors = haskellPackages.callPackage ./papa-bifunctors { };
  papa-bifunctors-export = haskellPackages.callPackage ./papa-bifunctors-export { };
  papa-bifunctors-implement = haskellPackages.callPackage ./papa-bifunctors-implement { };
  papa-export = haskellPackages.callPackage ./papa-export { };
  papa-include = haskellPackages.callPackage ./papa-include { };
  papa-lens = haskellPackages.callPackage ./papa-lens { };
  papa-lens-implement = haskellPackages.callPackage ./papa-lens-implement { };
  papa-lens-export = haskellPackages.callPackage ./papa-lens-export { };
  papa-semigroupoids = haskellPackages.callPackage ./papa-semigroupoids { };
  papa-semigroupoids-implement = haskellPackages.callPackage ./papa-semigroupoids-implement { };
  papa-semigroupoids-export = haskellPackages.callPackage ./papa-semigroupoids-export { };
}
