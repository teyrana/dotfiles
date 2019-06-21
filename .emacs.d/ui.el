;;;;======================= general settings ================================
(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(if (boundp tool-bar-mode)
    (tool-bar-mode -1))

;; ;; ======================= font settings ================================
(if (eq window-system 'x)
    (set-default-font "Courier-10"))
(if (eq system-type 'windows-nt)
    (set-default-font "Courier-10"))

;;(if (equal 'x (framep (window-frame (selected-window))))
;;	  (set-frame-font "-bitstream-Bitstream Charter-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1"))

;;;;======================= other settings ================================
(cond ((not running-xemacs)
       (global-font-lock-mode t) ))

;; Automatically makes the matching paren stand out in color.
(show-paren-mode t)

(setq require-final-newline t)
;; Stop at the end of the file, not just add lines
(setq next-line-add-newlines nil)
;;fix switch statement syntax
(c-set-offset 'case-label '+)
;; Always end a file with a newline
(setq require-final-newline t)

;;;;======================= indent settings  ================================
(setq tab-width 4)
(setq standard-indent 4)
(setq-default tab-always-indent t)
(setq-default indent-tabs-mode nil)

;;;;======================= modeline settings ================================
;; display the column number on modeline 
(column-number-mode t)

;; Display the time on modeline in 24 hour mode 
(display-time)
(setq display-time-24hr-format t)

