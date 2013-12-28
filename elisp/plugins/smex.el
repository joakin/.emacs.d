
;; Smex to use ido like interface for M-x
;; Doesn't work => (smex-save-file (concat user-emacs-directory
;; ".smex-items"))
(after 'smex-autoloads
  (smex-initialize)
  (global-set-key (kbd "M-x") 'smex))
