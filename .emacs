;; Dan's customization file
(defvar running-xemacs (string-match "XEmacs\\|Lucid" emacs-version))

;;;;======================= subsidiary files ==========================
(defvar path "~/.emacs.d/") ;; posix
;;(defvar path "C:/Users/widget/.emacs.d/") ;; windows
(load (concat path "color.el"))
(load (concat path "c.el"))
(load (concat path "funcs.el"))
(load (concat path "js.el"))
(load (concat path "keys.el"))
(load (concat path "settings.el"))
(load (concat path "ui.el"))
(load (concat path "yaml-mode.el"))
