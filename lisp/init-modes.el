;; custmize major mode
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       '(("\\.html\\'" . web-mode))
       '(("\\.css\\'" . web-mode))
       '(("\\.go\\'" . go-mode))
       '(("\\.md\\'" . markdown-mode))
       '(("\\.markdown\\'" . markdown-mode))
       auto-mode-alist))

;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(provide 'init-modes)
