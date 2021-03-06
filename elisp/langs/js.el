
;; Add json to js syntax
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

;;;###autoload
;; Pretty lambdas
(after 'js
  (setq js-indent-level 2)
  ;; fixes problem with pretty function font-lock
  (define-key js-mode-map (kbd ",") 'self-insert-command)
  (font-lock-add-keywords
    'js-mode `(("\\(function *\\)("
    (0 (progn (compose-region (match-beginning 1)
                              (match-end 1) "\u0192")
              nil))))))
