;; key-chord
; Enable chording with keys that are not ctrl-meta-shift
(require 'key-chord)
(key-chord-mode 1)

;; evil
(require 'evil)
(evil-mode 1)

(defmacro cmd (&rest commands)
  "Convience macro which creates a lambda interactive command."
  `(lambda ()
     (interactive)
     ,@commands))

(defmacro nmap (key &rest commands)
  "Convience macro for normal mappings."
  `(define-key evil-normal-state-map
     (kbd ,key) ,@commands))

(defmacro imap (key &rest commands)
  "Convience macro for insert mappings."
  `(define-key evil-insert-state-map
     (kbd ,key) ,@commands))

(defmacro vmap (key &rest commands)
  "Convience macro for insert mappings."
  `(define-key evil-visual-state-map
     (kbd ,key) ,@commands))

; Recover some emacs key bindings
(nmap "\C-k" 'kill-line)
(imap "\C-k" 'kill-line)
(imap "\C-e" 'move-end-of-line)
(vmap "\C-e" 'move-end-of-line)
(nmap "\C-e" 'move-end-of-line)
(nmap "\C-y" 'yank)
(imap "\C-y" 'yank)
;; (imap "\C-w" 'kill-region)
(imap "\C-w" 'backward-kill-word)

;; Evaling stuff
(nmap "SPC e e" (kbd "C-x C-e"))
(nmap "SPC e o" (kbd "C-M-x"))

;; Q executes last macro
(nmap "Q" 'call-last-kbd-macro)

(nmap "," 'evil-ex)
(nmap ":" 'evil-repeat-find-char-reverse)

(nmap "SPC w" 'save-buffer)
(nmap "SPC q" 'evil-quit)

;; Acejump shortcut
; (define-key evil-normal-state-map (kbd "s") 'ace-jump-mode)
; (define-key evil-visual-state-map (kbd "s") 'ace-jump-mode)

;; Emacs quick shortcuts
(nmap "SPC x" 'execute-extended-command)
(vmap "SPC x" 'execute-extended-command)

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

;; Shell
(nmap "SPC c" 'shell)

;; Toggle line wrapping
(nmap "SPC s w" 'toggle-truncate-lines)
(nmap "SPC s W" 'toggle-word-wrap)
