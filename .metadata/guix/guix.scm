;; This file is generated automatically from metadata
;; File edits may be overwritten!
(use-modules
 (guix packages)
 (guix git-download)
 (guix gexp)
 ((guix licenses) #:prefix license:)
 (guix build-system python)
 (gnu packages base)
 (gnu packages emacs)
 (gnu packages emacs-xyz)
 (gnu packages python-build)
 (gnu packages python-xyz)
 (gnu packages imagemagick)
 (gnu packages version-control)
 (gnu packages ncurses))

(define %source-dir (dirname (dirname (dirname (current-filename)))))

(define-public python-dev-package
  (package
    (name "python-dev-package")
    (version "dev")
    (source (local-file %source-dir
                        #:recursive? #t
                        #:select? (git-predicate %source-dir)))
    (build-system python-build-system)
    (native-inputs (list gnu-make
                         git
                         emacs
                         emacs-org
                         emacs-ox-gfm
                         python-wheel
                         python-twine
                         python-virtualenv
                         python-ipython
                         imagemagick))
    (propagated-inputs (list
                        ncurses))
    (home-page "")
    (synopsis "")
    (description "")
    (license license:gpl3+)))

python-dev-package
