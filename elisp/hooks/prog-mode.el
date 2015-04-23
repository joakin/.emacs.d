
(defun j-local-column-number-mode ()
  (make-local-variable 'column-number-mode)
  (column-number-mode t))
(add-hook 'prog-mode-hook 'j-local-column-number-mode)

(defun j-local-comment-auto-fill ()
  (set (make-local-variable 'comment-auto-fill-only-comments) t)
  (auto-fill-mode t))
(add-hook 'prog-mode-hook 'j-local-comment-auto-fill)

(defun j-turn-on-hl-line-mode ()
  (when (> (display-color-cells) 8)
    (hl-line-mode t)))
(add-hook 'prog-mode-hook 'j-turn-on-hl-line-mode)

(defun j-turn-on-save-place-mode ()
  (require 'saveplace)
  (setq save-place t))
(add-hook 'prog-mode-hook 'j-turn-on-save-place-mode)

(defun j-pretty-lambdas ()
  (font-lock-add-keywords
   nil `(("(?\\(lambda\\>\\)"
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    ,(make-char 'greek-iso8859-7 107))
                    nil))))))
(add-hook 'prog-mode-hook 'j-pretty-lambdas)

(defun j-add-watchwords ()
  (font-lock-add-keywords
   nil '(("\\<\\(FIX\\(ME\\)?\\|TODO\\|HACK\\|REFACTOR\\|NOCOMMIT\\)"
          1 font-lock-warning-face t))))
(add-hook 'prog-mode-hook 'j-add-watchwords)

(add-hook 'prog-mode-hook 'idle-highlight-mode)
