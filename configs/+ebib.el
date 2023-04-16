(use-package! ebib
  :init
  (map! :leader
        :prefix "o"
        :desc "Open ebib" "b" #'ebib)

  :config
  (setq ebib-autogenerate-keys nil)
  ;; (setq ebib-reading-list-file (concat org-directory "/research.org"))
  ;; (setq ebib-notes-directory (concat org-directory "/notes"))
  (setq ebib-file-search-dirs (list (concat (getenv "HOME") "/books")))
  (setq ebib-preload-bib-files (list (concat (getenv "HOME") "/books/library.bib")))
  (setq ebib-file-associations '())
  (setq ebib-index-columns '(
                             ("Entry Key" 20 t)
                             ("Title" 80 t)
                             ("Author" 40 t)
                             ("Keywords" 60)
                             ("Year" 10 t)
                             ("Language" 10 t)
                             ))
  (setq ebib-extra-fields '((biblatex "isbn") (BibTeX "isbn" "language")) )
  (setq ebib-keywords (concat org-directory "/keywords"))
  (setq ebib-filters-default-file (concat org-directory "/filters")))


;; (setq! bibtex-completion-library-path ebib-file-search-dirs)
;; (setq! bibtex-completion-bibliography ebib-preload-bib-files)
;; (setq! citar-bibliography ebib-preload-bib-files)
;; (setq! org-cite-global-bibliography ebib-preload-bib-files)
;; (setq! bibtex-completion-pdf-field "file")
