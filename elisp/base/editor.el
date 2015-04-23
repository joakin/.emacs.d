
;; When you visit a file, point goes to the last place where it was
;; when you previously visited the same file
(require 'saveplace)
(setq-default save-place t)

;; Show matching parens
(show-paren-mode 1)

;; Indent with spaces by default
(setq-default indent-tabs-mode nil)

(setq sentence-end-double-space nil
      mouse-yank-at-point t
      whitespace-style '(face trailing lines-tail tabs)
      whitespace-line-column 80
      )

(set-default 'indicate-empty-lines t)

;; Enable narrowing
(put 'narrow-to-region 'disabled nil)

;; Default fill column to 80
(set-fill-column 80)

;; Use word wrap
(setq-default word-wrap t)
(setq-default truncate-lines t)

; Show mixed tabs/spaces and trailing whitespace
(global-whitespace-mode 1)
