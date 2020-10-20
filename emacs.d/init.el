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
 '(scroll-bar-mode nil)
 '(text-mode-hook '(turn-on-auto-fill text-mode-hook-identify))
 '(tool-bar-mode nil))

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
; (load "~/.emacs.d/clojure-stuff.el" nil t)
;  (load "~/.emacs.d/go-stuff.el" nil t)
;  (load "~/.emacs.d/autocomplete-stuff.el" nil t)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
