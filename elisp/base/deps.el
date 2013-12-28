
(require 'package)

(package-initialize)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Package installs
(when (not package-archive-contents)
  (package-refresh-contents))

(defun ensure-packages-install ()
  "Ensure that the list of packages is installed"
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(defvar my-packages nil)

