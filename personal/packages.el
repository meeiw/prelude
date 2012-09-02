(dolist (package '(ace-jump-mode mark-multiple))
  (unless (package-installed-p package)
    (package-install package)))
