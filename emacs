; misc

; ido
  (require 'ido)
  (ido-mode t)

; color theme
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
  (load-theme 'zenburn t)

; add modes
  (load "~/.emacs.d/package-stuff.el" nil t)
  (load "~/.emacs.d/go-stuff.el" nil t)
;  (load "~/.emacs.d/autocomplete-stuff.el" nil t)

; thanks UI
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(menu-bar-mode nil)
 '(cua-mode t nil (cua-base))
 '(inhibit-startup-screen t)
 '(scroll-bar-mode nil)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
