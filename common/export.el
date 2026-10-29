;;; export.el --- Batch export of the DevOps course Org files to PDF
;;
;; Usage (see ../Makefile):
;;   emacs --batch -Q -l common/export.el FILE.org -f devops-export-beamer
;;   emacs --batch -Q -l common/export.el FILE.org -f devops-export-article

(require 'org)
(require 'ox-latex)
(require 'ox-beamer)

;; Code blocks are typeset with the `listings' package (no shell-escape needed).
(setq org-latex-listings t)

;; Two pdflatex passes are enough (no bibliography).
(setq org-latex-pdf-process
      '("pdflatex -interaction nonstopmode -halt-on-error -output-directory %o %f"
        "pdflatex -interaction nonstopmode -halt-on-error -output-directory %o %f"))

;; Keep the .tex file, remove the other auxiliary files.
(setq org-latex-remove-logfiles t)

;; Never evaluate code blocks during export.
(setq org-export-babel-evaluate nil)

;; No backup files (*.tex~) next to the generated sources.
(setq make-backup-files nil)

(defun devops-export-beamer ()
  "Export the current buffer as a Beamer PDF."
  (org-beamer-export-to-pdf))

(defun devops-export-article ()
  "Export the current buffer as a LaTeX article PDF."
  (org-latex-export-to-pdf))
