;;; racket-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "racket-edit" "racket-edit.el" (21742 54868
;;;;;;  409986 413000))
;;; Generated autoloads from racket-edit.el

(add-to-list 'hs-special-modes-alist '(racket-mode "(" ")" ";" nil nil))

;;;***

;;;### (autoloads nil "racket-mode" "racket-mode.el" (21742 54868
;;;;;;  339986 605000))
;;; Generated autoloads from racket-mode.el

(autoload 'racket-mode "racket-mode" "\
Major mode for editing Racket.
\\{racket-mode-map}

\(fn)" t nil)

(setq auto-mode-alist (append '(("\\.rkt\\'" . racket-mode) ("\\.rktd\\'" . racket-mode)) auto-mode-alist))

(add-to-list 'interpreter-mode-alist '("racket" . racket-mode))

;;;***

;;;### (autoloads nil "racket-repl" "racket-repl.el" (21742 54868
;;;;;;  386986 476000))
;;; Generated autoloads from racket-repl.el

(autoload 'racket-repl "racket-repl" "\
Ensure Racket REPL running and visible, without changing `selected-window'.

When the REPL buffer is already visible in a window, use that
window. Otherwise use `(other-window 1)`. Regardless, do NOT
change `selected-window'.

Runs `comint-mode-hook' and `racket-repl-mode-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("racket-collection.el" "racket-common.el"
;;;;;;  "racket-complete.el" "racket-custom.el" "racket-font-lock.el"
;;;;;;  "racket-indent.el" "racket-keywords-and-builtins.el" "racket-make-doc.el"
;;;;;;  "racket-mode-pkg.el" "racket-profile.el" "racket-tests.el"
;;;;;;  "racket-util.el") (21742 54868 428733 95000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; racket-mode-autoloads.el ends here
