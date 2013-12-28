
(defmacro cmd (&rest commands)
  "Convience macro which creates a lambda interactive command."
  `(lambda ()
     (interactive)
     ,@commands))

(defmacro nmap (key &rest commands)
  "Convience macro for normal mappings."
  `(define-key evil-normal-state-map
     (kbd ,key) ,@commands))

;; Evil
(after 'evil-autoloads
  (evil-mode 1)

  ;; Recover some emacs key bindings
  (define-key evil-normal-state-map (kbd "\C-k") 'kill-line)
  (define-key evil-insert-state-map (kbd "\C-k") 'kill-line)
  (define-key evil-insert-state-map (kbd "\C-e") 'move-end-of-line)
  (define-key evil-visual-state-map (kbd "\C-e") 'move-end-of-line)
  (define-key evil-normal-state-map (kbd "\C-e") 'move-end-of-line)
  (define-key evil-normal-state-map (kbd "\C-y") 'yank)
  (define-key evil-insert-state-map (kbd "\C-y") 'yank)
  ;; (define-key evil-insert-state-map (kbd "\C-w") 'kill-region)
  (define-key evil-insert-state-map (kbd "\C-w") 'backward-kill-word)

  ;; Acejump shortcut
  (define-key evil-normal-state-map (kbd "s") 'ace-jump-mode)
  (define-key evil-visual-state-map (kbd "s") 'ace-jump-mode)

  (nmap "SPC f" 'ido-find-file)
  (nmap "SPC b" 'ido-switch-buffer)
  (nmap "SPC w" 'save-buffer)
  (nmap "SPC q" 'evil-quit)

  (nmap "," 'evil-ex)
  (nmap ":" 'evil-repeat-find-char-reverse)

  ;; Emacs quick shortcuts
  (nmap "SPC x" 'smex)

  ;; Evaling stuff
  (nmap "SPC e e" (kbd "C-x C-e"))
  (nmap "SPC e o" (kbd "C-M-x"))

  ;; Q executes last macro
  (nmap "Q" 'call-last-kbd-macro)

  ;; esc quits
  (define-key evil-normal-state-map [escape] 'keyboard-quit)
  (define-key evil-visual-state-map [escape] 'keyboard-quit)
  (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

  (define-key minibuffer-local-map (kbd "C-w") 'backward-kill-word)

  ;; Window resizing
  (nmap "\C-W <C-right>" (cmd (evil-window-increase-width 10)))
  (nmap "\C-W <C-left>" (cmd (evil-window-increase-width -10)))
  (nmap "\C-W <C-down>" (cmd (evil-window-increase-height 10)))
  (nmap "\C-W <C-up>" (cmd (evil-window-increase-height -10)))

  ;; Toggle line wrapping
  (nmap "SPC s w" 'toggle-truncate-lines)
  (nmap "SPC s W" 'toggle-word-wrap)

  ;; Whitespace cleaning
  (nmap "SPC i SPC" 'j-cleanup-buffer)

  ;; Projectile stuff
  (nmap "SPC p f" 'projectile-find-file)
  (nmap "SPC p g" 'projectile-grep)

  ;; Shell
  (nmap "SPC c" 'shell)

  )
