;; init --- ocodo's emacs config
;;; Commentary:
;;                       _                                             _       _
;;    ___   ___ ___   __| | ___     ___ _ __ ___   __ _  ___ ___    __| | ___ | |_
;;   / _ \ / __/ _ \ / _` |/ _ \   / _ \ '_ ` _ \ / _` |/ __/ __|  / _` |/ _ \| __|
;;  | (_) | (_| (_) | (_| | (_) | |  __/ | | | | | (_| | (__\__ \ | (_| | (_) | |_
;;   \___/ \___\___/ \__,_|\___/   \___|_| |_| |_|\__,_|\___|___/  \__,_|\___/ \__|
;;
;;; Code:
;; (package-initialize)

;; 512 byte garbage collection limit
(setq gc-cons-threshold 512)

(let ((default-directory user-emacs-directory))
  (add-to-list 'load-path (expand-file-name "init-helpers")))

;; Append .0 to Emacs version if it doesn't contain the last version point
;; This is specifically for Termux at the moment.
(when (eq 2 (length (split-string emacs-version "[.]")))
  (setq emacs-version (format "%s.0" emacs-version)))

(setq confirm-kill-emacs 'y-or-n-p)

(load-library "init-helpers")
(init-set-custom)
(manage-toolbar-and-menubar)
(manage-history)
(set-window-system-font)
(setq debug-on-error nil)
(setq frame-title-format '("%b %I %+%@%t%Z %m %n %e"))

(let ((default-directory user-emacs-directory))
  (normal-top-level-add-subdirs-to-load-path))

(require 'elpa-init)

;; Explicit Requires ...
(dolist (lib '(handy-functions
               custom-keys
               ag
               diff-region
               highlight-indentation
               kurecolor
               teletype-text
               iedit
               js2-refactor
               kill-buffer-without-confirm
               mac-frame-adjust
               multiple-cursors
               resize-window
               scroll-bell-fix
               squeeze-view
               switch-window
               xterm-256-to-hex
               text-transformers
               make-yasnippet-from-region
               markdown-extras-ocodo
               memory-values
               super-hydras
               zappers
               html-entity-helper
               emoji-cheatsheet
               tr
               kbd-gfm
               packages-outdated-packages
               date-thing
               ibm-box-drawing-hydra
               ))
  (require lib))

(dolist (use-file
         (directory-files (ocodo-active-config-directory)))
  (load-use-file use-file))

;; ;; When GUI (hopefully svg is available!)
;; ;; Load an SVG Modeline
;; (when (image-type-available-p 'svg)
;;   (smt/enable)
;;   (require 'ocodo-svg-modelines)
;;   (ocodo-svg-modelines-init)
;;   (smt/set-theme 'ocodo-mesh-retro-aqua-smt))

;; (require 'amitp-mode-line)
;; (amitp-mode-line)

;; This is set by some packages erroneously. (e.g. AsciiDoc)
;; send fix patches to package authors who do this.
(setq debug-on-error nil)

(load-local-init)

;; Optional init modes (for example those which contain security
;; keys/tokens) - These files are added to .gitignore and only loaded
;; when present.
;; (mapcar 'load-optional-use-file '( ... list of optionals ... ))

;;; init.el ends here
