(defun mac-osx-editing-insert-at ()
  "Insert @ at point"
  (interactive)
  (insert-char ?@ 1))

(defun mac-osx-editing-insert-curly-left ()
  "Insert { at point"
  (interactive)
  (insert-char ?{ 1))

(defun mac-osx-editing-insert-curly-right ()
  "Insert } at point"
  (interactive)
  (insert-char ?} 1))

(defun mac-osx-editing-insert-bracket-left ()
  "Insert [ at point"
  (interactive)
  (insert-char ?[ 1))

(defun mac-osx-editing-insert-bracket-right ()
  "Insert ] at point"
  (interactive)
  (insert-char ?] 1))

(defun mac-osx-editing-insert-dollar ()
  "Insert $ at point"
  (interactive)
  (insert-char ?$ 1))

(defun mac-osx-editing-insert-pipe ()
  "Insert | at point"
  (interactive)
  (insert-char ?| 1))

(defun mac-osx-editing-insert-back-slash ()
  "Insert \ at point"
  (interactive)
  (insert-char ?\\ 1))

(defun mac-osx-editing-insert-tilde ()
  "Insert ~ at point"
  (interactive)
  (insert-char ?~ 1))

(global-set-key (kbd "M-2") 'mac-osx-editing-insert-at)
(global-set-key (kbd "M-4") 'mac-osx-editing-insert-dollar)
(global-set-key (kbd "M-7") 'mac-osx-editing-insert-pipe)
(global-set-key (kbd "M-/") 'mac-osx-editing-insert-back-slash)
(global-set-key (kbd "M-8") 'mac-osx-editing-insert-bracket-left)
(global-set-key (kbd "M-9") 'mac-osx-editing-insert-bracket-right)
(global-set-key (kbd "M-(") 'mac-osx-editing-insert-curly-left)
(global-set-key (kbd "M-)") 'mac-osx-editing-insert-curly-right)
(global-set-key (kbd "M-¨") 'mac-osx-editing-insert-tilde)
