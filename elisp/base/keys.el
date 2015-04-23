
;; Use hippie-expand for autocompletion
(global-set-key (kbd "M-/") 'hippie-expand)
;; And ibuffer for showing the list of buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Regex based forward and backwards search by default
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "M-%") 'query-replace-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)
(global-set-key (kbd "C-M-%") 'query-replace)

;; Font size
(define-key global-map (kbd "C-=") '(lambda () (interactive) (text-scale-increase 0.5)))
(define-key global-map (kbd "C--") '(lambda () (interactive) (text-scale-decrease 0.5)))

;; Turn on the menu bar for exploring new modes
(global-set-key (kbd "C-<f10>") 'menu-bar-mode)

;; Jump to a definition in the current file.
(global-set-key (kbd "C-x C-i") 'imenu)

;; Cleaning buffers
; (global-set-key (kbd "C-c f c") 'j-cleanup-buffer)
; (global-set-key (kbd "C-c f t") 'j-untabify-buffer)
; (global-set-key (kbd "C-c f i") 'j-indent-buffer)
; (global-set-key (kbd "C-c i d") 'j-insert-date)

