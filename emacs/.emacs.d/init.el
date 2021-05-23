(require 'package)
(require 'org)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (concat user-emacs-directory "config.org"))
