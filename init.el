(column-number-mode 1)
(setq-default indent-tabs-mode nil)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'naysayer t)
(setq-default tab-width 4)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(tabbar ## glsl-mode gle-mode erlang dockerfile-mode yaml-mode ace-flyspell scala-mode cobol-mode cobalt php-mode ein go-mode rust-mode)))
(global-set-key (kbd "<C-tab>") 'tabbar-forward)
(global-set-key (kbd "<C-S-tab>") 'tabbar-backward)
(add-hook 'before-save-hook #'gofmt-before-save)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(tabbar-mode)
(transient-mark-mode 0)
