;; Customize stuff...
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(auto-install-save-confirm nil)
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(cua-enable-cua-keys nil)
 '(cua-mode t nil (cua-base))
 '(current-language-environment "UTF-8")
 '(custom-safe-themes t)
 '(display-time-mode nil)
 '(display-time-world-time-format "%A %d %B %R %Z (%z)")
 '(ediff-custom-diff-program "diff")
 '(ediff-diff-program "diff")
 '(ediff-diff3-program "diff3")
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#202020")
 '(fringe-mode 6 nil (fringe))
 '(global-hl-line-mode nil)
 '(indent-tabs-mode nil)
 '(indicate-buffer-boundaries (quote right))
 '(inhibit-startup-screen t)
 '(initial-buffer-choice nil)
 '(initial-scratch-message nil)
 '(ispell-dictionary nil)
 '(js-indent-level 2)
 '(js3-enter-indents-newline t)
 '(js3-indent-level 2)
 '(jshint-configuration-path "~/.jshintrc")
 '(linum-delay nil)
 '(linum-eager t)
 '(linum-format " %7d ")
 '(main-line-separator-style (quote chamfer))
 '(make-backup-files nil)
 '(markdown-command "markdown")
 '(markdown-css-path "markdown.css")
 '(newsticker-url-list (quote (("Hacker News" "https://news.ycombinator.com/rss" nil nil nil) ("Emacs Reddit" "http://www.reddit.com/r/emacs.rss" nil nil nil))))
 '(powerline-color1 "#191919")
 '(powerline-color2 "#111111")
 '(powerline-default-separator (quote chamfer))
 '(powerline-default-separator-dir (quote (left . left)))
 '(safe-local-variable-values (quote ((eval when (fboundp (quote rainbow-mode)) (rainbow-mode 1)) (eval ignore-errors "Write-contents-functions is a buffer-local alternative to before-save-hook" (add-hook (quote write-contents-functions) (lambda nil (delete-trailing-whitespace) nil)) (require (quote whitespace)) "Sometimes the mode needs to be toggled off and on." (whitespace-mode 0) (whitespace-mode 1)) (whitespace-line-column . 80) (whitespace-style face trailing lines-tail) (require-final-newline . t))))
 '(scroll-bar-mode nil)
 '(scss-compile-at-save nil)
 '(send-mail-function (quote sendmail-send-it))
 '(tab-width 2)
 '(tabbar-background-color "grey20")
 '(tabbar-separator (quote (0.2)))
 '(truncate-lines t)
 '(visible-bell t)
 '(whitespace- nil)
 '(window-left-margin 0)
 '(yas-prompt-functions (quote (yas-dropdown-prompt yas/x-prompt yas/completing-prompt yas/ido-prompt yas/no-prompt)))
 '(zoneinfo-style-world-list (quote (("Australia/Sydney" "Sydney") ("Europe/London" "London") ("Thailand/Bangkok" "Bangkok") ("America/Vancouver" "Vancouver") ("America/Los_Angeles" "San Fransisco") ("America/New_York" "New York") ("Asia/Shanghai" "Shanghai") ("Asia/Tokyo" "Tokyo")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t :height 140)))
 '(markdown-header-face ((t (:inherit font-lock-function-name-face :weight bold :family "Helvetica Neue"))))
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :height 2.0))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :height 1.9))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :height 1.8))))
 '(markdown-header-face-4 ((t (:inherit markdown-header-face :height 1.7))))
 '(markdown-header-face-5 ((t (:inherit markdown-header-face :height 1.6))))
 '(markdown-header-face-6 ((t (:inherit markdown-header-face :height 1.5)))))
