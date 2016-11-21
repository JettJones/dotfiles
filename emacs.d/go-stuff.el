; enable go-mode
  (add-to-list 'load-path "~/.emacs.d/go-mode.el/")
  (require 'go-mode-autoloads)

; additional hooks on top of go-mode
; copied from web
; http://tleyden.github.io/blog/2014/05/22/configure-emacs-as-a-go-editor-from-scratch/
(setq exec-path (cons "/go/bin" exec-path))

(defun my-go-mode-hook()
  ; call gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; godef jump key binding
  (setq-default tab-width 4)
  ;(setq indent-line-function 'insert-tab)
  (local-set-key (kbd "M-.") 'godef-jump))

(add-hook 'go-mode-hook 'my-go-mode-hook)
