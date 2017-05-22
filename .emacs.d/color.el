; color.el --- changes colors to prevent homicidal rage.

; backup.  This *should* be overwritten by zenburn below...
(set-background-color "SeaGreen4")

(defvar path "~/.emacs.d/")
(add-to-list 'load-path (concat path "color-theme/"))
(require 'color-theme)

; apparently color-theme is more complex than just this file...
(load (concat path "zenburn.el"))
(color-theme-zenburn)


