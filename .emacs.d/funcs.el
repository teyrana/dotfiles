; File for custom functions & macros
; Daniel Williams 

(defun dos2unix()
  "Convert a DOS buffer to Unix format: CRLF -> LF / \r\n"
  (interactive) ;; allows this function to be called by the user
  (set-buffer-file-coding-system 'undecided-unix )
  (replace-regexp "\r" "" nil (point-min) (point-max)))   ;; if "\r" stops working, try C-q C-j


(defun brace-ins()
  "brace insertion macro"
  (interactive)
  (insert "{")
  (newline)
  (newline)
  (insert "}")
  (backward-char)
  (backward-char)
  (backward-char) )
(global-set-key  (kbd "M-{") 'brace-ins)

(defun parens-ins()
  "parens insertion macro"
  (interactive)
  (insert "(")
  (insert ")")
  (backward-char) )
(global-set-key  (kbd "M-(") 'parens-ins)

(defun bracket-ins()
  "brace insertion macro"
  (interactive)
  (insert "[")
  (insert "]")
  (backward-char) )
(global-set-key  (kbd "M-}") 'bracket-ins)
