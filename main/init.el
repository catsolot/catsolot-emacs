(setq inhibit-startup-message t)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)

(menu-bar-mode -1)

(setq visible-bell nil)
(set-face-attribute 'default nil :font "DejaVu Sans Mono Book" :height 200)

(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)

(unless package-archive-contents

  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(use-package doom-modeline
             :ensure t
             :init (doom-modeline-mode 1)
             :custom ((doom-modeline-height 8)))

(use-package doom-themes)
(load-theme 'doom-homage-black t)

(column-number-mode)
(global-display-line-numbers-mode t)

(use-package evil
             :init
             :config
             (evil-mode 1)
             (setq-default indent-tabs-mode nil
                           tab-width 4)
             )

(use-package counsel
             :init
             (ivy-mode 1)
             (global-set-key (kbd "C-x C-f") 'counsel-find-file)
             (global-set-key (kbd "M-x") 'counsel-M-x)
             )

(use-package all-the-icons)

(use-package magit)

(use-package elpy
  :ensure t
  :init
  (elpy-enable))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(elpy magit counsel use-package evil doom-themes doom-modeline)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
