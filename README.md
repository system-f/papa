![CSIRO's Data61 Logo](https://raw.githubusercontent.com/qfpl/assets/master/data61-transparent-bg.png)

# `papa`

Top-level package for general libraries. To import all modules in all
sub-packages:

    import Papa

Package dependency tree:

* **`papa`** Top-level package which exports all other packages in `papa-*`.

  * **`papa-base`** Exports modules from the `base` package that are safe and useful to have re-exported into default scope. Implements useful, general library functions that depend only on `base`.

    *  **`papa-base-export`** Exports safe and useful functions from `base`.

    *  **`papa-base-implement`** Implements safe and useful functions that depend only on `base`.

  * **`papa-bifunctors`** Exports modules from the third-party `bifunctors` package that are safe and useful to have re-exported into default scope. Implements useful, general library functions that depend only on `bifunctors`.

    *  **`papa-bifunctors-export`** Exports safe and useful functions from `bifunctors`.

    *  **`papa-bifunctors-implement`** Implements safe and useful functions that depend only on `bifunctors`.

  * **`papa-example`** Example use of the `papa` packages.
  
  * **`papa-lens`** Exports modules from the third-party `lens` package that are safe and useful to have re-exported into default scope. Implements useful, general library functions that depend only on `lens`.

    *  **`papa-lens-export`** Exports safe and useful functions from `lens`.

    *  **`papa-lens-implement`** Implements safe and useful functions that depend only on `lens`.

  * **`papa-semigroupoids`** Exports modules from the third-party `semigroupoids` package that are safe and useful to have re-exported into default scope. Implements useful, general library functions that depend only on `semigroupoids`.

    *  **`papa-semigroupoids-export`** Exports safe and useful functions from `semigroupoids`.

    *  **`papa-semigroupoids-implement`** Implements safe and useful functions that depend only on `semigroupoids`.

  * **`papa-x`** Exports modules from arbitrary third-party packages that are safe and useful to have re-exported into default scope. Implements useful, general library functions that depend on arbitrary third-party packages.

    *  **`papa-x-export`** Exports safe and useful functions from arbitrary third-party packages.

    *  **`papa-x-implement`** Implements safe and useful functions that depend on arbitrary third-party
       packages.
