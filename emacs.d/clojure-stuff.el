; cider
(unless (package-installed-p 'cider)
  (package-install 'cider))
(unless (package-installed-p 'clj-refactor)
  (package-install 'clj-refactor))
(unless (package-installed-p 'rainbow-delimiters)
  (package-install 'rainbow-delimiters))

;;
(global-set-key (kbd "<f5>") 'cider-jack-in)

(setenv "PATH" (concat (getenv "PATH") "/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; colorful parens
(require 'rainbow-delimiters)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;; more searching
(unless (package-installed-p 'deadgrep)
  (package-install 'deadgrep))

(global-set-key (kbd "C-M-s") 'deadgrep)


