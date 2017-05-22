; File for custom keybindings - Mac OSX - Banyon
; Daniel Williams

;; ;; Auto-set by default:
;; (global-set-key (kbd "C-h k") 'describe-key)
;; (global-set-key (kbd "C-h f") 'describe-function)


;;;;======================= keybindings ===============================
;; I wanted to remap the alt-delete behavior to C-DEL, M-Backspace, and C-Backspace….
;; But it didn’t work.
;(global-set-key [delete] 'delete-char)
;(global-set-key [kp-delete] 'delete-char)
;(global-set-key [C-backspace] 'backward-kill-word)
;(global-set-key [C-delete] 'kill-word)
;(global-set-key [M-delete] 'kill-word)
(global-set-key (kbd "M-d") 'kill-word)
 

;;===================================
;; dvorak keybindings
; C-q functions
(define-prefix-command 'ctrlq)
(global-set-key (kbd "C-q") 'ctrlq)

(define-key ctrlq (kbd "C-a") 'save-buffer)
(define-key ctrlq (kbd "a") 'save-some-buffers)
(define-key ctrlq (kbd "C-o") 'compile)
(define-key ctrlq (kbd "o") 'other-window)
(define-key ctrlq (kbd "1") 'delete-other-windows)
(define-key ctrlq (kbd "C-1") 'delete-other-windows)
(define-key ctrlq (kbd ";") 'iswitchb-buffer)
(define-key ctrlq (kbd "k") 'kill-buffer)
(define-key ctrlq (kbd "C-k") 'kill-buffer)
(define-key ctrlq (kbd "C-j") 'kill-emacs)

(define-prefix-command 'ctrlx)
(global-set-key (kbd "C-x") 'ctrlx)

; C-x functions
(define-key ctrlx (kbd "C-f") 'find-file)
(define-key ctrlx (kbd "C-v") 'find-alternate-file)
(define-key ctrlx (kbd "k") 'kill-buffer)


(define-key ctrlx (kbd "1") 'delete-other-windows)
(define-key ctrlx (kbd "C-w") 'write-file)
(define-key ctrlx (kbd "C-c") 'kill-emacs)
(define-key ctrlx (kbd "C-q") 'kill-emacs)
(define-key ctrlx (kbd "b") 'iswitchb-buffer)
(define-key ctrlx (kbd "C-b") 'list-buffers )
(define-key ctrlx (kbd "s") 'save-some-buffers)
(define-key ctrlx (kbd "C-s") 'save-buffer)

; C-c functions
(global-set-key (kbd "^c ^c") 'compile)
(global-unset-key (kbd "M-r"))
(global-set-key (kbd "M-r") 'replace-regexp)


;; movement
(global-unset-key (kbd "C-t"))
(global-set-key   (kbd "C-t")   'forward-char)
(global-unset-key (kbd "C-w"))
(global-set-key   (kbd "C-w")   'backward-char)
(global-unset-key (kbd "C-n"))
(global-unset-key (kbd "C-p"))
(global-set-key   (kbd "C-n")   'previous-line)
(global-unset-key (kbd "C-v"))
(global-set-key   (kbd "C-v")   'next-line)
(global-unset-key  (kbd "M-t"))
(global-set-key  (kbd "M-t")   'forward-word)
(global-set-key  (kbd "ESC <right>") 'forward-word) ;== alt-<right-arrow>
(global-unset-key  (kbd "M-w"))
(global-set-key  (kbd "M-w")   'backward-word)
(global-set-key  (kbd "ESC <left>") 'backward-word) ;== alt-<left-arrow>
 
;; ;;===============================
(global-set-key (kbd "M-v") 'scroll-up)
(global-set-key (kbd "M-n") 'scroll-down)


;;===================================
;; preference bindings
(global-set-key [\e] 'keyboard-quit) ;; MAC OSX version
(global-set-key [f2] 'undo)
(global-set-key [f3] 'undo)

;; http://ma.darche.free.fr/conf/.emacs

