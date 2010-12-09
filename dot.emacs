(add-to-list 'load-path "~/.emacs.d/modes")

; turn off menubar
(menu-bar-mode 0)

; show region currently marked
(transient-mark-mode t)

; load ruby mode
(add-to-list 'auto-mode-alist '(".rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '(".rhtml$" . html-mode))


; load compile mode, for smarter compiling (ie, for ruby)
(autoload 'mode-compile "mode-compile" "Copile based on major mode" t)
(global-set-key "\C-cc" 'mode-compile)
(autoload 'mode-compile-kill "mode-compile" "Kill a compile by compile-mode" t)
(global-set-key "\C-ck" 'mode-compile-kill)

; load modes for editing dotfile repo
;   zsh
(add-to-list 'auto-mode-alist '("dot.zshrc$" . shell-script-mode))
;   emacs
(add-to-list 'auto-mode-alist '("dot.emacs$" . emacs-lisp-mode))

; load support for org-mode
(add-to-list 'auto-mode-alist '(".org$" . org-mode))