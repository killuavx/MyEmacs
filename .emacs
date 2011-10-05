(put 'upcase-region 'disabled nil)

(set-language-environment 'UTF-8)
;;设置默认字体
(set-default-font "Monaco-9")

(add-to-list 'load-path
	     "~/.emacs.d/plugins")
(require 'yasnippet-bundle)

(add-to-list 'load-path
	     "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets")

(add-to-list 'load-path
	     "~/.emacs.d/plugins/color-theme")
;;设置配色方案
(require 'color-theme)
(color-theme-initialize)

(load-file "~/.emacs.d/plugins/color-theme/themes/pink-bliss.el")
;(color-theme-pink-bliss)
(color-theme-calm-forest)

;; org-mode
(setq load-path (cons "~/.emacs.d/plugins/org/lisp" load-path))
(setq load-path (cons "~/.emacs.d/plugins/org/contrib/lisp" load-path))
(require 'org-install)
(require 'org-publish)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'org-mode-hook 
(lambda () (setq truncate-lines nil)))
 
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)