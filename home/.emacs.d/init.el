(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("88f7ee5594021c60a4a6a1c275614103de8c1435d6d08cc58882f920e0cec65e" "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a" "dccf4a8f1aaf5f24d2ab63af1aa75fd9d535c83377f8e26380162e888be0c6a9" "3de5c795291a145452aeb961b1151e63ef1cb9565e3cdbd10521582b5fd02e9a" "e4a702e262c3e3501dfe25091621fe12cd63c7845221687e36a79e17cf3a67e0" "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350" "fa7caecc85dd0aaf60d4f74e42300a1a69f32efbad61fbd3ca26d0dcf6dfedd5" "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" "75b2a02e1e0313742f548d43003fcdc45106553af7283fb5fad74359e07fe0e2" "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098" "631c52620e2953e744f2b56d102eae503017047fb43d65ce028e88ef5846ea3b" "3cdd0a96236a9db4e903c01cb45c0c111eb1492313a65790adb894f9f1a33b2d" "7c7026a406042e060bce2b56c77d715c3a4e608c31579d336cb825b09e60e827" "f25f174e4e3dbccfcb468b8123454b3c61ba94a7ae0a870905141b050ad94b8f" default))
 '(package-selected-packages
   '(doom-modeline flycheck-pyflakes helpful haskell-mode ripgrep persp-mode ewal-doom-themes websocket restclient-jq org-download vterm dired-ranger restclient image-dired+ diff-hl git-gutter+ git-gutter magit doom-themes nordic-night-theme harpoon bm dired-subtree centered-window all-the-icons-dired all-the-icons diredfl evil-snipe rainbow-mode neotree beacon anzu evil-easymotion flycheck-pycheckers flycheck tree-sitter-langs tree-sitter ivy-rich counsel ivy sudo-edit key-chord which-key org-bullets toc-org general evil-collection evil)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(diredfl-compressed-file-name ((t (:foreground "#B48EAD"))))
;;  '(diredfl-compressed-file-suffix ((t (:foreground "#B48EAD"))))
;;  '(diredfl-deletion ((t (:foreground "#BF616A"))))
;;  '(diredfl-deletion-file-name ((t (:foreground "#BF616A"))))
;;  '(diredfl-device ((t (:foreground "#EBCB8B"))))
;;  '(diredfl-dir-heading ((t (:foreground "#8FBCBB"))))
;;  '(diredfl-dir-name ((t (:foreground "#5E81AC"))))
;;  '(diredfl-exec-priv ((t (:foreground "#A3BE8C"))))
;;  '(diredfl-executable-tag ((t (:foreground "#A3BE8C"))))
;;  '(diredfl-file-name ((t (:foreground "white"))))
;;  '(diredfl-file-suffix ((t (:foreground "#D8DEE9"))))
;;  '(diredfl-flag-mark ((t (:foreground "#EBCB8B"))))
;;  '(diredfl-flag-mark-line ((t (:background "#EBCB8B" :foreground "#434C5E"))))
;;  '(diredfl-ignored-file-name ((t (:foreground "light gray"))))
;;  '(diredfl-no-priv ((t (:foreground "#88C0D0"))))
;;  '(diredfl-number ((t (:foreground "#EBCB8B"))))
;;  '(diredfl-other-priv ((t (:foreground "#81A1C1"))))
;;  '(diredfl-rare-priv ((t (:foreground "#81A1C1"))))
;;  '(diredfl-read-priv ((t (:foreground "#5E81AC"))))
;;  '(diredfl-sock-priv ((t (:foreground "#B48EAD"))))
;;  '(diredfl-special ((t (:foreground "#EBCB8B"))))
;;  '(diredfl-symlink ((t (:foreground "#88C0D0"))))
;;  '(diredfl-write-priv ((t (:foreground "#5E81AC"))))
;;  '(fringe ((t (:background "#282a36")))))

(set-frame-parameter nil 'alpha-background 90)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
