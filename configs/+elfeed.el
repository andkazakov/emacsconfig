;;; ~/.doom.d/configs/+elfeed.el -*- lexical-binding: t; -*-

(use-package! elfeed
  :init
  (setq rmh-elfeed-org-files (my/org-roam-list-elfeed))
  (add-hook! 'elfeed-search-mode-hook 'elfeed-update)
  (map! :leader
        :prefix "o"
        :desc "Open elfeed" "f" #'elfeed))
