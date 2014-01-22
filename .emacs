;; EQC Emacs Mode -- Configuration Start
(add-to-list 'load-path "/usr/local/lib/erlang/lib/eqc-1.26.2/emacs/")
(autoload 'eqc-erlang-mode-hook "eqc-ext" "EQC Mode" t)
(add-hook 'erlang-mode-hook 'eqc-erlang-mode-hook)
(setq eqc-max-menu-length 30)
(setq eqc-root-dir "/usr/local/lib/erlang/lib/eqc-1.26.2")
;; EQC Emacs Mode -- Configuration End

;; setup erlang mode
(setq erlang-root-dir "/Users/alex/erlangs/current")
(setq erlang-lib-dir (concat erlang-root-dir "/lib/erlang/lib"))

(setq load-path 
      (cons (concat erlang-lib-dir 
		    "/"  
		    (car (directory-files erlang-lib-dir nil "^tools\-")) 
		    "/emacs" )
      load-path))
(setq exec-path (cons (concat erlang-root-dir "/" "bin") exec-path))
(require 'erlang-start)
(require 'erlang-flymake)

;; load dtl files in html-mode
(add-to-list 'auto-mode-alist '("\\.dtl\\'" . html-mode))

;; no tabs
(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)

;; 4 space indent
(setq c-basic-offset 4)

;; js2-mode (for javascript editing)
(setq load-path (cons "/Users/alex/emacs" load-path))
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; disable annoying bounce-indent (-> tab means 'put in the right place')
(setq js2-bounce-indent-flag nil)

;; disable annoying auto-closing of parens/braces/etc.
(setq js2-mirror-mode nil)

;; disable annoying auto-escaping of quotes inside strings
(setq js2-mode-escape-quotes nil)

;; Espresso JS-mode
(autoload #'espresso-mode "espresso" "Start espresso-mode" t)
(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))

;; Erlang binary-syntax macros
;; C-, == <<"
;; C-. == ">>
(fset 'erlang-binary-start "<<\"")
(global-set-key (kbd "C-,") 'erlang-binary-start)
(fset 'erlang-binary-end "\">>")
(global-set-key (kbd "C-.") 'erlang-binary-end)

(setenv "PATH" (concat "/usr/local/smlnj/bin:" (getenv "PATH")))
(setq exec-path (cons "/usr/local/smlnj/bin" exec-path))

(setenv "MITSCHEME_LIBRARY_PATH"
            "/Applications/mit-scheme.app/Contents/Resources")
