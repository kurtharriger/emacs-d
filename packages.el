;; packages.el - manages packages and lists of packages

;; conditional for the O.G emacs
;;(when (not (require 'package nil t))
;;  (require 'package "package-23.el"))

(require 'package)

;; override my package directory
(setq package-user-dir (concat dotfiles-dir "/.elpa"))

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

;; make sure we're up to date with archives
(when (null package-archive-contents)
  (package-refresh-contents))

(defvar packages-to-install
  '(clojure-mode
    clojure-test-mode
    haskell-mode
    textmate
    paredit))

;; install everything in that list
(dolist (p packages-to-install)
  (when (not (package-installed-p p))
    (package-install p)))