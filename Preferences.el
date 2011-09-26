;; This is the Aquamacs Preferences file.
;; Add Emacs-Lisp code here that should be executed whenever
;; you start Aquamacs Emacs. If errors occur, Aquamacs will stop
;; evaluating this file and print errors in the *Messags* buffer.
;; Use this file in place of ~/.emacs (which is loaded as well.)

; package.el
(add-to-list 'load-path "~/.emacs.d/")
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Enable line number
(require 'linum+)
(global-linum-mode)

;; Color theme
(add-to-list 'load-path "~/.emacs.d/color-theme")
(require 'color-theme)
(color-theme-initialize)
(color-theme-arjen)

;; Evil Vim emulation
(add-to-list 'load-path "~/.emacs.d/evil/")
(require 'evil)  
(evil-mode 1)

;; Load and configure SLIME
(add-to-list 'load-path "~/.emacs.d/slime/")
(require 'slime)
(eval-after-load 'slime '(setq slime-protocol-version 'ignore))
(setq slime-net-coding-system 'utf-8-unix)
(set-language-environment "utf-8")
(slime-setup '(slime-repl))

;; elein
(require 'elein)

;; Groovy mode
;;; turn on syntax hilighting
(global-font-lock-mode 1)
;;; use groovy-mode when file ends in .groovy or has #!/bin/groovy at start
(autoload 'groovy-mode "groovy-mode" "Groovy editing mode." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'auto-mode-alist '("\.gvy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

;; Clojure mode
(autoload 'clojure-mode "clojure-mode" "Clojure editing mode." t)
(add-to-list 'auto-mode-alist '("\.clj$" . clojure-mode))
(add-to-list 'interpreter-mode-alist '("clojure" . groovy-mode))

;; set default directory
(cd "~/work/cowboy/src/Misc/cowboy_clj/")
;(setf (stream-external-format *standard-input*) :utf8)
