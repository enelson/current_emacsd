(tool-bar-mode 0)
(menu-bar-mode 1)
(scroll-bar-mode 0)
(fset 'yes-or-no-p 'y-or-n-p)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("38ba6a938d67a452aeb1dada9d7cdeca4d9f18114e9fc8ed2b972573138d4664" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;(load-theme 'monokai t)
;;(load-theme 'idea-darkula t)
;;(load-theme 'mustard t)
;;(load-theme 'flatland-black t)
;;(load-theme 'obsidian t)
;;(load-theme 'peacock t)
(load-theme 'boron t)
;;(load-theme 'reykjavik t)
;;(load-theme 'underwater t)

(when (memq window-system '(mac ns)) 
  (exec-path-from-shell-initialize))

(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;;(add-hook 'scala-mode-hook 'projectile-mode)
(projectile-global-mode)
(define-key projectile-mode-map [?\s-f] 'projectile-find-file)

(require 'golden-ratio)
(golden-ratio-mode 1)

(require 'ace-jump-mode)
(define-key global-map (kbd "s-j") 'ace-jump-mode)

(require 'jdee)

(require 'ag)

