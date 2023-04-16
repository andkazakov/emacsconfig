(setq user-full-name "Andrew Kazakov"
      user-mail-address "public@kazakov.dev")

(setq doom-font (font-spec :family "Fira Code" :size 13))

(setq display-line-numbers-type t)

;; Возможность вставки данных средней клавишей мыши и стандартными клавишами
(global-set-key (kbd "<mouse-2>") 'clipboard-yank)

(map! :leader
      :prefix "w"
      :desc "Go to bottom" "<down>" #'evil-window-down
      :desc "Go to top" "<up>" #'evil-window-up
      :desc "Go to left" "<left>" #'evil-window-left
      :desc "Go to right" "<right>" #'evil-window-right)

(load! "configs/+ui")
(load! "configs/+org")
(load! "configs/+elfeed")
