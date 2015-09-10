;;; enox-theme.el --- Nox's color theme

;;; Commentary:
;;  Enox is a medium-contrast theme with dark background.

;;; Code:
(deftheme enox
  "Enox theme: a medium-contrast theme with dark background.

In addition to the basic and font-lock faces, faces are provided for
Ace-Jump, Ansi-Color, Auto-Complete, Calfw, Dired, Ediff, Elfeed, ERC,
Eshell, Evil, Flycheck, Flyspell, Git Gutter, Gnus, Guide Key, Helm,
Ido, Isearch, Ledger, Magit, Markdown, Message, Mu4e, Org, Rainbow
Delimiters, Semantic, Smart Mode Line, Smartparens, Speedbar, Undo
Tree, Whitespace, and YASnippet.")

(let* ((class '((class color) (min-colors 89)))
       ;; Enox palette colors
       (nox-red         "#ff0044")
       (nox-yellow      "#b7aa80")
       (nox-green       "#b1d631")
       (nox-cyan        "#5bd0b5")
       (nox-blue        "#93c3d6")
       (nox-purple      "#8b64d3")
       (nox-em          "#ffffff")
       (nox-fg          "#d2e8ed")
       (nox-bg-em       "#adb9c2")
       (nox-fg-subtle   "#434e57")
       (nox-bg-subtle   "#212629")
       (nox-bg          "#1d2124")
       (nox-bg-darkish  "#181c1f")
       (nox-bg-dark     "#16191b")
       (nox-selection   "#456875")
       (nox-selection-2 "#573a7d")
       (nox-special     "#d6b8f5")
       (nox-string      "#8ff0aa")
       (nox-function    "#53D5E9")
       (nox-comment     "#7c98aa")
       (nox-variable    nox-function)
       (nox-constant    nox-blue)
       (nox-link        nox-blue)
       (nox-statement   nox-green)
       (nox-keyword     nox-em)
       (nox-h1          "#ffffff")
       (nox-h2          "#f6edd9")
       (nox-h3          "#e9d9b3")
       (nox-h4          "#d4c499")
       (nox-h5          "#b7aa80"))

  (custom-theme-set-faces
   'enox
   `(default ((,class (:foreground ,nox-fg :background ,nox-bg))))
   `(cursor ((,class (:background ,nox-keyword))))
   `(fringe ((,class (:background ,nox-bg-subtle :foreground ,nox-fg-subtle))))
   `(vertical-border ((,class (:background ,nox-bg :foreground ,nox-bg-dark))))
   ;; Highlighting faces
   `(highlight ((,class (:inverse-video t))))
   `(region ((,class (:background ,nox-selection))))
   `(secondary-selection ((,class (:background ,nox-selection-2))))
   `(hl-line ((,class (:background ,nox-bg-subtle :inverse-video nil))))
   `(isearch ((,class (:foreground ,nox-em :background ,nox-purple))))
   `(lazy-highlight ((,class (:foreground ,nox-em :background ,nox-yellow))))
   `(trailing-whitespace ((,class (:background ,nox-red))))
   `(show-paren-match ((,class (:foreground ,nox-green :weight bold :background ,nox-bg-subtle))))
   `(paren-face ((,class (:foreground ,nox-comment))))
   `(shadow ((,class (:foreground ,nox-fg-subtle))))
   ;; Mode line and header line faces
   `(header-line ((,class (:box nil :background ,nox-bg-dark :foreground ,nox-comment))))
   `(mode-line ((,class (:box ,nox-bg-dark :background ,nox-bg-dark :foreground ,nox-fg))))
   `(mode-line-inactive ((,class (:box ,nox-bg-dark :background ,nox-bg-darkish :foreground ,nox-comment))))
   ;; Custom mode-line faces
   `(mode-line-modified-face ((,class (:foreground ,nox-red))))
   `(mode-line-read-only-face ((,class (:foreground ,nox-blue))))
   `(mode-line-mode-face ((,class (:foreground ,nox-comment))))
   `(mode-line-vc-face ((,class (:foreground ,nox-comment))))
   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:weight bold :foreground ,nox-keyword))))
   `(escape-glyph ((,class (:foreground ,nox-function))))
   `(error ((,class (:background: ,nox-red :foreground ,nox-em))))
   `(warning ((,class (:foreground ,nox-yellow))))
   `(success ((,class (:foreground ,nox-green))))
   `(linum ((,class (:background ,nox-bg-darkish :foreground ,nox-fg-subtle :height 0.85))))
   `(popup-scroll-bar-foreground-face ((,class (:background ,nox-bg-subtle))))
   `(popup-scroll-bar-background-face ((,class (:background ,nox-bg-dark))))
   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,nox-special))))
   `(font-lock-comment-face ((,class (:slant italic :foreground ,nox-comment))))
   `(font-lock-comment-delimiter-face ((,class (:slant italic :foreground ,nox-fg-subtle))))
   `(font-lock-constant-face ((,class (:weight bold :foreground ,nox-constant))))
   `(font-lock-doc-face ((,class (:slant italic :foreground ,nox-string))))
   `(font-lock-function-name-face ((,class (:foreground ,nox-function))))
   `(font-lock-keyword-face ((,class (:weight bold :foreground ,nox-keyword))))
   `(font-lock-negation-char-face ((,class (:weight bold :foreground ,nox-string))))
   `(font-lock-preprocessor-face ((,class (:weight bold :foreground ,nox-comment))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,nox-special))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,nox-variable))))
   `(font-lock-string-face ((,class (:foreground ,nox-string))))
   `(font-lock-type-face ((,class (:foreground ,nox-statement))))
   `(font-lock-variable-name-face ((,class (:foreground ,nox-variable))))
   `(font-lock-warning-face ((,class (:foreground ,nox-yellow))))
   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,nox-blue))))
   `(link-visited ((,class (:underline t :foreground ,nox-special))))
   ;; Custom
   `(custom-state ((,class (:foreground ,nox-function))))
   ;; Evil Mode
   `(evil-ex-substitute-matches ((,class (:foreground ,nox-red :underline t))))
   `(evil-ex-substitute-replacement ((,class (:foreground ,nox-green :underline t))))
   `(evil-ex-info ((,class (:foreground ,nox-yellow))))
   ;; Undo Tree
   `(undo-tree-visualizer-current-face ((,class (:foreground ,nox-green))))
   `(undo-tree-visualizer-register-face ((,class (:foreground ,nox-yellow))))
   `(undo-tree-visualizer-unmodified-face ((,class (:foreground ,nox-blue))))
   ;; YASnippet
   `(yas-field-highlight-face ((,class (:background ,nox-purple :foreground ,nox-em))))
   ;; Smartparens
   `(sp-pair-overlay-face ((,class (:inherit secondary-selection))))
   ;; Dired
   `(dired-directory ((,class (:weight bold :foreground ,nox-link))))
   `(dired-symlink ((,class (:weight normal :foreground ,nox-special))))
   ;; Markdown
   `(markdown-header-delimiter-face ((,class (:weight normal :foreground ,nox-fg-subtle))))
   `(markdown-header-rule-face ((,class (:inherit markdown-header-delimiter-face))))
   `(markdown-header-face-1 ((,class (:inherit org-level-1))))
   `(markdown-inline-code-face ((,class (:inherit org-code))))
   `(markdown-pre-face ((,class (:inherit markdown-inline-code-face))))
   `(markdown-url-face ((,class (:inherit org-link))))
   `(markdown-link-face ((,class (:weight bold :foreground ,nox-blue))))
   `(markdown-italic-face ((,class (:slant italic))))
   ;; Magit
   `(magit-item-highlight ((,class (:background ,nox-bg-subtle))))
   `(magit-log-sha1 ((,class (:foreground ,nox-special))))
   `(magit-log-author ((,class (:foreground ,nox-yellow))))
   `(diff-added ((,class (:background ,nox-green :foreground ,nox-bg-dark))))
   `(diff-removed ((,class (:background ,nox-red :foreground ,nox-em))))
   `(diff-context ((,class (:foreground ,nox-comment))))
   `(diff-hunk-header ((,class (:background ,nox-fg-subtle))))
   `(diff-file-header ((,class (:weight bold :background ,nox-fg-subtle :foreground ,nox-em))))
   ;; Git gutter
   `(git-gutter:added ((,class (:background ,nox-green :foreground ,nox-green))))
   `(git-gutter:deleted ((,class (:background ,nox-red :foreground ,nox-red))))
   `(git-gutter:modified ((,class (:background ,nox-yellow :foreground ,nox-yellow))))
   `(git-gutter:unchanged ((,class (:background ,nox-bg-subtle :foreground ,nox-bg-subtle))))
   ;; Ledger faces
   `(ledger-font-comment-face ((,class (:inherit font-lock-comment-face))))
   `(ledger-font-directive-face ((,class (:weight bold :foreground ,nox-fg-subtle))))
   `(ledger-font-posting-account-face ((,class (:foreground ,nox-constant))))
   `(ledger-font-posting-account-cleared-face ((,class (:foreground ,nox-constant))))
   `(ledger-font-posting-amount-face ((,class (:foreground ,nox-green))))
   `(ledger-font-posting-amount-pending-face ((,class (:foreground ,nox-red))))
   `(ledger-font-posting-amount-cleared-face ((,class (:foreground ,nox-special))))
   `(ledger-font-posting-date-face ((,class (:foreground ,nox-fg-subtle))))
   `(ledger-font-payee-cleared-face ((,class (:foreground ,nox-green))))
   `(ledger-font-payee-pending-face ((,class (:foreground ,nox-special))))
   `(ledger-font-payee-uncleared-face ((,class (:foreground ,nox-yellow))))
   `(ledger-font-periodic-xact-face ((,class (:foreground ,nox-special))))
   `(ledger-font-auto-xact-face ((,class (:foreground ,nox-special))))
   ;; Elfeed faces
   `(elfeed-search-date-face ((,class (:foreground ,nox-comment))))
   `(elfeed-search-title-face ((,class (:foreground ,nox-fg))))
   `(elfeed-search-unread-title-face ((,class (:weight bold :foreground ,nox-blue))))
   `(elfeed-search-feed-face ((,class (:foreground ,nox-yellow))))
   `(elfeed-search-tag-face ((,class (:foreground ,nox-comment))))
   ;; Mu4e faces
   `(mu4e-header-highlight-face ((,class (:background ,nox-bg-subtle))))
   `(mu4e-trashed-face ((,class (:foreground ,nox-fg-subtle :strike-through t))))
   `(mu4e-flagged-face ((,class (:foreground ,nox-yellow))))
   `(mu4e-replied-face ((,class (:foreground ,nox-bg-em))))
   `(mu4e-unread-face ((,class (:foreground ,nox-blue :weight bold))))
   `(mu4e-compose-separator-face ((,class (:foreground ,nox-fg-subtle :slant italic))))
   ;; Calfw faces
   `(cfw:face-grid ((,class (:foreground ,nox-fg-subtle))))
   `(cfw:face-toolbar ((,class (:foreground ,nox-bg-subtle :background ,nox-bg-dark))))
   `(cfw:face-toolbar-button-off ((,class (:foreground ,nox-comment :background ,nox-bg-dark))))
   `(cfw:face-toolbar-button-on ((,class (:foreground ,nox-em :background ,nox-selection))))
   `(cfw:face-select ((,class (:foreground ,nox-em :background ,nox-selection))))
   `(cfw:face-disable ((,class (:foreground ,nox-fg-subtle))))
   `(cfw:face-header ((,class (:foreground ,nox-yellow :weight bold))))
   `(cfw:face-saturday ((,class (:foreground ,nox-yellow))))
   `(cfw:face-sunday ((,class (:inherit cfw:face-saturday))))
   `(cfw:face-holiday ((,class (:foreground ,nox-special))))
   `(cfw:face-today ((,class (:foreground ,nox-green :background ,nox-bg-subtle))))
   `(cfw:face-today-title ((,class (:foreground ,nox-green :background ,nox-selection-2))))
   `(cfw:face-title ((,class (:foreground ,nox-yellow :height 2.0))))
   ;; Ido faces
   `(ido-first-match ((,class (:weight bold :foreground ,nox-em))))
   `(ido-only-match ((,class (:weight bold :foreground ,nox-green))))
   `(ido-subdir ((,class (:weight bold :foreground ,nox-link))))
   `(ido-indicator ((,class (:weight bold :foreground ,nox-constant))))
   `(ido-incomplete-regexp ((,class (:weight bold :foreground ,nox-string))))
   ;; Helm
   `(helm-action ((,class (:foreground ,nox-fg))))
   `(helm-selection ((,class (:weight bold :foreground ,nox-green))))
   `(helm-match ((,class (:underline t :foreground ,nox-em :background ,nox-bg))))
   `(helm-source-header ((,class (:background ,nox-bg-darkish))))
   `(helm-header ((,class (:foreground ,nox-fg-subtle :background ,nox-bg))))
   `(helm-candidate-number ((,class (:foreground ,nox-fg :background ,nox-bg-subtle))))
   `(helm-separator ((,class (:foreground ,nox-fg-subtle))))
   `(helm-ff-directory ((,class (:weight bold :foreground ,nox-link :background ,nox-bg))))
   `(helm-ff-executable ((,class (:foreground ,nox-string))))
   `(helm-ff-file ((,class (:foreground ,nox-fg))))
   `(helm-ff-symlink ((,class (:foreground ,nox-special))))
   `(helm-ff-prefix ((,class (:weight bold :foreground ,nox-fg))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,nox-em :background ,nox-red))))
   `(helm-ff-history-deleted ((,class (:foreground ,nox-em :background ,nox-red))))
   `(helm-buffer-not-saved ((,class (:foreground ,nox-string))))
   `(helm-buffer-size ((,class (:foreground ,nox-comment))))
   `(helm-buffer-process ((,class (:foreground ,nox-special))))
   `(helm-buffer-saved-out ((,class (:foreground ,nox-red))))
   `(helm-lisp-completion-info ((,class (:foreground ,nox-comment))))
   `(helm-lisp-show-completion ((,class (:foreground ,nox-fg))))
   `(helm-grep-running ((,class (:foreground ,nox-red))))
   `(helm-grep-file ((,class (:foreground ,nox-special))))
   `(helm-grep-finish ((,class (:foreground ,nox-green))))
   `(helm-grep-lineno ((,class (:foreground ,nox-yellow))))
   `(helm-grep-match ((,class (:inherit isearch))))
   ;; TODO: this is super incomplete, e.g., bookmarks
   ;; Speedbar
   `(speedbar-button-face ((,class (:foreground ,nox-comment))))
   `(speedbar-directory-face ((,class (:weight bold :foreground ,nox-link))))
   `(speedbar-file-face ((,class (:foreground ,nox-fg))))
   `(speedbar-selected-face ((,class (:underline nil :weight bold :foreground ,nox-em))))
   `(speedbar-separator-face ((,class (:foreground ,nox-comment :background ,nox-bg-subtle))))
   `(speedbar-tag-face ((,class (:foreground ,nox-yellow))))
   ;; Whitespace mode
   `(whitespace-tab ((,class (:foreground ,nox-fg-subtle :background ,nox-bg))))
   `(whitespace-space ((,class (:foreground ,nox-fg-subtle :background ,nox-bg))))
   `(whitespace-line ((,class (:foreground ,nox-special :background ,nox-bg-subtle))))
   `(whitespace-newline ((,class (:foreground ,nox-fg-subtle))))
   `(whitespace-space-after-tab ((,class (:foreground ,nox-em :background ,nox-red))))
   `(whitespace-space-before-tab ((,class (:foreground ,nox-em :background ,nox-red))))
   `(whitespace-trailing ((,class (:foreground ,nox-em :background ,nox-red))))
   `(whitespace-indentation ((,class (:foreground ,nox-em :background ,nox-yellow))))
   `(whitespace-empty ((,class (:foreground ,nox-em :background ,nox-red))))
   ;; Term colors
   `(term-color-yellow ((,class (:foreground ,nox-yellow :background ,nox-yellow))))
   `(term-color-green ((,class (:foreground ,nox-green :background ,nox-green))))
   `(term-color-blue ((,class (:foreground ,nox-blue :background ,nox-blue))))
   `(term-color-cyan ((,class (:foreground ,nox-cyan :background ,nox-cyan))))
   `(term-color-red ((,class (:foreground ,nox-red :background ,nox-red))))
   `(term-color-white ((,class (:foreground ,nox-em :background ,nox-fg))))
   `(term-color-black ((,class (:foreground ,nox-fg-subtle :background ,nox-bg-dark))))
   `(term-color-magenta ((,class (:foreground ,nox-special :background ,nox-purple))))
   `(term-default-bg-color ((,class (:background ,nox-bg))))
   `(term-default-fg-color ((,class (:foreground ,nox-fg))))
   ;; Guide Key
   `(guide-key/key-face ((,class (:foreground ,nox-fg-subtle))))
   `(guide-key/highlight-command-face ((,class (:weight bold :foreground ,nox-em))))
   `(guide-key/prefix-command-face ((,class (:weight bold :foreground ,nox-green))))
   ;; ERC
   `(erc-action-face ((,class (:weight bold :foreground ,nox-special))))
   `(erc-current-nick-face ((,class (:weight bold :foreground ,nox-green))))
   `(erc-dangerous-host-face ((,class (:weight bold :foreground ,nox-red))))
   `(erc-direct-msg-face ((,class (:weight bold :foreground ,nox-string))))
   `(erc-nick-msg-face ((,class (:weight bold :foreground ,nox-special))))
   `(erc-error-face ((,class (:foreground ,nox-red))))
   `(erc-nick-default-face ((,class (:weight bold :foreground ,nox-em))))
   `(erc-notice-face ((,class (:weight normal :slant italic :foreground ,nox-comment))))
   `(erc-prompt-face ((,class (:weight bold :foreground ,nox-bg-dark :background ,nox-bg-em))))
   `(erc-timestamp-face ((,class (:weight bold :foreground ,nox-statement))))
   `(erc-input-face ((,class (:foreground ,nox-blue))))
   `(erc-keyword-face ((,class (:weight bold :foreground ,nox-yellow))))
   ;; Auto-complete
   `(ac-completion-face ((,class (:underline t :foreground ,nox-comment))))
   `(ac-candidate-face ((,class (:background ,nox-bg-dark :foreground ,nox-fg))))
   `(ac-selection-face ((,class (:background ,nox-selection :foreground ,nox-em))))
   `(ac-yasnippet-candidate-face ((,class (:background ,nox-yellow :foreground ,nox-bg-dark))))
   `(ac-yasnippet-selection-face ((,class (:background ,nox-function :foreground ,nox-bg-dark))))
   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:weight bold :foreground ,nox-string))))
   `(gnus-group-news-1-low ((,class (:foreground ,nox-string))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground ,nox-keyword))))
   `(gnus-group-news-2-low ((,class (:foreground ,nox-keyword))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground ,nox-function))))
   `(gnus-group-news-3-low ((,class (:foreground ,nox-function))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground ,nox-blue))))
   `(gnus-group-news-4-low ((,class (:foreground ,nox-blue))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground ,nox-yellow))))
   `(gnus-group-news-5-low ((,class (:foreground ,nox-yellow))))
   `(gnus-group-news-low ((,class (:foreground ,nox-bg-em))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground ,nox-string))))
   `(gnus-group-mail-1-low ((,class (:foreground ,nox-string))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground ,nox-keyword))))
   `(gnus-group-mail-2-low ((,class (:foreground ,nox-keyword))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground ,nox-yellow))))
   `(gnus-group-mail-3-low ((,class (:foreground ,nox-yellow))))
   `(gnus-group-mail-low ((,class (:foreground ,nox-bg-em))))
   `(gnus-header-content ((,class (:foreground ,nox-comment))))
   `(gnus-header-from ((,class (:weight bold :foreground ,nox-constant))))
   `(gnus-header-subject ((,class (:foreground ,nox-function))))
   `(gnus-header-name ((,class (:foreground ,nox-keyword))))
   `(gnus-header-newsgroups ((,class (:foreground ,nox-bg-em))))
   ;; Message faces
   `(message-header-name ((,class (:foreground ,nox-keyword))))
   `(message-header-cc ((,class (:foreground ,nox-constant))))
   `(message-header-other ((,class (:foreground ,nox-comment))))
   `(message-header-subject ((,class (:foreground ,nox-function))))
   `(message-header-to ((,class (:weight bold :foreground ,nox-constant))))
   `(message-cited-text ((,class (:slant italic :foreground ,nox-comment))))
   `(message-separator ((,class (:weight bold :foreground ,nox-em))))
   ;; SMerge
   `(smerge-refined-change ((,class (:background ,nox-special))))
   ;; Ediff
   `(ediff-current-diff-A ((,class (:background ,nox-green))))
   `(ediff-fine-diff-A ((,class (:weight bold :background ,nox-green))))
   `(ediff-current-diff-B ((,class (:background ,nox-yellow))))
   `(ediff-fine-diff-B ((,class (:weight bold :background ,nox-yellow))))
   `(ediff-current-diff-C ((,class (:background ,nox-blue))))
   `(ediff-fine-diff-C ((,class (:weight bold :background ,nox-blue))))
   ;; Eshell
   `(eshell-prompt ((,class (:weight bold :foreground ,nox-keyword))))
   `(eshell-ls-archive ((,class (:weight bold :foreground ,nox-string))))
   `(eshell-ls-backup ((,class (:weight bold :slant italic :foreground ,nox-string))))
   `(eshell-ls-clutter ((,class (:slant italic :foreground ,nox-red))))
   `(eshell-ls-executable ((,class (:foreground ,nox-function))))
   `(eshell-ls-missing ((,class (:foreground ,nox-red))))
   `(eshell-ls-product ((,class (:foreground ,nox-comment))))
   `(eshell-ls-readonly ((,class (:foreground ,nox-blue))))
   `(eshell-ls-special ((,class (:weight bold :foreground ,nox-special))))
   `(eshell-ls-symlink ((,class (:foreground ,nox-special))))
   `(eshell-ls-unreadable ((,class (:slant italic :foreground ,nox-comment))))
   ;; Flycheck
   `(flycheck-warning ((,class (:underline (:style wave :color ,nox-yellow)))))
   `(flycheck-fringe-warning ((,class (:foreground ,nox-yellow))))
   `(flycheck-error ((,class (:underline (:style wave :color ,nox-string)))))
   `(flycheck-fringe-error ((,class (:foreground ,nox-red))))
   ;; Flyspell
   `(flyspell-duplicate ((,class (:inherit nil :underline (:style wave :color ,nox-yellow)))))
   `(flyspell-incorrect ((,class (:inherit nil :underline (:style wave :color ,nox-red)))))
   ;; Ace-jump-mode
   `(ace-jump-face-foreground ((,class (:foreground ,nox-green))))
   `(ace-jump-face-background ((,class (:foreground ,nox-comment))))
   ;; Smart Mode Line
   `(sml/charging ((,class (:foreground ,nox-green))))
   `(sml/client ((,class (:foreground ,nox-special))))
   `(sml/col-number ((,class (:foreground ,nox-fg))))
   `(sml/discharging ((,class (:foreground ,nox-string))))
   `(sml/filename ((,class (:weight bold :foreground ,nox-em))))
   `(sml/folder ((,class (:foreground ,nox-comment))))
   `(sml/git ((,class (:weight bold :foreground ,nox-blue))))
   `(sml/global ((,class (:foreground ,nox-comment))))
   `(sml/line-number ((,class (:foreground ,nox-yellow))))
   `(sml/modes ((,class (:foreground ,nox-em))))
   `(sml/modified ((,class (:foreground ,nox-string))))
   `(sml/mule-info ((,class (:foreground ,nox-special))))
   `(sml/not-modified ((,class (:foreground ,nox-comment))))
   `(sml/numbers-separator ((,class (:foreground ,nox-comment))))
   `(sml/outside-modified ((,class (:background ,nox-red :foreground ,nox-em))))
   `(sml/position-percentage ((,class (:foreground ,nox-yellow))))
   `(sml/prefix ((,class (:weight bold :foreground ,nox-green))))
   `(sml/process ((,class (:weight bold :foreground ,nox-green))))
   `(sml/read-only ((,class (:foreground ,nox-blue))))
   `(sml/sudo ((,class (:background ,nox-red :foreground ,nox-em))))
   `(sml/time ((,class (:foreground ,nox-fg))))
   `(sml/vc ((,class (:foreground ,nox-blue))))
   `(sml/vc-edited ((,class (:foreground ,nox-string))))
   `(sml/warning ((,class (:weight bold :foreground ,nox-string))))
   ;; My custom mode line stuff
   `(mode-line-read-only-face ((,class (:foreground ,nox-blue))))
   `(mode-line-modified-face ((,class (:foreground ,nox-red))))
   `(mode-line-directory-face ((,class (:foreground ,nox-link))))
   `(mode-line-filename-face ((,class (:weight bold :foreground ,nox-em))))
   `(mode-line-position-face ((,class (:foreground ,nox-fg))))
   `(mode-line-mode-face ((,class (:foreground ,nox-em))))
   `(mode-line-minor-mode-face ((,class (:foreground ,nox-fg-subtle))))
   `(mode-line-process-face ((,class (:foreground ,nox-green))))
   ;; Org-mode
   `(org-agenda-column-dateline ((,class (:weight bold :foreground ,nox-em))))
   `(org-agenda-date ((,class (:weight bold :foreground ,nox-comment :background unspecified :box nil))))
   `(org-agenda-date-today ((,class (:weight bold :foreground ,nox-em :background ,nox-bg-subtle))))
   `(org-agenda-date-weekend ((,class (:weight bold :foreground ,nox-comment :underline ,nox-comment))))
   `(org-agenda-diary ((,class (:foreground ,nox-comment))))
   `(org-agenda-done ((,class (:slant normal :foreground ,nox-fg-subtle :strike-through t))))
   `(org-agenda-structure ((,class (:weight bold :foreground ,nox-statement))))
   `(org-time-grid ((,class (:foreground ,nox-fg-subtle))))
   `(org-document-info ((,class (:foreground ,nox-comment))))
   `(org-document-info-keyword ((,class (:foreground ,nox-comment))))
   `(org-document-title ((,class (:weight bold :foreground ,nox-statement))))
   `(org-special-keyword ((,class (:foreground ,nox-comment))))
   `(org-tag ((,class (:slant italic :weight normal :foreground ,nox-comment))))
   `(org-code ((,class (:foreground ,nox-yellow))))
   `(org-verbatim ((,class (:foreground ,nox-special))))
   `(org-warning ((,class (:slant italic :weight bold :foreground ,nox-em))))
   `(org-scheduled ((,class (:weight normal :foreground ,nox-function))))
   `(org-scheduled-today ((,class (:weight bold :foreground ,nox-function))))
   `(org-scheduled-previously ((,class (:slant italic :weight bold :foreground ,nox-function))))
   `(org-upcoming-deadline ((,class (:weight bold :foreground ,nox-em))))
   `(org-meta-line ((,class (:foreground ,nox-fg-subtle))))
   `(org-block ((,class (:foreground ,nox-comment))))
   `(org-block-background ((,class (:background ,nox-bg-subtle))))
   `(org-ellipsis ((,class (:foreground ,nox-fg-subtle))))
   `(org-todo ((,class (:weight bold :foreground ,nox-red))))
   `(org-done ((,class (:weight bold :foreground ,nox-comment))))
   `(org-priority ((,class (:weight normal :foreground ,nox-comment))))
   `(org-table ((,class (:foreground ,nox-fg :background ,nox-bg-subtle))))
   `(org-checkbox ((,class (:foreground ,nox-comment :background ,nox-bg-subtle))))
   `(org-date ((,class (:underline ,nox-special :foreground ,nox-special))))
   `(org-sexp-date ((,class (:foreground ,nox-special))))
   `(org-link ((,class (:underline ,nox-link :foreground ,nox-link))))
   `(org-level-1 ((,class (:weight bold :foreground ,nox-h1 :background nil))))
   `(org-level-2 ((,class (:weight bold :foreground ,nox-h2 :background nil))))
   `(org-level-3 ((,class (:weight bold :foreground ,nox-h3 :background nil))))
   `(org-level-4 ((,class (:weight bold :foreground ,nox-h4 :background nil))))
   `(org-level-5 ((,class (:weight bold :foreground ,nox-h5 :background nil))))
   `(org-level-6 ((,class (:weight bold :foreground ,nox-h2 :background nil))))
   `(org-level-7 ((,class (:weight bold :foreground ,nox-h3 :background nil))))
   `(org-level-8 ((,class (:weight bold :foreground ,nox-h4 :background nil))))
   `(org-habit-overdue-face ((,class (:background ,nox-red :foreground ,nox-em))))
   `(org-habit-overdue-future-face ((,class (:background ,nox-bg-subtle))))
   `(org-habit-alert-face ((,class (:background ,nox-yellow :foreground ,nox-bg-dark))))
   `(org-habit-alert-future-face ((,class (:background ,nox-yellow))))
   `(org-habit-clear-face ((,class (:background ,nox-bg-subtle :foreground ,nox-green))))
   `(org-habit-clear-future-face ((,class (:background ,nox-bg-subtle))))
   `(org-habit-ready-face ((,class (:background ,nox-green :foreground ,nox-bg-dark))))
   ;; Web Mode
   `(web-mode-html-tag-face ((,class (:foreground ,nox-statement :weight bold))))
   `(web-mode-html-tag-bracket-face ((,class (:foreground ,nox-statement))))
   `(web-mode-html-attr-name-face ((,class (:inherit web-mode-html-tag-bracket-face))))
   ;; Rainbow Delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:inherit paren-face))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,nox-special))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,nox-yellow))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,nox-blue))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,nox-string))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,nox-cyan))))
   `(rainbow-delimiters-unmatched-face ((,class (:background ,nox-red :foreground ,nox-em))))
   ;; Semantic faces
   `(semantic-decoration-on-includes ((,class (:underline ,nox-statement))))
   `(semantic-decoration-on-private-members-face
     ((,class (:background ,nox-bg-subtle))))
   `(semantic-decoration-on-protected-members-face
     ((,class (:background ,nox-bg-subtle))))
   `(semantic-decoration-on-unknown-includes
     ((,class (:background ,nox-red))))
   `(semantic-decoration-on-unparsed-includes
     ((,class (:underline ,nox-comment))))
   `(semantic-tag-boundary-face ((,class (:overline ,nox-yellow))))
   `(semantic-unmatched-syntax-face ((,class (:underline ,nox-red)))))

  (custom-theme-set-variables
   'enox
   ;; Set ansi-term colors
   `(ansi-term-color-vector
     [term term-color-black term-color-red term-color-green term-color-yellow
           term-color-blue term-color-magenta term-color-cyan term-color-white])))

;; For use with package.el
;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'enox)

;;; enox-theme.el ends here
