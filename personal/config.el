;; Here are some examples of how to override the defaults for the
;; various prelude-emacs settings.  To *append* to any of the
;; configurations attached to prelude-*-hooks, you can attach a
;; function to the appropriate hook:

;; disable whitespace-mode and whitespace-cleanup
;; (add-hook 'prelude-prog-mode-hook
;;           (lambda ()
;;             (prelude-turn-off-whitespace)
;;             (remove-hook 'before-save-hook 'whitespace-cleanup)) t)

;; For other global settings, just run the appropriate function; all
;; personal/*.el files will be evaluate after prelude-emacs is loaded.

;; disable line highlight
;; (global-hl-line-mode -1)

;; make the cursor blinking
(blink-cursor-mode t)
(setq ring-bell-function (lambda ()))

(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(setq mac-right-option-modifier nil)
(setq mac-right-command-modifier 'super)
(setq ido-create-new-buffer 'prompt)

(global-set-key (kbd "C-<") 'mark-previous-like-this)
(global-set-key (kbd "C->") 'mark-next-like-this)
(global-set-key (kbd "C-M-m") 'mark-more-like-this) ; like the other two, but takes an argument (negative is previous)
(global-set-key (kbd "C-*") 'mark-all-like-this)
(global-set-key (kbd "C-.") 'repeat)

;; Fix large projects with projectile
(setq projectile-enable-caching t)
