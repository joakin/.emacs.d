
;; Helm config
(after 'helm-autoloads
  (require 'helm-config)
  (global-set-key (kbd "C-c h") 'helm-mini)
  (helm-mode 1))
