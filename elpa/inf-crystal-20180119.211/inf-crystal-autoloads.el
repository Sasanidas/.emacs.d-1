;;; inf-crystal-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "inf-crystal" "inf-crystal.el" (0 0 0 0))
;;; Generated autoloads from inf-crystal.el

(autoload 'inf-crystal "inf-crystal" "\
Launch a crystal interpreter in a buffer.
using `inf-crystal-interpreter'as an inferior mode.

Argument CMD defaults to `inf-crystal-interpreter'.
When called interactively with `prefix-arg', it allows
the user to edit such value.

\(fn CMD)" t nil)

(defalias 'run-crystal 'inf-crystal)

(autoload 'inf-crystal-minor-mode "inf-crystal" "\
Minor mode for interacting with the inferior process buffer.

The following commands are available:

\\{inf-crystal-minor-mode-map}

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "inf-crystal" '("inf-crystal-" "crystal-send-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; inf-crystal-autoloads.el ends here
