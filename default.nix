haskellPackages:
{
  papa-example = haskellPackages.callPackage ./papa-example { };
  papa = haskellPackages.callPackage ./papa { };
  papa-base = haskellPackages.callPackage ./papa-base { };
  papa-base-export = haskellPackages.callPackage ./papa-base-export { };
  papa-base-implement = haskellPackages.callPackage ./papa-base-implement { };
  papa-bifunctors = haskellPackages.callPackage ./papa-bifunctors { };
  papa-bifunctors-export = haskellPackages.callPackage ./papa-bifunctors-export { };
  papa-bifunctors-implement = haskellPackages.callPackage ./papa-bifunctors-implement { };
  papa-lens = haskellPackages.callPackage ./papa-lens { };
  papa-lens-implement = haskellPackages.callPackage ./papa-lens-implement { };
  papa-lens-export = haskellPackages.callPackage ./papa-lens-export { };
  papa-semigroupoids = haskellPackages.callPackage ./papa-semigroupoids { };
  papa-semigroupoids-implement = haskellPackages.callPackage ./papa-semigroupoids-implement { };
  papa-semigroupoids-export = haskellPackages.callPackage ./papa-semigroupoids-export { };
  papa-x = haskellPackages.callPackage ./papa-x { };
  papa-x-implement = haskellPackages.callPackage ./papa-x-implement { };
  papa-x-export = haskellPackages.callPackage ./papa-x-export { };
}
