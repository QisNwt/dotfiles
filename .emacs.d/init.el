(setq-default tab-width 4
              default-tab-width 4
              indent-tabs-mode nil)
(setq tab-stop-list
           '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key "\C-j" 'newline)
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)
(setq auto-save-file-prefix (expand-file-name "~/.autosave"))
