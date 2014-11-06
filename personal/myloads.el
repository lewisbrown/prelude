(require 'linum)
(require 'dired+)
(require 'dired-details+)
(require 'page-break-lines)
(require 'desktop)
(require 'nav)
(require 'perspective)


(persp-mode)
(require 'persp-projectile)

(setq global-page-break-lines-mode t)

(desktop-save-mode 1)


(setq custom-file "~/.emacs.d/personal/custom.el")
(load custom-file)


;(require 'dired-toggle)
;(global-set-key (kbd "<f5>") 'dired-toggle)
(add-hook 'dired-toggle-mode-hook
          (lambda () (interactive)
            (visual-line-mode 1)
            (setq-local visual-line-fringe-indicators '(nil right-curly-arrow))
            (setq-local word-wrap nil)))
