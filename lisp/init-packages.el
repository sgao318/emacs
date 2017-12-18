(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
       	      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))
;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像
;; cl - Common Lisp Extension

(require 'cl)

;; Add Packages
(defvar sgao/packages '(
		;; --- Auto-completion ---
		company
		;; --- Better Editor ---
		hungry-delete
		swiper
		counsel
		smartparens
		;; --- Major Mode ---
		js2-mode
		web-mode
		go-mode
		;; --- Minor Mode ---
		nodejs-repl
		exec-path-from-shell
		;; --- Themes ---
		monokai-theme
                ;; ag searcher apt install silversearcher-ag
                helm-ag
		;; git
		magit
		) "Default packages")

(setq package-selected-packages sgao/packages)

(defun sgao/packages-installed-p ()
     (loop for pkg in sgao/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

(unless (sgao/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg sgao/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

(provide 'init-packages)
