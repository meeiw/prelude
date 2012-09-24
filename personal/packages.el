(dolist (package '(ace-jump-mode multiple-cursors))
  (unless (package-installed-p package)
    (package-install package)))
