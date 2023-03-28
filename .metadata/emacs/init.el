;; This file is generated automatically from metadata
;; File edits may be overwritten!
(require 'org)
(require 'ox-org)

(eval-after-load "org"
  '(require 'ox-gfm nil t))

(setq make-backup-files nil)
(setq org-confirm-babel-evaluate nil)

(setq python-indent-guess-indent-offset t)
(setq python-indent-guess-indent-offset-verbose nil)

(defun tangle-org (org-file)
  "Tangle org file"
  (unless (string= "org" (file-name-extension org-file))
    (error "INFILE must be an org file."))
  (org-babel-tangle-file org-file))

(defun export-org-to-markdown (org-file)
  "Export org file to gfm file"
  (unless (string= "org" (file-name-extension org-file))
    (error "INFILE must be an org file."))
  (let ((org-file-buffer (find-file-noselect org-file)))
    (with-current-buffer org-file-buffer
      (org-open-file (org-gfm-export-to-markdown)))))

(defun process-org (org-file)
  "Tangle and export org file"
  (progn (tangle-org org-file)
         (export-org-to-markdown org-file)))

(setq enable-local-variables nil)
(setq tangle-external-files t)
(setq python-package-dir (concat "../" "kicad_netlist_reader"))
