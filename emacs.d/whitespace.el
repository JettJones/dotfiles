; show whitespace (this should only happen for some file types?)
(require 'whitespace)
(setq whitespace-style '(face trailing tabs space-after-tab::space
                              space-before-tab::space lines))
(setq whitespace-line-column 120)
(global-whitespace-mode t)
(setq-default indent-tabs-mode nil)
