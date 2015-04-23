
;; Insert
(defun j-insert-date ()
  "Insert a time-stamp according to locale's date and time format."
  (interactive)
  (insert (format-time-string "%c" (current-time))))

;; Cleaning
(defun j-untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun j-indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun j-cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer."
  (interactive)
  (j-indent-buffer)
  (j-untabify-buffer)
  (delete-trailing-whitespace))

;; Whitespace cleaning
(nmap "SPC i SPC" 'j-cleanup-buffer)

;; Editing fns, movement
(defun back-to-indentation-or-beginning () (interactive)
   (if (= (point) (progn (back-to-indentation) (point)))
       (beginning-of-line)))
(global-set-key (kbd "C-a") 'back-to-indentation-or-beginning)

(defun minibuffer-keyboard-quit ()
  "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))
