
;; Clean GUI
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Initial size
(if window-system
    (set-frame-size (selected-frame) 120 34))

;; Make duplicate buffer names contain its folder afterwards
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Vars
(setq inhibit-startup-message t
      visible-bell t

      ;; Some main settings!
      x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t
      apropos-do-all t
      save-place-file (concat user-emacs-directory "places")
      backup-directory-alist `(("." . ,(concat user-emacs-directory "backups")))
      diff-switches "-u"
      )

(set-default 'imenu-auto-rescan t)

;; Colorscheme (theme) setting
; (load-theme 'cyberpunk t)
(load-theme 'solarized-dark t)
; (load-theme 'heroku t)
