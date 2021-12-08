(use-modules
 (guix packages)
 (guix git-download)
 (guix gexp)
 (guix build-system python)
 (gnu packages)
 (gnu packages python-xyz)
 (guix licenses)
 )

(define %source-dir (dirname (current-filename)))

(define-public python-kicad-netlist-reader
  (package
    (name "python-kicad-netlist-reader")
    (version "1.1.4")
    (source (local-file %source-dir
                        #:recursive? #t
                        #:select? (git-predicate %source-dir)))
    (build-system python-build-system)
    (native-inputs
     `(("python-setuptools-scm" ,python-setuptools-scm)))
    (home-page "https://github.com/janelia-pypi/kicad_netlist_reader")
    (synopsis "KiCad python module for interpreting generic netlists.")
    (description "KiCad python module for interpreting generic netlists.")
    (license gpl2)))

python-kicad-netlist-reader
