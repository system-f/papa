# `papa`

Top-level package for general libraries. To import all modules in all
sub-packages:

    import Papa

Package dependency tree:

    papa
      papa-export
        papa-base-export
        papa-bifunctors-export
        papa-lens-export
        papa-semigroupoids-export
      papa-implement
        papa-base-implement
        papa-bifunctors-implement
        papa-lens-implement
        papa-semigroupoids-implement
      papa-base
        papa-base-export
        papa-base-implement
      papa-bifunctors
        papa-bifunctors-export
        papa-bifunctors-implement
      papa-lens
        papa-lens-export
        papa-lens-implement
      papa-semigroupoids
        papa-semigroupoids-export
        papa-semigroupoids-implement
