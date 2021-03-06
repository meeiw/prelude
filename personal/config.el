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

;; map fn-key to hyper
;; http://irreal.org/blog/?p=1450
(setq ns-function-modifier 'hyper)

(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(setq mac-right-option-modifier nil)
(setq mac-right-command-modifier 'super)
(setq ido-create-new-buffer 'prompt)

(global-set-key (kbd "C-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Fix large projects with projectile
(setq projectile-enable-caching t)

;; Only highlight characters longer than 80 characters
(setq whitespace-style (quote (face tabs spaces trailing lines-tail space-before-tab newline indentation empty space-after-tab space-mark tab-mark newline-mark)))

;; Choose font-face for lines longer than 80 characters
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hl-line-face ((t (:background "color-22"))) t)
 '(whitespace-line ((t (:background "gray20" :foreground nil)))))

;; Remove auto-fill-mode for html
(add-hook 'html-mode-hook '(lambda () (auto-fill-mode 0)))

;; git integration
(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))

;; Output a message to show that file is loaded
(message "Local config.el loaded")
