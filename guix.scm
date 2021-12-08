(use-modules
 (guix packages)
 (guix git-download)
 (guix gexp)
 (guix licenses)
 (guix build-system python)
 (gnu packages python-build)
 (gnu packages python-xyz))

(define %source-dir (dirname (current-filename)))

(define-public python-kicad-netlist-reader
  (package
    (name "python-kicad-netlist-reader")
    (version "5.1.10")
    (source (local-file %source-dir
                        #:recursive? #t
                        #:select? (git-predicate %source-dir)))
    (build-system python-build-system)
    (native-inputs
     `(("python-wheel" ,python-wheel)
       ("python-twine" ,python-twine)
       ("python-ipython" ,python-ipython)))
    (home-page "https://github.com/janelia-pypi/kicad_netlist_reader")
    (synopsis "KiCad python module for interpreting generic netlists.")
    (description "KiCad python module for interpreting generic netlists.")
    (license gpl2)))

python-kicad-netlist-reader
