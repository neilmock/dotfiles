(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(el-get 'sync '(cider clojure-mode dockerfile-mode ido-hacks
                      magit markdown-mode paredit yaml-mode
                      find-file-in-project))

(add-to-list 'custom-theme-load-path
	     "~/.emacs.d/solarized/")

(setq inhibit-startup-message t)

(setq backup-directory-alist
      `(("." . ,(expand-file-name "~/.emacs.d/backups"))))

(set-frame-parameter nil 'background-mode 'dark)
(set-terminal-parameter nil 'background-mode 'dark)
;;(setq solarized-termcolors 256)
(load-theme 'solarized t)

(show-paren-mode 1)

(menu-bar-mode -1)

(defun find-the-project ()
  (interactive)
  (find-file
   (concat "~/Projects/"
           (ido-completing-read "Project: "
                                (directory-files "~/Projects/" nil "^[^.]")))))

(global-set-key "\C-cp" 'find-the-project)

(global-set-key (kbd "C-c C-j") 'cider-jack-in)

(global-set-key (kbd "C-c f") 'find-file-in-project)

(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-auto-merge-work-directories-length nil
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-use-virtual-buffers t
      ido-handle-duplicate-virtual-buffers 2
      ido-max-prospects 10)

(setq-default tab-width 2)

(setq-default indent-tabs-mode nil)

(prefer-coding-system 'utf-8)

(global-set-key (kbd "C-,") 'hippie-expand)

(global-set-key "\C-xg" 'magit-status)

(setq-default indent-tabs-mode nil)

(setq whitespace-style '(tabs trailing lines)
      whitespace-line-column 80
      line-number-mode t
      column-number-mode t)

(global-whitespace-mode t)

(setq show-trailing-whitespace t)

(add-hook 'before-save-hook 'whitespace-cleanup)

(add-to-list 'auto-mode-alist '("\\.*rc$" . conf-unix-mode))

(defalias 'yes-or-no-p 'y-or-n-p)

(dolist (mode '(scheme emacs-lisp lisp clojure clojurescript))
  (add-hook (intern (concat (symbol-name mode) "-mode-hook"))
            'paredit-mode))

(add-hook 'ruby-mode-hook
          (lambda ()
            (define-key ruby-mode-map "\C-m" 'reindent-then-newline-and-indent)))


(setq auto-mode-alist (cons '("\\.rake" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.ru" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.gemspec" . ruby-mode) auto-mode-alist))

(add-to-list 'auto-mode-alist '("Berksfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(el-get 'sync '(cider clojure-mode ido-hacks
                      magit markdown-mode paredit yaml-mode
                      find-file-in-project))

(add-to-list 'custom-theme-load-path
	     "~/.emacs.d/emacs-color-theme-solarized/")

(setq inhibit-startup-message t)

(setq backup-directory-alist
      `(("." . ,(expand-file-name "~/.emacs.d/backups"))))

(set-frame-parameter nil 'background-mode 'dark)
(set-terminal-parameter nil 'background-mode 'dark)
;;(setq solarized-termcolors 256)
(load-theme 'solarized t)

(show-paren-mode 1)

(menu-bar-mode -1)

(defun find-the-project ()
  (interactive)
  (find-file
   (concat "~/Projects/"
           (ido-completing-read "Project: "
                                (directory-files "~/Projects/" nil "^[^.]")))))

(global-set-key "\C-cp" 'find-the-project)

(global-set-key (kbd "C-c C-j") 'cider-jack-in)

(global-set-key (kbd "C-c f") 'find-file-in-project)

(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-auto-merge-work-directories-length nil
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-use-virtual-buffers t
      ido-handle-duplicate-virtual-buffers 2
      ido-max-prospects 10)

(setq-default tab-width 2)

(setq-default indent-tabs-mode nil)

(prefer-coding-system 'utf-8)

(global-set-key (kbd "C-,") 'hippie-expand)

(global-set-key "\C-xg" 'magit-status)

(setq-default indent-tabs-mode nil)

(setq whitespace-style '(tabs trailing lines)
      whitespace-line-column 80
      line-number-mode t
      column-number-mode t)

(global-whitespace-mode t)

(setq show-trailing-whitespace t)

(add-hook 'before-save-hook 'whitespace-cleanup)

(add-to-list 'auto-mode-alist '("\\.*rc$" . conf-unix-mode))

(defalias 'yes-or-no-p 'y-or-n-p)

(dolist (mode '(scheme emacs-lisp lisp clojure clojurescript))
  (add-hook (intern (concat (symbol-name mode) "-mode-hook"))
            'paredit-mode))

(add-hook 'ruby-mode-hook
          (lambda ()
            (define-key ruby-mode-map "\C-m" 'reindent-then-newline-and-indent)))


(setq auto-mode-alist (cons '("\\.rake" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.ru" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.gemspec" . ruby-mode) auto-mode-alist))

(add-to-list 'auto-mode-alist '("Berksfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

(setq magit-push-always-verify nil)

(setq js-indent-level 2)
