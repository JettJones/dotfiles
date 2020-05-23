; misc

; ido
  (require 'ido)
  (ido-mode t)

; color theme
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
  (load-theme 'zenburn t)

; backup
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(setq create-lockfiles nil)

; add modes
(load "~/.emacs.d/package-stuff.el" nil t)
;(load "~/.emacs.d/dockerfile-mode/dockerfile-mode.el" nil t)
(load "~/.emacs.d/ivy-stuff.el" nil t)
(load "~/.emacs.d/whitespace.el" nil t)
(load "~/.emacs.d/clojure-stuff.el" nil t)
;  (load "~/.emacs.d/go-stuff.el" nil t)
;  (load "~/.emacs.d/autocomplete-stuff.el" nil t)

; thanks UI
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (projectile all-the-icons find-file-in-project neotree counsel ivy use-package helm helm-config deadgrep rainbow-delimiters clj-refactor cider)))
 '(safe-local-variable-values
   (quote
    ((eval define-clojure-indent
           (:require 0)
           (:import
            (quote
             (0
              (0))))
           (defrecord
             (quote
              (1 nil
                 (:defn))))
           (forv 1)
           (for+ 1)
           (future-with 1)
           (start-unless 1)
           (stop-when 1)
           (do-at 1)
           (thrown\? 1)
           (thrown-with-msg\? 2)))))
 '(scroll-bar-mode nil)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
