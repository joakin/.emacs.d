
(add-hook 'prog-mode-hook 'j-local-column-number-mode)
(add-hook 'prog-mode-hook 'j-local-comment-auto-fill)
(add-hook 'prog-mode-hook 'j-turn-on-hl-line-mode)
(add-hook 'prog-mode-hook 'j-turn-on-save-place-mode)
(add-hook 'prog-mode-hook 'j-pretty-lambdas)
(add-hook 'prog-mode-hook 'j-add-watchwords)
(add-hook 'prog-mode-hook 'idle-highlight-mode)

(provide 'prog-mode)
