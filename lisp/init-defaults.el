;;默认路径
(setq default-directory "/data/")

;; 关闭工具栏
(tool-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;; 不自动生成备份文件
(setq make-backup-files nil)

;; 开启自动补全
(global-company-mode 1)

;; 自动加载外部改变的文件  
(global-auto-revert-mode 1)

;; 设置光标为"竖线"
;(setq-default cursor-type 'bar)

;; default full screen
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; highlight matching parenthesis
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; highlight current line
(global-hl-line-mode 1)

;; use monokai theme (dark)
(load-theme 'monokai 1)

(provide 'init-defaults)
