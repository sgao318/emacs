;; 列出最近打开的文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; 简化yes/no的输入
(fset 'yes-or-no-p 'y-or-n-p)

;; format codes
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indent selected region."))
      (progn
	(indent-buffer)
	(message "Indent buffer.")))))
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

;; use ag search
(global-set-key (kbd "C-c p s") 'helm-do-ag-project-root)

;; magit view
(global-set-key (kbd "C-x g") 'magit-status)

(provide 'init-hotkeys)
