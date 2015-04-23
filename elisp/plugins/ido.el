
; Ido mode with fuzzy search
(ido-mode t)
(defvar ido-enable-prefix nil)
(defvar ido-enable-flex-matching t)
(defvar ido-auto-merge-work-directories-length nil)
(defvar ido-create-new-buffer 'always)
(defvar ido-use-filename-at-point 'guess)
(defvar ido-use-virtual-buffers t)
(defvar ido-handle-duplicate-virtual-buffers 2)

;; Display ido results vertically, rather than horizontally
(setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))

(defun ido-disable-line-truncation () (set (make-local-variable 'truncate-lines) nil))
(add-hook 'ido-minibuffer-setup-hook 'ido-disable-line-truncation)
(defun ido-define-keys () ;; C-n/p is more intuitive in vertical layout
  (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-p") 'ido-prev-match))
(add-hook 'ido-setup-hook 'ido-define-keys)

(nmap "SPC f" 'ido-find-file)
(nmap "SPC b" 'ido-switch-buffer)
