(when (>= emacs-major-version 24)
  (require 'package)
  
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmelade" . "https://marmalade-repo.org/packages/") t)
  (package-initialize)
)
