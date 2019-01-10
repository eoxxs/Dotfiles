;; Keyboard and shortcuts

;; Mac specific
(when (eq system-type 'darwin)
	(setq mac-option-modifier 'meta)
	;; (setq mac-command-modifier 'none)
  (setq mac-right-option-modifier 'none))

(setq key-chord-two-keys-delay 0.35)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-define evil-insert-state-map "$1" "(")
(key-chord-define evil-insert-state-map "$2" "[")
(key-chord-define evil-insert-state-map "$3" "{")
(key-chord-mode 1)

;; Use counsel for better fuzzy command find
(global-set-key (kbd "M-x") 'counsel-M-x)

;; Fuzzy search everywhere
(evil-leader/set-leader ",")
(evil-leader/set-key
  "d" 'counsel-projectile
  "f" 'counsel-recentf
  "s" 'ivy-switch-buffer
  "y" 'counsel-find-file
  "p" 'projectile-switch-project
  "a" 'counsel-projectile-rg
  "q" 'evil-quit
  "w" 'save-buffer
  "t" 'neotree-toggle
  ",w" 'avy-goto-word-1
  ",b" 'avy-goto-word-1-above
  "e" 'emojify-insert-emoji
  "g" 'magit)

;; Space for search
(define-key evil-normal-state-map (kbd "SPC") 'counsel-grep-or-swiper)

;; Neotree
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)

;; Move around between windows
(define-key evil-normal-state-map (kbd "C-h") #'evil-window-left)
(define-key evil-normal-state-map (kbd "C-j") #'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") #'evil-window-up)
(define-key evil-normal-state-map (kbd "C-l") #'evil-window-right)

