;;; init-pivotal.el --- Initialize pivotal mode
;;
;;; Commentary:
;;  Attempt to set the pivotal-api-token from the system environment,
;;  failover to read from ~/.pivotal_api_key file, with matching
;;  format "api: 390PIVOTAL840KEY9832"
;;
;;; Code:

(eval-after-load "pivotal-mode"
  (progn
    (message "Trying to find the Pivotal API key in the shell environment ...")
    (if (functionp 'exec-path-from-shell-getenv)
        (when (or (eq pivotal-api-token nil) (eq pivotal-api-token ""))
          (let ((pivotal-api-key-file "~/.pivotal_api_key")
                (api-token-from-env (exec-path-from-shell-getenv "PIVOTAL_API_KEY")))
            (if (not (equal "" api-token-from-env))
                (progn
                  (message "Setting pivotal-api-token from system environment : %s" api-token-from-env)
                  (setq pivotal-api-token api-token-from-env))
              (progn
                (message "You can automatically set pivotal-api-token from the system environment variable $PIVOTAL_API_KEY")
                (message "looking for %s file" pivotal-api-key-file)
                (if (file-exists-p pivotal-api-key-file)
                    (progn
                      (with-temp-buffer
                        (insert-file-contents pivotal-api-key-file)
                        (goto-char 0)
                        (search-forward-regexp "api: ?\\(.*\\)$")
                        (setq pivotal-api-token (match-string-no-properties 1)))
                      (message "Setting pivotal-api-token from ~/.pivotal_api_key : %s" pivotal-api-token))
                  (message "You can also set the pivotal-api-token automatically by placing it in ~/.pivotal_api_key as 'api: KEY'")))))))))

(provide 'init-pivotal)
;;; init-pivotal.el ends here
