;; Color themes and graphical embellishment

(require 'color-theme)
;; general color themes
(add-to-list 'load-path (concat dotfiles-dir "/vendor/themes"))
;; Solarized theme with light/dark versions
(add-to-list 'load-path (concat dotfiles-dir "/vendor/themes/color-theme-solarized"))
(require 'color-theme-solarized)
(color-theme-solarized-dark)

(setq frame-title-format '(buffer-file-name "%f" ("%b")))
(tooltip-mode -1)
(blink-cursor-mode -1)

;; stop beeping at me
(setq visible-bell t)