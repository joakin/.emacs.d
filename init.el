
;;; Package management
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(defvar my-packages '(
                      key-chord
                      evil
                      ; smex
                      idle-highlight-mode

                      projectile
                      flycheck
                      helm
                      auto-complete
                      ; litable
                      ; smartparens
                      ; ace-jump-mode

                      ; web-mode
                      ; js2-mode
                      ; markdown-mode
                      ; clojure-mode

                      ; clojure-snippets
                      )
  "A list of packages to ensure are installed at launch.")

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package my-packages)
  (unless (package-installed-p package)
    (package-install package)))

(defun load-conf-file (path)
  "Load a file of .emacs.d"
  (load (concat user-emacs-directory "elisp/" path)))

(load-conf-file "evil")

;; fns
(load-conf-file "base/functions")

;;;; basic settings
(load-conf-file "base/gui")
(load-conf-file "base/editor")

; ;; emacs keybindings
(load-conf-file "base/keys")

;; hooks
(load-conf-file "hooks/prog-mode")

;;;; plugins
(load-conf-file "plugins/ido")
(load-conf-file "plugins/flycheck")
(load-conf-file "plugins/projectile")
(load-conf-file "plugins/autocomplete")
; (load-conf-file "plugins/helm")
; (load-conf-file "plugins/smartparens")
; (load-conf-file "plugins/acejump")
; (load-conf-file "plugins/web-mode")

; ;;;; languages
(load-conf-file "langs/elisp")
; (load-conf-file "langs/js")
; (load-conf-file "langs/cljs")
; (load-conf-file "langs/html")

