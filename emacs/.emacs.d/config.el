(defvar my-packages
  '(dracula-theme
    evil
    evil-collection
    general
    key-chord
    toc-org
    org-bullets
   )
    "A list of packages to ensure are installed at launch.")

  (defun my-packages-installed-p ()
    (let ((all-installed t))
      (dolist (p my-packages all-installed)
        (unless (package-installed-p p)
          (setq all-installed nil)))))

  (unless (my-packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (p my-packages)
      (unless (package-installed-p p)
        (package-install p))))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-visual-line-mode t)
(setq-default display-line-numbers 'relative)

(require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  (add-to-list 'package-archives
	   '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; evil, evil-collection

(setq evil-want-integration t) ;; This is optional since it's already set to t by default.
(setq evil-want-keybinding nil)
(setq evil-vsplit-window-right t)
(setq evil-split-window-below t)

(setq evil-want-C-u-scroll t)

(require 'evil)
(evil-mode 1)


(setq evil-collection-mode-list '(dashboard dired ibuffer))
(evil-collection-init)

(require 'general)
(general-evil-setup)

(general-create-definer spc-leader
  :states '(normal insert visual emacs)
  :keymaps 'override
  :prefix "SPC" ;; set leader
  :global-prefix "M-SPC") ;; access leader in insert mode

(spc-leader
  "b" '(:ignore t :wk "buffer")
  "bb" '(switch-to-buffer :wk "Switch buffer")
  "bk" '(kill-this-buffer :wk "Kill this buffer")
  "bn" 'next-buffer
  "bp" '(previous-buffer :wk "Previous buffer")
  "br" '(revert-buffer :wk "Reload buffer"))

(require 'key-chord)
(key-chord-mode 1)
(require 'evil)

(setq key-chord-two-keys-delay 0.03) ; 30ms
  (key-chord-define evil-insert-state-map "jk" 'evil-normal-state)

(require 'toc-org nil t)
   (add-hook 'org-mode-hook 'toc-org-enable)
   (add-hook 'org-mode-hook 'org-indent-mode)

(require 'org-bullets)
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(require 'org-bullets)
  (which-key-mode 1)
    (setq which-key-side-window-location 'bottom
    which-key-sort-order #'which-key-key-order-alpha
    which-key-sort-uppercase-first nil
    which-key-add-column-padding 1
    which-key-max-display-columns nil
    which-key-min-display-lines 6
    which-key-side-window-slot -10
    which-key-side-window-max-height 0.25
    which-key-idle-delay 0.8
    which-key-max-description-length 25
    which-key-allow-imprecise-window-fit t
    which-key-separator " → " )

(load-theme 'dracula t)

(set-face-attribute 'default nil
  :font "JetBrainsMonoNL Nerd Font"
  :height 110
  :weight 'medium)
(set-face-attribute 'variable-pitch nil
  :font "JetBrainsMonoNL Nerd Font"
  :height 120
  :weight 'medium)
(set-face-attribute 'fixed-pitch nil
  :font "JetBrainsMonoNL Nerd Font"
  :height 110
  :weight 'medium)
;; Makes commented text and keywords italics.
;; This is working in emacsclient but not emacs.
;; Your font must have an italic face available.
(set-face-attribute 'font-lock-comment-face nil
  :slant 'italic)
(set-face-attribute 'font-lock-keyword-face nil
  :slant 'italic)

;; This sets the default font on all graphical frames created after restarting Emacs.
;; Does the same thing as 'set-face-attribute default' above, but emacsclient fonts
;; are not right unless I also add this method of setting the default font.
(add-to-list 'default-frame-alist '(font . "JetBrainsMonoNL Nerd Font"))

;; Uncomment the following line if line spacing needs adjusting.
(setq-default line-spacing 0.12)
