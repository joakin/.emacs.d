
(defun load-conf-file (path)
  "Load a file of .emacs.d"
  (load (concat user-emacs-directory "elisp/" path)))

(load-conf-file "base/deps")

;; Add in your own as you wish:
(defvar my-packages '(smex
                      ido-ubiquitous
                      idle-highlight-mode

                      color-theme-solarized
                      heroku-theme
                      cyberpunk-theme
                      ujelly-theme

                      yasnippet
                      projectile
                      flycheck
                      key-chord
                      evil
                      helm
                      auto-complete
                      litable
                                        ; smartparens
                      ace-jump-mode

                      web-mode
                      js2-mode
                      markdown-mode
                      clojure-mode

                      clojure-snippets
                      )
  "A list of packages to ensure are installed at launch.")

(ensure-packages-install)

;;;; macros
(load-conf-file "base/macros")

;; fns
(load-conf-file "base/functions")

;;;; basic settings
(load-conf-file "base/gui")
(load-conf-file "base/editor")

;; emacs keybindings
(load-conf-file "base/keys")

;; hooks
(load-conf-file "hooks/prog-mode")

;;;; plugins
(load-conf-file "plugins/keychord")
(load-conf-file "plugins/evil")
(load-conf-file "plugins/ido")
(load-conf-file "plugins/whitespace")
(load-conf-file "plugins/smex")
(load-conf-file "plugins/yasnippet")
(load-conf-file "plugins/flycheck")
(load-conf-file "plugins/projectile")
(load-conf-file "plugins/autocomplete")
(load-conf-file "plugins/eldoc")
(load-conf-file "plugins/helm")
(load-conf-file "plugins/smartparens")
(load-conf-file "plugins/acejump")
(load-conf-file "plugins/web-mode")

;;;; languages
(load-conf-file "langs/js")
(load-conf-file "langs/cljs")
(load-conf-file "langs/html")


;; Custom set variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("7fa9dc3948765d7cf3d7a289e40039c2c64abf0fad5c616453b263b601532493" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-source-header ((t (:background "#abd7f0" :foreground "black" :weight normal :height 1.0)))))
