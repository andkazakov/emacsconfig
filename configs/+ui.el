;;; ~/.doom.d/configs/+ui.el -*- lexical-binding: t; -*-

(setq light-theme 'doom-tomorrow-day)
(setq dark-theme 'doom-tomorrow-night)
;; (setq highlight-indent-guides-method 'bitmap)

(defun my/set-light-theme ()
  (interactive)
  (load-theme light-theme t)
  (doom/reload-theme)
  (map! "<f12>" 'my/set-night-theme))

(defun my/set-night-theme ()
  (interactive)
  (load-theme dark-theme t)
  (doom/reload-theme)
  (map! "<f12>" 'my/set-light-theme))

;; Затемнение неактивных буфферов
(use-package! dimmer
  :config
  (setq dimmer-fraction 0.5)
  (dimmer-mode))

;; Смена темы в зависимости от времени суток
(if
    (and
     (>= (string-to-number (format-time-string "%H")) 9)
     (< (string-to-number(format-time-string "%H")) 18))
    (my/set-light-theme)
  (my/set-night-theme))

(map! :leader
      :prefix "w"
      :desc "Hydra windows" "h" #'+hydra/window-nav/body)

(map! :leader
      :prefix "t"
      :desc "Toggle focus mode" "f" #'focus-mode)

;; ломает календарь при установкe deadline
;; TODO Нужно разобраться
;; (use-package! golden-ratio
;;   :config
;;   (setq golden-ratio-mode 1)
;;   (setq golden-ratio-auto-scale t)
;;   (add-hook 'window-selection-change-functions #'golden-ratio))
