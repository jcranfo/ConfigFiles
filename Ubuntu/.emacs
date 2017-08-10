;;; packages --- Summary

;;; Commentary:

;; Dr.  Joshua W. Batterson
;; Gloyer-Taylor Laboratories, LLC.
;; May 11, 2016

;; Basic .emacs config to be used as a baseline for all Emacs installations

;;; Code:

(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3c3836" "#fb4934" "#b8bb26" "#fabd2f" "#83a598" "#d3869b" "#8ec07c" "#ebdbb2"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (gruvbox)))
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d320493111089afba1563bc3962d8ea1117dd2b3abb189aeebdc8c51b5517ddb" default)))
 '(global-diff-hl-mode t)
 '(org-startup-indented t)
 '(shell-pop-autocd-to-working-dir t)
 '(shell-pop-full-span t)
 '(shell-pop-shell-type
   (quote
    ("ansi-term" "*ansi-term*"
     (lambda nil
       (ansi-term shell-pop-term-shell)))))
 '(shell-pop-window-position "full")
 '(show-paren-mode t)
 '(size-indication-mode t)
 ;; '(symon-mode t)
 ;; '(symon-monitors
 ;;   (quote
 ;;    (symon-current-time-monitor symon-linux-memory-monitor symon-linux-cpu-monitor symon-linux-network-rx-monitor symon-linux-network-tx-monitor symon-linux-battery-monitor)))
 ;; '(symon-refresh-rate 3)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; start server upon launch
;;(server-start)

;; enable melpa package repository
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; specify location for backup files
(setq backup-directory-alist
      `((".*" . ,"~/.saves")))
    (setq auto-save-file-name-transforms
          `((".*" ,"~/.saves" t)))

;; evil mode
(require 'evil)
(evil-mode 1)

;; Use origami-mode for code folding
(require 'origami)
(global-origami-mode 1)

;; fuzzy search for ido mode and enable vertical lists
(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)

;; automatically close parenthesis
(require 'smartparens-config)
(smartparens-global-mode t)

;; set default c/c++ standard
(setq c-default-style "stroustrup"
          c-basic-offset 4)

;; enable relative line numbers - line numbers are slow for very large files
(global-relative-line-numbers-mode)

;; enable syntax checking
(global-flycheck-mode t)

;; start multi-term with zsh - necessary for zsh with shell-pop
(require 'multi-term)
(setq multi-term-program "/bin/zsh")

;; start pop up shell and set key to f8
(add-to-list 'load-path "somewhere")
(require 'shell-pop)
;; (global-set-key [f8] 'shell-pop)
(global-set-key (kbd "C-x t") 'shell-pop)

;; start "very large file" package at startup
(require 'vlf-setup)

;; start auto-complete at startup
(require 'auto-complete-config)
(ac-config-default)

;; yasnippet
(require 'yasnippet)
(yas-reload-all)
;; (add-hook 'prog-mode-hook #'yas-minor-mode)
(add-hook 'c++-mode-hook 'yas-minor-mode)
(add-hook 'LaTeX-mode-hook 'yas-minor-mode)
(add-hook 'f90-mode-hook 'yas-minor-mode)
(add-hook 'python-mode-hook 'yas-minor-mode)

;; alternative definition for M-x
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; (local-set-key "\C-\M-g" 'org-plot/gnuplot)
(global-set-key (kbd "C-x g") 'magit-status)

(put 'dired-find-alternate-file 'disabled nil)

;; Agressive Indent Mode
;; (global-aggressive-indent-mode 1)

;; Ace-window
;; (global-set-key (kbd "M-p") 'ace-window)
(global-set-key (kbd "C-x o") 'ace-window)

;; Ace-jump mode
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
;; you can select the key you prefer to
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-c C-SPC") 'ace-jump-mode)

;; Quickly Maximize buffer and return
(defun toggle-maximize-buffer () "Maximize buffer"
       (interactive)
       (if (= 1 (length (window-list)))
	   (jump-to-register '_) 
	 (progn
	   (window-configuration-to-register '_)
	   (delete-other-windows))))

;; (global-set-key [f9] 'toggle-maximize-buffer)
(global-set-key (kbd "C-c b") 'toggle-maximize-buffer)

;; Weather alias
(defalias 'weather 'wttrin)

(require 'package)
(add-to-list 'package-archives'("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(require 'key-chord)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)

;; (setq next-line-add-newlines t)

;;; .emacs ends here

