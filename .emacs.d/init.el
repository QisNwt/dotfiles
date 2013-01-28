(menu-bar-mode -1)
(tool-bar-mode -1)
(setq inhibit-startup-message t)

(setq scroll-conservatively 1)
;; (global-set-key "\C-xj" 'goto-line)
(define-key global-map [select]  'end-of-line)

(setq-default default-tab-width 4)
(setq-default indent-tabs-mode nil)
(setq tab-stop-list
           '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
;;(global-set-key "\C-m" 'newline-and-indent)
;; (global-set-key "\C-j" 'newline)
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)
(setq auto-save-list-file-prefix "~/.autosave/")

(require 'linum)
(global-linum-mode)
