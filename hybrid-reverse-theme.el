;;; hybrid-reverse-theme.el --- Emacs theme with material color scheme -*- lexical-binding: t; -*-

;; Author: Riyyi
;; URL: https://github.com/riyyi/emacs-hybrid-reverse
;; Version: 0.1.0
;; Package-Requires: ((emacs "24.1"))
;; Keywords: faces, theme

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Material color scheme based on Hybrid Reverse for Vim.
;;
;; Supported packages:
;; - ace-window
;; - auto-complete
;; - avy
;; - centaur-tabs
;; - column-enforce-mode
;; - company-mode
;; - dashboard
;; - deft
;; - doom-modeline
;; - elfeed
;; - evil
;; - flycheck
;; - ido-vertical-mode
;; - linum-relative
;; - lsp-ui
;; - magit
;; - mu4e
;; - neotree
;; - org-roam
;; - paradox
;; - php-mode
;; - popup
;; - powerline
;; - powerline-evil
;; - rainbow-delimiters
;; - selectrum
;; - smart-mode-line
;; - spaceline
;; - switch-window
;; - telephone-line
;; - transient
;; - treemacs
;; - which-key
;; - winum
;;
;; Supported defaults:
;; - custom (M-x customize)
;; - dired
;; - display-line-numbers-mode
;; - font-lock-mode
;; - ido-mode
;; - info
;; - isearch
;; - linum-mode
;; - man
;; - message-mode
;; - mode-line
;; - org-mode*
;; - outline-mode
;; - shell-script-mode
;; - show-paren-mode
;; - tab-bar-mode
;; - tab-line-mode
;; - term
;; - tty-menu
;; - whitespace-mode

;;; References:

;; Awesome Emacs
;;   https://github.com/emacs-tw/awesome-emacs
;; GNU Emacs
;;   https://www.gnu.org/software/emacs/manual/html_node/emacs/Custom-Themes.html
;;   https://www.gnu.org/software/emacs/manual/html_node/emacs/Creating-Custom-Themes.html
;;   https://www.gnu.org/software/emacs/manual/html_node/emacs/Faces.html
;;   https://www.gnu.org/software/emacs/manual/html_node/emacs/Standard-Faces.html
;;   https://www.gnu.org/software/emacs/manual/html_node/emacs/Face-Customization.html
;;   https://www.gnu.org/software/emacs/manual/html_node/elisp/Face-Attributes.html
;;   https://www.gnu.org/software/emacs/manual/html_node/elisp/Faces-for-Font-Lock.html
;;   https://www.gnu.org/software/emacs/manual/html_node/elisp/Display-Feature-Testing.html

;;; Code:

(when (version< emacs-version "24.1")
  (error "Hybrid Reverse theme requires Emacs 24.1 or later!"))

(deftheme hybrid-reverse "The Hybrid Reverse color theme")

(defgroup hybrid-reverse nil
  "Hybrid Reverse theme."
  :group 'faces)

;;; Color Palette

(let ((_class '((class color) (min-colors 89)))
	  (hr-white      "#ffffff") ; grey100
	  (hr-white+1    "#e4e4e4") ; grey90~
	  (_hr-white+2    "#d0d0d0") ; grey82~
	  (_hr-white+3    "#cccccc") ; grey80
	  (hr-fg         "#c5c8c6") ; grey78~
	  (hr-white+4    "#bcbcbc") ; grey74~
	  (hr-white+5    "#9e9e9e") ; grey62
	  (hr-white+6    "#707880") ; grey46~
	  ;; ----------------------
	  (hr-black-8    "#656565") ; grey40~
	  (hr-black-7    "#5f5f5f") ; grey37~
	  (hr-black-6    "#373b41") ; grey24~
	  (hr-black-5    "#383838") ; grey22
	  (_hr-black-4    "#303030") ; grey19
	  (hr-black-3    "#282a2e") ; grey16~
	  (hr-black-2    "#212121") ; grey13 ; Added
	  (_hr-black-1    "#1d1f21") ; grey12
	  (hr-bg         "#1c1c1c") ; grey11
	  (hr-black      "#000000") ; grey0
	  ;; ----------------------
	  (_hr-red-1      "#ffd7d7")
	  (hr-red        "#cc6666")
	  (hr-red+1      "#a54242") ; Added
	  (_hr-red+2      "#5f0000")
	  ;; ----------------------
	  (hr-orange     "#de935f")
	  (_hr-orange+1   "#875f00")
	  ;; ----------------------
	  (hr-yellow     "#f0c674")
	  (_hr-yellow+2   "#5f5f00")
	  ;; ----------------------
	  (_hr-green-1    "#d7ffd7")
	  (hr-green      "#b5bd68")
	  (hr-green+1    "#8c9440") ; Added
	  (hr-green+2    "#5f875f")
	  (_hr-green+3    "#005f00")
	  ;; ----------------------
	  (hr-cyan       "#8abeb7")
	  (hr-cyan+1     "#5e8d87") ; Added
	  (_hr-cyan+2     "#005f5f")
	  ;; ----------------------
	  (hr-blue-1     "#d7d7ff")
	  (hr-blue       "#81a2be")
	  (hr-blue+1     "#5f819d") ; Added
	  (hr-blue+2     "#5f5f87")
	  (_hr-blue+3     "#00005f")
	  ;; ----------------------
	  (hr-magenta    "#b294bb")
	  (hr-magenta+1  "#85678f") ; Added
	  (_hr-magenta+2  "#5f005f"))

;;; Theme Faces

  (custom-theme-set-faces
   'hybrid-reverse

;;;; --- Built-in ---

;;;;; Basic coloring
   `(cursor                                   ((t (                          :background ,hr-white+1))))
   `(default                                  ((t (:foreground ,hr-fg        :background ,hr-bg))))
   `(error                                    ((t (:foreground ,hr-red       :background ,hr-bg        :weight bold))))
   `(escape-glyph                             ((t (:foreground ,hr-cyan))))
   `(homoglyph                                ((t (:foreground ,hr-cyan))))
   `(nobreak-hyphen                           ((t (:foreground ,hr-cyan))))
   `(nobreak-space                            ((t (:foreground ,hr-cyan                                :underline t))))
   `(success                                  ((t (:foreground ,hr-green                               :weight bold))))
   `(warning                                  ((t (:foreground ,hr-orange                              :weight bold))))

;;;;; UI
   `(border                                   ((t (:foreground ,hr-white+5))))
   `(fill-column-indicator                    ((t (:foreground ,hr-black-3))))
   `(fringe                                   ((t (:foreground ,hr-fg        :background ,hr-bg))))
   `(highlight                                ((t (:foreground ,hr-yellow    :background ,hr-bg))))
   `(highlight-changes                        ((t (:foreground ,hr-red       :background ,hr-bg))))
   `(hl-line                                  ((t (                          :background ,hr-black-3   :extend t))))
   `(link                                     ((t (:foreground ,hr-blue      :background ,hr-bg))))
   `(link-visited                             ((t (:foreground ,hr-blue      :background ,hr-bg))))
   `(minibuffer-prompt                        ((t (:foreground ,hr-blue      :background ,hr-bg))))
   `(region                                   ((t (                          :background ,hr-black-6))))
   `(secondary-selection                      ((t (                          :background ,hr-black-3))))
   `(tooltip                                  ((t (                          :background ,hr-black-3))))
   `(tool-bar                                 ((t (                          :background ,hr-black-3))))
   `(vertical-border                          ((t (:foreground ,hr-white+5))))
   `(widget-button-pressed                    ((t (:foreground ,hr-orange))))
   `(widget-field                             ((t (:background ,hr-black-6))))
   `(window-divider                           ((t (:foreground ,hr-white+5))))
   `(window-divider-first-pixel               ((t (:foreground ,hr-black-6))))
   `(window-divider-last-pixel                ((t (:foreground ,hr-black-6))))

;;;;; custom (M-x customize)
   `(custom-button                            ((t (:foreground ,hr-bg        :background ,hr-white+4   :box (:line-width 2 :color nil :style released-button)))))
   `(custom-button-mouse                      ((t (:background ,hr-white                               :inherit custom-button))))
   `(custom-button-pressed                    ((t (:background ,hr-white+5                             :inherit custom-button :box (:style pressed-button)))))
   `(custom-button-pressed-unraised           ((t (:foreground ,hr-magenta                             :inherit custom-button-unraised))))
   `(custom-button-unraised                   ((t (                                                    :underline t))))
   `(custom-changed                           ((t (:foreground ,hr-bg        :background ,hr-blue))))
   `(custom-comment                           ((t (:background ,hr-black-6))))
   `(custom-comment-tag                       ((t (:foreground ,hr-fg))))
   `(custom-documentation                     ((t (:foreground ,hr-fg))))
   `(custom-face-tag                          ((t (                                                    :inherit custom-variable-tag))))
   `(custom-group-subtitle                    ((t (:foreground ,hr-orange                              :weight bold))))
   `(custom-group-tag                         ((t (:foreground ,hr-orange                              :weight bold))))
   `(custom-group-tag-1                       ((t (:foreground ,hr-magenta                             :inherit variable-pitch :weight bold :height 1.2))))
   `(custom-invalid                           ((t (                                                    :inherit error))))
   `(custom-link                              ((t (                                                    :inherit link :underline t))))
   `(custom-modified                          ((t (:foreground ,hr-bg        :background ,hr-blue))))
   `(custom-rogue                             ((t (:foreground ,hr-orange))))
   `(custom-saved                             ((t (                                                    :underline t))))
   `(custom-set                               ((t (:foreground ,hr-bg        :background ,hr-fg))))
   `(custom-state                             ((t (:foreground ,hr-green))))
   `(custom-themed                            ((t (:foreground ,hr-bg        :background ,hr-blue))))
   `(custom-variable-button                   ((t (                                                    :weight bold :underline t))))
   `(custom-variable-tag                      ((t (:foreground ,hr-blue))))
   `(custom-visibility                        ((t (                                                    :inherit link :underline t :height 0.8))))

;;;;; dired
   `(dired-directory                          ((t (:foreground ,hr-magenta))))
   `(dired-flagged                            ((t (                                                    :inherit error))))
   `(dired-header                             ((t (:foreground ,hr-orange))))
   `(dired-ignored                            ((t (                                                    :inherit font-lock-comment-face))))
   `(dired-mark                               ((t (:foreground ,hr-blue))))
   `(dired-marked                             ((t (                                                    :inherit warning))))
   `(dired-perm-write                         ((t (                                                    :inherit font-lock-comment-delimiter-face))))
   `(dired-symlink                            ((t (:foreground ,hr-cyan))))
   `(dired-warning                            ((t (                                                    :inherit warning))))

;;;;; font-lock-mode
   `(font-lock-builtin-face                   ((t (:foreground ,hr-blue))))
   `(font-lock-comment-face                   ((t (:foreground ,hr-white+6                             :slant italic))))
   `(font-lock-comment-delimiter-face         ((t (:foreground ,hr-white+6                             :slant italic))))
   `(font-lock-constant-face                  ((t (:foreground ,hr-fg))))
   `(font-lock-doc-face                       ((t (:foreground ,hr-white+6))))
   `(font-lock-function-name-face             ((t (:foreground ,hr-fg))))
   `(font-lock-keyword-face                   ((t (:foreground ,hr-blue))))
   `(font-lock-negation-char-face             ((t (:foreground ,hr-cyan))))
   `(font-lock-preprocessor-face              ((t (:foreground ,hr-cyan))))
   `(font-lock-regexp-grouping-backslash      ((t (:foreground ,hr-yellow))))
   `(font-lock-regexp-grouping-construct      ((t (:foreground ,hr-green))))
   `(font-lock-string-face                    ((t (:foreground ,hr-green))))
   `(font-lock-type-face                      ((t (:foreground ,hr-orange))))
   `(font-lock-variable-name-face             ((t (:foreground ,hr-red))))
   `(font-lock-warning-face                   ((t (:foreground ,hr-red                                 :weight bold))))

;;;;; ido-mode
   `(ido-first-match                          ((t (:foreground ,hr-orange))))
   `(ido-indicator                            ((t (:foreground ,hr-red))))
   `(ido-only-match                           ((t (:foreground ,hr-green))))
   `(ido-subdir                               ((t (:foreground ,hr-magenta))))

;;;;; info
   ;; `(Info-quoted                              ((t (                                                    :inherit fixed-pitch-serif))))
   `(info-header-node                         ((t (                                                    :inherit info-node))))
   `(info-header-xref                         ((t (:foreground ,hr-blue :weight bold))))
   `(info-index-match                         ((t (                                                    :inherit match))))
   `(info-menu-header                         ((t (                                                    :inherit variable-pitch :weight bold :height 1.1))))
   `(info-menu-star                           ((t (:foreground ,hr-fg))))
   `(info-node                                ((t (                                                    :weight bold :slant italic))))
   `(info-title-1                             ((t (                                                    :inherit info-title-2 :height 1.2))))
   `(info-title-2                             ((t (                                                    :inherit info-title-3 :height 1.2))))
   `(info-title-3                             ((t (                                                    :inherit info-title-4 :height 1.2))))
   `(info-title-4                             ((t (:foreground ,hr-orange                              :inherit variable-pitch :weight bold))))
   `(info-xref                                ((t (                                                    :inherit link))))
   `(info-xref-visited                        ((t (                                                    :inherit (link-visited info-xref)))))

;;;;; search
   `(isearch                                  ((t (:foreground ,hr-bg        :background ,hr-yellow))))
   `(isearch-fail                             ((t (:foreground ,hr-fg        :background ,hr-red+1))))
   `(lazy-highlight                           ((t (:foreground ,hr-bg        :background ,hr-white+5))))
   `(match                                    ((t (:foreground ,hr-bg        :background ,hr-blue))))

;;;;; linum-mode
   `(linum                                    ((t (:foreground ,hr-white+5   :background ,hr-black-2))))

;;;;; display-line-numbers-mode (Emacs >=26.1)
   `(line-number                              ((t (:foreground ,hr-white+5   :background ,hr-black-2))))
   `(line-number-current-line                 ((t (:foreground ,hr-yellow    :background ,hr-black-2   :weight bold))))

;;;;; man
   `(Man-overstrike                           ((t (:foreground ,hr-blue                                :weight bold))))
   `(Man-reverse                              ((t (:foreground ,hr-bg        :background ,hr-fg        :weight bold))))
   `(Man-underline                            ((t (:foreground ,hr-magenta                             :underline t))))

;;; message-mode
   `(message-cited-text                       ((t (:foreground ,hr-white+5))))
   `(message-header-cc                        ((t (:foreground ,hr-red))))
   `(message-header-name                      ((t (:foreground ,hr-blue                                :weight bold))))
   `(message-header-newsgroups                ((t (:foreground ,hr-cyan))))
   `(message-header-other                     ((t (:foreground ,hr-green))))
   `(message-header-subject                   ((t (:foreground ,hr-green))))
   `(message-header-to                        ((t (:foreground ,hr-red))))
   `(message-header-xheader                   ((t (:foreground ,hr-yellow))))
   `(message-mml                              ((t (:foreground ,hr-yellow))))
   `(message-separator                        ((t (                                                    :inherit font-lock-comment-face))))

;;;;; mode-line
   `(header-line                              ((t (                          :background ,hr-black-3))))
   `(mode-line                                ((t (:foreground ,hr-fg        :background ,hr-black-3))))
   `(mode-line-buffer-id                      ((t (                                                    :weight bold))))
   `(mode-line-emphasis                       ((t (                                                    :weight bold))))
   `(mode-line-highlight                      ((t (:foreground ,hr-yellow))))
   `(mode-line-inactive                       ((t (:foreground ,hr-black-8   :background ,hr-black-2))))

;;;;; org-mode
   `(org-agenda-structure                     ((t (:foreground ,hr-magenta))))
   `(org-agenda-current-time                  ((t (:foreground ,hr-yellow))))
   `(org-agenda-date                          ((t (:foreground ,hr-blue                                :underline nil))))
   `(org-agenda-done                          ((t (:foreground ,hr-green))))
   `(org-agenda-dimmed-todo-face              ((t (:foreground ,hr-white+6))))
   `(org-block                                ((t (                          :background ,hr-black-3   :extend t))))
   `(org-block-begin-line                     ((t (:foreground ,hr-white+6   :background ,hr-bg        :slant italic))))
   `(org-block-end-line                       ((t (                                                    :inherit org-block-begin-line))))
   `(org-code                                 ((t (:foreground ,hr-yellow))))
   `(org-column                               ((t (                          :background ,hr-black-6))))
   `(org-column-title                         ((t (                                                    :inherit org-column :weight bold :underline t))))
   `(org-date                                 ((t (:foreground ,hr-blue                                :underline t))))
   `(org-date-selected                        ((t (:foreground ,hr-cyan                                :inverse-video t))))
   `(org-document-info                        ((t (:foreground ,hr-green))))
   `(org-document-info-keyword                ((t (:foreground ,hr-blue))))
   `(org-document-title                       ((t (:foreground ,hr-green                               :weight bold))))
   `(org-done                                 ((t (:foreground ,hr-green))))
   `(org-drawer                               ((t (:foreground ,hr-blue))))
   `(org-ellipsis                             ((t (:foreground ,hr-white+6))))
   `(org-footnote                             ((t (:foreground ,hr-cyan))))
   `(org-formula                              ((t (:foreground ,hr-red))))
   `(org-hide                                 ((t (:foreground ,hr-bg        :background ,hr-bg))))
   `(org-habit-alert-face                     ((t (:foreground ,hr-bg        :background ,hr-yellow))))
   `(org-habit-alert-future-face              ((t (:foreground ,hr-bg        :background ,hr-orange))))
   `(org-habit-clear-face                     ((t (:foreground ,hr-bg        :background ,hr-white+6))))
   `(org-habit-clear-future-face              ((t (:foreground ,hr-bg        :background ,hr-magenta))))
   `(org-habit-overdue-face                   ((t (:foreground ,hr-bg        :background ,hr-blue))))
   `(org-habit-overdue-future-face            ((t (:foreground ,hr-bg        :background ,hr-red))))
   `(org-habit-ready-face                     ((t (:foreground ,hr-bg        :background ,hr-cyan))))
   `(org-habit-ready-future-face              ((t (:foreground ,hr-bg        :background ,hr-green))))
   `(org-link                                 ((t (:foreground ,hr-blue                                :underline t))))
   `(org-mode-line-clock-overrun              ((t (                          :background ,hr-red       :inherit mode-line))))
   `(org-scheduled                            ((t (:foreground ,hr-green))))
   `(org-scheduled-previously                 ((t (:foreground ,hr-cyan))))
   `(org-scheduled-today                      ((t (:foreground ,hr-green))))
   `(org-special-keyword                      ((t (:foreground ,hr-orange))))
   `(org-table                                ((t (:foreground ,hr-magenta))))
   `(org-time-grid                            ((t (:foreground ,hr-yellow))))
   `(org-todo                                 ((t (:foreground ,hr-red))))
   `(org-upcoming-deadline                    ((t (:foreground ,hr-orange))))
   `(org-warning                              ((t (:foreground ,hr-red                                 :weight bold))))

;;;;; outline-mode
   `(outline-1                                ((t (:foreground ,hr-red))))
   `(outline-2                                ((t (:foreground ,hr-green))))
   `(outline-3                                ((t (:foreground ,hr-blue))))
   `(outline-4                                ((t (:foreground ,hr-yellow))))
   `(outline-5                                ((t (:foreground ,hr-red))))
   `(outline-6                                ((t (:foreground ,hr-green))))
   `(outline-7                                ((t (:foreground ,hr-blue))))
   `(outline-8                                ((t (:foreground ,hr-yellow))))

;;;;; shell-script-mode
   `(sh-heredoc                               ((t (:foreground nil                                     :inherit font-lock-string-face))))
   `(sh-quoted-exec                           ((t (:foreground nil                                     :inherit font-lock-preprocessor-face))))

;;;;; show-paren-mode
   `(show-paren-match                         ((t (:foreground ,hr-cyan      :background ,hr-blue+2    :weight bold))))
   `(show-paren-match-expression              ((t (                                                    :inherit show-paren-match))))
   `(show-paren-mismatch                      ((t (:foreground ,hr-white+1   :background ,hr-red       :weight bold))))

;;;;; tab-bar-mode
   `(tab-bar                                  ((t (                          :background ,hr-black-3))))
   `(tab-bar-tab                              ((t (:foreground ,hr-white     :background ,hr-black-6))))
   `(tab-bar-tab-inactive                     ((t (                                                    :inherit tab-bar))))

;;;;; tab-line-mode
   `(tab-line                                 ((t (                          :background ,hr-black-3))))
   `(tab-line-close-highlight                 ((t (:foreground ,hr-orange                              :weight bold :underline t))))
   `(tab-line-highlight                       ((t (:foreground ,hr-white     :background ,hr-black-6))))
   `(tab-line-tab                             ((t (                          :background ,hr-black-3))))
   `(tab-line-tab-current                     ((t (:foreground ,hr-white     :background ,hr-black-6))))
   `(tab-line-tab-inactive                    ((t (                                                    :inherit tab-line-tab))))

;;;;; term
   `(term                                     ((t (:foreground ,hr-fg        :background ,hr-bg))))
   `(term-bold                                ((t (                                                    :weight bold))))
   `(term-color-black                         ((t (:foreground ,hr-black-3   :background ,hr-black-6))))
   `(term-color-blue                          ((t (:foreground ,hr-blue+1    :background ,hr-blue))))
   `(term-color-cyan                          ((t (:foreground ,hr-cyan+1    :background ,hr-cyan))))
   `(term-color-green                         ((t (:foreground ,hr-green+1   :background ,hr-green))))
   `(term-color-magenta                       ((t (:foreground ,hr-magenta+1 :background ,hr-magenta))))
   `(term-color-red                           ((t (:foreground ,hr-red+1     :background ,hr-red))))
   `(term-color-white                         ((t (:foreground ,hr-white+6   :background ,hr-fg))))
   `(term-color-yellow                        ((t (:foreground ,hr-orange    :background ,hr-yellow))))
   `(term-underline                           ((t (                                                    :underline t))))

;;;;; tty-menu
   `(tty-menu-disabled-face                   ((t (                          :background ,hr-black-3))))
   `(tty-menu-enabled-face                    ((t (:foreground ,hr-white     :background ,hr-black-6   :weight bold))))
   `(tty-menu-selected-face                   ((t (                          :background ,hr-orange))))

;;;;; whitespace-mode
   `(trailing-whitespace                      ((t (:foreground ,hr-black-6   :background ,hr-orange))))
   `(whitespace-big-indent                    ((t (:foreground ,hr-black-6   :background ,hr-red))))
   `(whitespace-empty                         ((t (:foreground ,hr-black-6   :background ,hr-yellow))))
   `(whitespace-hspace                        ((t (:foreground ,hr-white+5   :background ,hr-black-6))))
   `(whitespace-indentation                   ((t (:foreground ,hr-white+5   :background ,hr-black-6))))
   `(whitespace-line                          ((t (:foreground ,hr-orange    :background ,hr-black-6))))
   `(whitespace-newline                       ((t (:foreground ,hr-white+5   :background ,hr-bg))))
   `(whitespace-space                         ((t (:foreground ,hr-white+5   :background ,hr-black-6))))
   `(whitespace-space-after-tab               ((t (:foreground ,hr-yellow    :background ,hr-black-6))))
   `(whitespace-space-before-tab              ((t (:foreground ,hr-orange    :background ,hr-black-6))))
   `(whitespace-tab                           ((t (:foreground ,hr-white+5   :background ,hr-black-6))))
   `(whitespace-trailing                      ((t (:foreground ,hr-black-6   :background ,hr-orange))))

;;;; --- Third-party ---

;;;;; ace-window
   `(aw-background-face                       ((t (                          :background ,hr-black-2))))
   `(aw-key-face                              ((t (:foreground ,hr-blue))))
   `(aw-leading-char-face                     ((t (:foreground ,hr-yellow                              :weight bold :height 3.0))))
   `(aw-minibuffer-leading-char-face          ((t (:foreground ,hr-yellow                              :weight bold))))
   `(aw-mode-line-face                        ((t (                                                    :inherit mode-line))))

;;;;; auto-complete
   `(ac-candidate-face                        ((t (                          :background ,hr-black-3))))
   `(ac-candidate-mouse-face                  ((t (:foreground ,hr-yellow    :background ,hr-black-6))))
   `(ac-completion-face                       ((t (:foreground ,hr-yellow    :background ,hr-black-3))))
   `(ac-gtags-candidate-face                  ((t (                          :background ,hr-black-3))))
   `(ac-gtags-selection-face                  ((t (:foreground ,hr-yellow    :background ,hr-black-6))))
   `(ac-selection-face                        ((t (:foreground ,hr-yellow    :background ,hr-black-6))))
   `(ac-yasnippet-candidate-face              ((t (                          :background ,hr-black-3))))
   `(ac-yasnippet-selection-face              ((t (:foreground ,hr-yellow    :background ,hr-black-6))))

;;;;; avy
   `(avy-background-face                      ((t (:foreground ,hr-bg        :background ,hr-yellow    :weight bold))))
   `(avy-lead-face                            ((t (:foreground ,hr-bg        :background ,hr-yellow    :weight bold))))
   `(avy-lead-face-0                          ((t (:foreground ,hr-bg        :background ,hr-yellow    :weight bold))))
   `(avy-lead-face-1                          ((t (:foreground ,hr-bg        :background ,hr-yellow    :weight bold))))
   `(avy-lead-face-2                          ((t (:foreground ,hr-bg        :background ,hr-yellow    :weight bold))))

;;;;; centaur-tabs
   `(centaur-tabs-active-bar-face             ((t (:foreground ,hr-bg        :background ,hr-cyan))))
   `(centaur-tabs-close-mouse-face            ((t (:foreground ,hr-orange                              :weight bold :underline t))))
   `(centaur-tabs-close-selected              ((t (                                                    :inherit centaur-tabs-selected))))
   `(centaur-tabs-close-unselected            ((t (                                                    :inherit centaur-tabs-unselected))))
   `(centaur-tabs-default                     ((t (:foreground ,hr-black-3   :background ,hr-black-3))))
   `(centaur-tabs-modified-marker-selected    ((t (:foreground ,hr-white     :background ,hr-black-6))))
   `(centaur-tabs-modified-marker-unselected  ((t (:foreground ,hr-fg        :background ,hr-black-3))))
   `(centaur-tabs-selected                    ((t (:foreground ,hr-white     :background ,hr-black-6))))
   `(centaur-tabs-selected-modified           ((t (:foreground ,hr-white     :background ,hr-black-6))))
   `(centaur-tabs-unselected                  ((t (:foreground ,hr-fg        :background ,hr-black-3))))
   `(centaur-tabs-unselected-modified         ((t (:foreground ,hr-fg        :background ,hr-black-3))))

;;;;; column-enforce-mode
   `(column-enforce-face                      ((t (:foreground ,hr-orange    :background ,hr-black-6))))

;;;;; company-mode
   `(company-preview                          ((t (                          :background ,hr-black-3))))
   `(company-preview-common                   ((t (:foreground ,hr-yellow    :background ,hr-black-3))))
   `(company-scrollbar-bg                     ((t (                          :background ,hr-black-3))))
   `(company-scrollbar-fg                     ((t (                          :background ,hr-black-6))))
   `(company-tooltip                          ((t (:foreground ,hr-fg        :background ,hr-black-3))))
   `(company-tooltip-annotation               ((t (:foreground ,hr-blue      :background ,hr-black-3))))
   `(company-tooltip-annotation-selection     ((t (:foreground ,hr-yellow    :background ,hr-black-6))))
   `(company-tooltip-common                   ((t (:foreground ,hr-bg        :background ,hr-white+5))))
   `(company-tooltip-common-selection         ((t (:foreground ,hr-bg        :background ,hr-yellow))))
   `(company-tooltip-mouse                    ((t (:foreground ,hr-yellow    :background ,hr-black-6))))
   `(company-tooltip-selection                ((t (:foreground ,hr-yellow    :background ,hr-black-6))))

;;;;; dashboard
   `(dashboard-banner-logo-title              ((t (:foreground ,hr-fg))))
   `(dashboard-footer                         ((t (:foreground ,hr-white+6))))
   `(dashboard-heading                        ((t (:foreground ,hr-blue))))
   `(dashboard-navigator                      ((t (:foreground ,hr-blue))))
   `(dashboard-text-banner                    ((t (:foreground ,hr-blue))))

;;;;; deft
   `(deft-filter-string-error-face            ((t (:inherit error))))
   `(deft-filter-string-face                  ((t (:foreground ,hr-green))))
   `(deft-header-face                         ((t (:foreground ,hr-orange                              :weight bold))))
   `(deft-separator-face                      ((t (                                                    :inherit font-lock-comment-delimiter-face))))
   `(deft-summary-face                        ((t (                                                    :inherit font-lock-comment-face))))
   `(deft-time-face                           ((t (:foreground ,hr-magenta))))
   `(deft-title-face                          ((t (:foreground ,hr-blue                                :weight bold))))

;;;;; doom-modeline
   `(doom-modeline-bar                        ((t (                          :background ,hr-blue))))
   `(doom-modeline-bar-inactive               ((t (                                                    :inherit mode-line-inactive))))
   `(doom-modeline-battery-charging           ((t (:foreground ,hr-fg))))
   `(doom-modeline-battery-critical           ((t (                                                    :inherit warning))))
   `(doom-modeline-battery-error              ((t (                                                    :inherit error))))
   `(doom-modeline-battery-full               ((t (:foreground ,hr-green))))
   `(doom-modeline-battery-normal             ((t (:foreground ,hr-fg))))
   `(doom-modeline-battery-warning            ((t (:foreground ,hr-orange))))
   `(doom-modeline-buffer-file                ((t (                                                    :inherit mode-line-emphasis))))
   `(doom-modeline-buffer-major-mode          ((t (:foreground ,hr-blue                                :inherit mode-line-emphasis))))
   `(doom-modeline-buffer-minor-mode          ((t (                          :background ,hr-cyan))))
   `(doom-modeline-buffer-modified            ((t (:foreground ,hr-orange                              :weight bold))))
   `(doom-modeline-buffer-path                ((t (                                                    :weight bold))))
   `(doom-modeline-buffer-timemachine         ((t (                                                    :inherit doom-modeline-buffer-file :underline t :slant italic))))
   `(doom-modeline-debug                      ((t (:foreground ,hr-orange))))
   `(doom-modeline-evil-emacs-state           ((t (:foreground ,hr-magenta))))
   `(doom-modeline-evil-insert-state          ((t (:foreground ,hr-green))))
   `(doom-modeline-evil-motion-state          ((t (:foreground ,hr-cyan))))
   `(doom-modeline-evil-normal-state          ((t (:foreground ,hr-blue))))
   `(doom-modeline-evil-operator-state        ((t (:foreground ,hr-black-8))))
   `(doom-modeline-evil-replace-state         ((t (:foreground ,hr-orange))))
   `(doom-modeline-evil-visual-state          ((t (:foreground ,hr-magenta))))
   `(doom-modeline-highlight                  ((t (:foreground ,hr-blue))))
   `(doom-modeline-host                       ((t (                                                    :slant italic))))
   `(doom-modeline-info                       ((t (:foreground ,hr-cyan                                :weight bold))))
   `(doom-modeline-input-method               ((t (                                                    :inherit mode-line-emphasis))))
   `(doom-modeline-input-method-alt           ((t (                                                    :inherit font-lock-doc-face :weight bold))))
   `(doom-modeline-lsp-error                  ((t (                                                    :inherit error :weight normal))))
   `(doom-modeline-lsp-running                ((t (:foreground ,hr-cyan))))
   `(doom-modeline-lsp-success                ((t (                                                    :inherit success :weight normal))))
   `(doom-modeline-lsp-warning                ((t (                                                    :inherit warning :weight normal))))
   `(doom-modeline-panel                      ((t (                                                    :inherit mode-line-highlight))))
   `(doom-modeline-persp-buffer-not-in-persp  ((t (                                                    :inherit font-lock-doc-face :weight bold :slant italic))))
   `(doom-modeline-persp-name                 ((t (                                                    :inherit font-lock-comment-face))))
   `(doom-modeline-project-dir                ((t (:foreground ,hr-magenta                             :weight bold))))
   `(doom-modeline-project-parent-dir         ((t (                                                    :inherit font-lock-comment-face :weight bold))))
   `(doom-modeline-project-root-dir           ((t (                                                    :inherit mode-line-emphasis))))
   `(doom-modeline-repl-success               ((t (:foreground ,hr-green))))
   `(doom-modeline-repl-warning               ((t (:foreground ,hr-orange))))
   `(doom-modeline-spc-face                   ((t (                                                    :inherit mode-line))))
   `(doom-modeline-unread-number              ((t (                                                    :slant italic))))
   `(doom-modeline-urgent                     ((t (                                                    :inherit error))))
   `(doom-modeline-vpsc-space-face            ((t (                                                    :inherit variable-pitch))))
   `(doom-modeline-warning                    ((t (                                                    :inherit warning))))

;;;;; elfeed
   `(elfeed-log-error-level-face              ((t (:foreground ,hr-red))))
   `(elfeed-log-info-level-face               ((t (:foreground ,hr-blue))))
   `(elfeed-log-warn-level-face               ((t (:foreground ,hr-yellow))))
   `(elfeed-search-date-face                  ((t (:foreground ,hr-blue))))
   `(elfeed-search-feed-face                  ((t (:foreground ,hr-cyan))))
   `(elfeed-search-tag-face                   ((t (:foreground ,hr-green))))

;;;;; evil
   `(evil-ex-info                             ((t (:foreground ,hr-red))))
   `(evil-ex-lazy-highlight                   ((t (                                                    :inherit lazy-highlight))))
   `(evil-ex-search                           ((t (                                                    :inherit isearch))))
   `(evil-ex-substitute-replacement           ((t (:foreground ,hr-red                                 :underline t))))
   `(evil-ex-substitute-matches               ((t (                                                    :inherit isearch))))

;;;;; flycheck
   `(flycheck-error                           ((t :underline (:color ,hr-red       :style wave))))
   `(flycheck-info                            ((t :underline (:color ,hr-cyan      :style wave))))
   `(flycheck-warning                         ((t :underline (:color ,hr-orange    :style wave))))
   `(flycheck-fringe-error                    ((t (:foreground ,hr-red))))
   `(flycheck-fringe-info                     ((t (:foreground ,hr-cyan))))
   `(flycheck-fringe-warning                  ((t (:foreground ,hr-orange))))

;;;;; ido-vertical-mode
   `(ido-vertical-match-face                  ((t (:foreground ,hr-yellow                              :weight bold :underline t))))

;;;;; linum-relative
   `(linum-relative-current-face              ((t (:foreground ,hr-yellow    :background ,hr-black-2   :weight bold))))

;;;;; lsp-ui
   `(lsp-ui-doc-background                    ((t (                          :background ,hr-black-3))))
   `(lsp-ui-doc-border                        ((t (                                                    :inherit border))))
   `(lsp-ui-doc-header                        ((t (:foreground ,hr-bg        :background ,hr-blue))))
   `(lsp-ui-doc-url                           ((t (:foreground ,hr-blue      :background ,hr-black-3))))
   `(lsp-ui-peek-filename                     ((t (:foreground ,hr-magenta))))
   `(lsp-ui-peek-footer                       ((t (:foreground ,hr-bg        :background ,hr-black-3))))
   `(lsp-ui-peek-header                       ((t (:foreground ,hr-fg        :background ,hr-black-6))))
   `(lsp-ui-peek-highlight                    ((t (:foreground ,hr-blue      :background ,hr-black-3))))
   `(lsp-ui-peek-line-number                  ((t (                          :background ,hr-black-3   :inherit line-number))))
   `(lsp-ui-peek-list                         ((t (:foreground ,hr-fg        :background ,hr-black-3))))
   `(lsp-ui-peek-peek                         ((t (                          :background ,hr-black-3))))
   `(lsp-ui-peek-selection                    ((t (:foreground ,hr-yellow    :background ,hr-black-6))))
   `(lsp-ui-sideline-code-action              ((t (:foreground ,hr-blue                                :weight bold))))
   `(lsp-ui-sideline-current-symbol           ((t (:foreground ,hr-yellow                              :weight bold))))
   `(lsp-ui-sideline-symbol                   ((t (:foreground ,hr-red       :background ,hr-bg))))
   `(lsp-ui-sideline-symbol-info              ((t (:foreground ,hr-cyan      :background ,hr-bg))))

;;;;; magit
   `(magit-branch-current                     ((t (:foreground ,hr-blue                                :box t))))
   `(magit-branch-local                       ((t (:foreground ,hr-blue))))
   `(magit-branch-remote                      ((t (:foreground ,hr-cyan))))
   `(magit-branch-remote-head                 ((t (:foreground ,hr-cyan                                :box t))))
   `(magit-branch-upstream                    ((t (                                                    :slant italic))))
   `(magit-diff-added                         ((t (:foreground ,hr-green     :background ,hr-black-2))))
   `(magit-diff-added-highlight               ((t (:foreground ,hr-green     :background ,hr-black-3))))
   `(magit-diff-base                          ((t (:foreground ,hr-bg        :background ,hr-green))))
   `(magit-diff-base-highlight                ((t (:foreground ,hr-bg        :background ,hr-green))))
   `(magit-diff-conflict-heading              ((t (                                                    :inherit magit-diff-hunk-heading))))
   `(magit-diff-context                       ((t (                          :background ,hr-black-2))))
   `(magit-diff-context-highlight             ((t (                          :background ,hr-black-3))))
   `(magit-diff-file-heading                  ((t (                          :background ,hr-bg        :weight bold))))
   `(magit-diff-file-heading-highlight        ((t (                          :background ,hr-black-3))))
   `(magit-diff-file-heading-selection        ((t (:foreground ,hr-orange                              :inherit magit-diff-file-heading-highlight))))
   `(magit-diff-hunk-heading                  ((t (                          :background ,hr-black-3))))
   `(magit-diff-hunk-heading-highlight        ((t (                          :background ,hr-black-6))))
   `(magit-diff-hunk-heading-selection        ((t (:foreground ,hr-orange                              :inherit magit-diff-hunk-heading-highlight))))
   `(magit-diff-hunk-region                   ((t (:foreground ,hr-fg                                  :weight bold))))
   `(magit-diff-lines-boundary                ((t (                                                    :inherit magit-diff-lines-heading))))
   `(magit-diff-lines-heading                 ((t (:foreground ,hr-bg        :background ,hr-orange))))
   `(magit-diff-our                           ((t (                                                    :inherit magit-diff-removed))))
   `(magit-diff-our-highlight                 ((t (                                                    :inherit magit-diff-removed-highlight))))
   `(magit-diff-removed                       ((t (:foreground ,hr-red       :background ,hr-black-2))))
   `(magit-diff-removed-highlight             ((t (:foreground ,hr-red       :background ,hr-black-3))))
   `(magit-diff-revision-summary              ((t (                                                    :inherit magit-diff-hunk-heading))))
   `(magit-diff-revision-summary-highlight    ((t (                                                    :inherit magit-diff-hunk-heading-highlight))))
   `(magit-diff-their                         ((t (                                                    :inherit magit-diff-added))))
   `(magit-diff-their-highlight               ((t (                                                    :inherit magit-diff-added-highlight))))
   `(magit-diff-whitespace-warning            ((t (                                                    :inherit trailing-whitespace))))
   `(magit-diffstat-added                     ((t (:foreground ,hr-green))))
   `(magit-diffstat-removed                   ((t (:foreground ,hr-red))))
   `(magit-dimmed                             ((t (                                                    :inherit font-lock-comment-face))))
   `(magit-filename                           ((t (:foreground ,hr-fg))))
   `(magit-hash                               ((t (:foreground ,hr-blue))))
   `(magit-head                               ((t (                                                    :inherit magit-branch-local))))
   `(magit-header-line                        ((t (:foreground ,hr-yellow                              :weight bold))))
   `(magit-header-line-key                    ((t (:foreground ,hr-yellow))))
   `(magit-header-line-log-select             ((t (:foreground ,hr-fg                                  :weight bold))))
   `(magit-keyword                            ((t (:foreground ,hr-yellow))))
   `(magit-keyword-squash                     ((t (:foreground ,hr-orange))))
   `(magit-log-author                         ((t (:foreground ,hr-cyan))))
   `(magit-log-date                           ((t (:foreground ,hr-green))))
   `(magit-log-graph                          ((t (:foreground ,hr-fg))))
   `(magit-mode-line-process                  ((t (                                                    :inherit mode-line-emphasis))))
   `(magit-mode-line-process-error            ((t (:foreground ,hr-red                                 :weight bold))))
   `(magit-process-ng                         ((t (:foreground ,hr-red                                 :weight bold))))
   `(magit-process-ok                         ((t (:foreground ,hr-green                               :weight bold))))
   `(magit-reflog-amend                       ((t (:foreground ,hr-magenta))))
   `(magit-reflog-checkout                    ((t (:foreground ,hr-blue))))
   `(magit-reflog-cherry-pick                 ((t (:foreground ,hr-green))))
   `(magit-reflog-commit                      ((t (:foreground ,hr-green))))
   `(magit-reflog-merge                       ((t (:foreground ,hr-green))))
   `(magit-reflog-other                       ((t (:foreground ,hr-cyan))))
   `(magit-reflog-rebase                      ((t (:foreground ,hr-magenta))))
   `(magit-reflog-remote                      ((t (:foreground ,hr-cyan))))
   `(magit-reflog-reset                       ((t (:foreground ,hr-red))))
   `(magit-section-heading                    ((t (:foreground ,hr-yellow                              :weight bold))))
   `(magit-section-heading-selection          ((t (:foreground ,hr-orange                              :weight bold))))
   `(magit-section-highlight                  ((t (                          :background ,hr-black-3))))
   `(magit-section-secondary-heading          ((t (:foreground ,hr-fg                                  :weight bold))))
   `(magit-sequence-done                      ((t (                                                    :inherit magit-hash))))
   `(magit-sequence-drop                      ((t (:foreground ,hr-red))))
   `(magit-sequence-exec                      ((t (                                                    :inherit magit-hash))))
   `(magit-sequence-head                      ((t (:foreground ,hr-blue-1))))
   `(magit-sequence-onto                      ((t (                                                    :inherit magit-sequence-done))))
   `(magit-sequence-part                      ((t (:foreground ,hr-green))))
   `(magit-sequence-pick                      ((t (:foreground ,hr-fg))))
   `(magit-sequence-stop                      ((t (:foreground ,hr-cyan))))
   `(magit-signature-bad                      ((t (:foreground ,hr-red                                 :weight bold))))
   `(magit-signature-error                    ((t (:foreground ,hr-red))))
   `(magit-signature-expired                  ((t (:foreground ,hr-orange))))
   `(magit-signature-expired-key              ((t (:foreground ,hr-orange))))
   `(magit-signature-good                     ((t (:foreground ,hr-green))))
   `(magit-signature-revoked                  ((t (:foreground ,hr-red+1))))
   `(magit-signature-untrusted                ((t (:foreground ,hr-cyan))))
   `(magit-tag                                ((t (:foreground ,hr-orange))))

;;;;; mu4e
   `(mu4e-attach-number-face                  ((t (:foreground ,hr-yellow                              :weight bold))))
   `(mu4e-cited-1-face                        ((t (:foreground ,hr-white+5                             :slant italic))))
   `(mu4e-cited-2-face                        ((t (:foreground ,hr-white+6                             :slant italic))))
   `(mu4e-cited-3-face                        ((t (:foreground ,hr-white+5                             :slant italic))))
   `(mu4e-cited-4-face                        ((t (:foreground ,hr-white+6                             :slant italic))))
   `(mu4e-cited-5-face                        ((t (:foreground ,hr-white+5                             :slant italic))))
   `(mu4e-cited-6-face                        ((t (:foreground ,hr-white+6                             :slant italic))))
   `(mu4e-cited-7-face                        ((t (:foreground ,hr-fg                                  :slant italic))))
   `(mu4e-compose-header-face                 ((t (                                                    :inherit font-lock-comment-face))))
   `(mu4e-compose-separator-face              ((t (                                                    :inherit font-lock-comment-face))))
   `(mu4e-contact-face                        ((t (:foreground ,hr-red))))
   `(mu4e-context-face                        ((t (:foreground ,hr-orange    :background ,hr-black-3))))
   `(mu4e-draft-face                          ((t (:foreground ,hr-green))))
   `(mu4e-flagged-face                        ((t (                                                    :inherit font-lock-constant-face))))
   `(mu4e-footer-face                         ((t (                                                    :inherit font-lock-comment-face))))
   `(mu4e-forwarded-face                      ((t (:foreground ,hr-blue))))
   `(mu4e-header-face                         ((t (:foreground ,hr-fg))))
   `(mu4e-header-highlight-face               ((t (                          :background ,hr-black-3))))
   `(mu4e-header-key-face                     ((t (:foreground ,hr-blue                                :weight bold))))
   `(mu4e-header-marks-face                   ((t (:foreground ,hr-orange                              :weight bold))))
   `(mu4e-header-title-face                   ((t (:foreground ,hr-orange))))
   `(mu4e-header-value-face                   ((t (:foreground ,hr-green))))
   `(mu4e-highlight-face                      ((t (:foreground ,hr-yellow))))
   `(mu4e-link-face                           ((t (                                                    :inherit link))))
   `(mu4e-modeline-face                       ((t (                                                    :inherit mode-line))))
   `(mu4e-moved-face                          ((t (:foreground ,hr-cyan))))
   `(mu4e-ok-face                             ((t (:foreground ,hr-green                               :weight bold))))
   `(mu4e-region-code                         ((t (:foreground ,hr-fg        :background ,hr-black-3))))
   `(mu4e-replied-face                        ((t (:foreground ,hr-white+6))))
   `(mu4e-special-header-value-face           ((t (:foreground ,hr-cyan))))
   `(mu4e-system-face                         ((t (                                                    :inherit font-lock-comment-face))))
   `(mu4e-title-face                          ((t (:foreground ,hr-orange                              :bold))))
   `(mu4e-trashed-face                        ((t (:foreground ,hr-black-3                             :strike-through t))))
   `(mu4e-unread-face                         ((t (:foreground ,hr-white                               :weight bold))))
   `(mu4e-url-number-face                     ((t (:foreground ,hr-yellow                              :weight bold))))
   `(mu4e-view-body-face                      ((t (:background ,hr-bg))))
   `(mu4e-warning-face                        ((t (                                                    :inherit warning))))

;;;;; neotree
   `(neo-banner-face                          ((t (:foreground ,hr-orange                              :weight bold))))
   `(neo-button-face                          ((t (                                                    :underline t))))
   `(neo-dir-link-face                        ((t (:foreground ,hr-magenta))))
   `(neo-expand-btn-face                      ((t (:foreground ,hr-black-7))))
   `(neo-file-link-face                       ((t (:foreground ,hr-fg))))
   `(neo-header-face                          ((t (:foreground ,hr-fg        :background ,hr-black-3))))
   `(neo-root-dir-face                        ((t (:foreground ,hr-orange))))
   `(neo-vc-added-face                        ((t (:foreground ,hr-green))))
   `(neo-vc-conflict-face                     ((t (:foreground ,hr-red))))
   `(neo-vc-default-face                      ((t (:foreground ,hr-fg))))
   `(neo-vc-edited-face                       ((t (:foreground ,hr-blue))))
   `(neo-vc-ignored-face                      ((t (:foreground ,hr-white+6))))
   `(neo-vc-missing-face                      ((t (:foreground ,hr-red))))
   `(neo-vc-needs-merge-face                  ((t (:foreground ,hr-red))))
   `(neo-vc-unlocked-changes-face             ((t (:foreground ,hr-orange                              :slant italic))))
   `(neo-vc-user-face                         ((t (:foreground ,hr-red                                 :slant italic))))

;;;;; org-roam
   `(org-roam-link                            ((t (                                                    :inherit org-link))))
   `(org-roam-link-current                    ((t (                                                    :inherit org-link))))
   `(org-roam-link-invalid                    ((t (:foreground ,hr-red                                 :inherit org-link))))
   `(org-roam-link-shielded                   ((t (:foreground ,hr-orange                              :inherit org-link))))

;;;;; paradox
   `(paradox-archive-face                     ((t (                                                    :inherit paradox-comment-face))))
   `(paradox-comment-face                     ((t (:foreground ,hr-white+6))))
   `(paradox-commit-tag-face                  ((t (:foreground ,hr-orange))))
   `(paradox-description-face                 ((t (:foreground ,hr-fg))))
   `(paradox-description-face-multiline       ((t (:foreground ,hr-white+6))))
   `(paradox-download-face                    ((t (:foreground ,hr-blue))))
   `(paradox-highlight-face                   ((t (:foreground ,hr-orange                              :weight bold))))
   `(paradox-homepage-button-face             ((t (:foreground ,hr-white+6                             :underline t))))
   `(paradox-mode-line-face                   ((t (:foreground ,hr-blue                                :weight bold))))
   `(paradox-name-face                        ((t (:foreground ,hr-blue                                :underline t))))
   `(paradox-star-face                        ((t (:foreground ,hr-yellow))))
   `(paradox-starred-face                     ((t (:foreground ,hr-orange))))

;;;;; php-mode
   `(php-$this                                ((t (:foreground ,hr-red))))
   `(php-$this-sigil                          ((t (:foreground ,hr-cyan))))
   `(php-class-declaration                    ((t (:foreground ,hr-cyan))))
   `(php-class-declaration-spec               ((t (:foreground ,hr-cyan))))
   `(php-class-modifier                       ((t (:foreground ,hr-cyan))))
   `(php-constant                             ((t (:foreground ,hr-magenta))))
   `(php-doc-$this                            ((t (:foreground ,hr-red))))
   `(php-doc-$this-sigil                      ((t (:foreground ,hr-cyan ))))
   `(php-doc-variable-sigil                   ((t (:foreground ,hr-cyan))))
   `(php-errorcontrol-op                      ((t (:foreground ,hr-fg))))
   `(php-function-call                        ((t (:foreground ,hr-fg))))
   `(php-function-name                        ((t (:foreground ,hr-fg))))
   `(php-import-declaration                   ((t (:foreground ,hr-cyan))))
   `(php-keyword                              ((t (:foreground ,hr-blue))))
   `(php-magical-constant                     ((t (:foreground ,hr-magenta))))
   `(php-namespace-declaration                ((t (:foreground ,hr-cyan))))
   `(php-operator                             ((t (:foreground ,hr-blue))))
   `(php-paamayim-nekudotayim                 ((t (:foreground ,hr-cyan))))
   `(php-php-tag                              ((t (:foreground ,hr-red))))
   `(php-property-name                        ((t (:foreground ,hr-fg))))
   `(php-variable-name                        ((t (:foreground ,hr-red))))
   `(php-variable-sigil                       ((t (:foreground ,hr-cyan))))
   ;; These are declared but not yet implemented by php-mode
   `(php-builtin                              ((t (:foreground ,hr-yellow))))
   `(php-class                                ((t (:foreground ,hr-fg))))
   `(php-constant-assign                      ((t (:foreground ,hr-fg))))
   `(php-control-structure                    ((t (:foreground ,hr-blue))))
   `(php-doc-annotation-tag                   ((t (:foreground ,hr-cyan))))
   `(php-doc-class-name                       ((t (:foreground ,hr-orange))))
   `(php-method-modifier                      ((t (:foreground ,hr-orange))))
   `(php-visibility-modifier                  ((t (:foreground ,hr-orange))))

;;;;; popup
   `(popup-face                               ((t (                          :background ,hr-black-3))))
   `(popup-summary-face                       ((t (:foreground ,hr-white+6                             :inherit popup-face))))
   `(popup-scroll-bar-foreground-face         ((t (                          :background ,hr-black-6))))
   `(popup-scroll-bar-background-face         ((t (                          :background ,hr-black-3))))
   `(popup-isearch-match                      ((t (:foreground ,hr-bg        :background ,hr-yellow))))
   `(popup-tip-face                           ((t (                          :background ,hr-black-3))))
   `(popup-menu-face                          ((t (                          :background ,hr-black-3))))
   `(popup-menu-mouse-face                    ((t (:foreground ,hr-yellow    :background ,hr-black-6))))
   `(popup-menu-selection-face                ((t (:foreground ,hr-yellow    :background ,hr-black-6))))
   `(popup-menu-summary-face                  ((t (                                                    :inherit popup-summary-face))))

;;;;; powerline
   `(mode-line-buffer-id-inactive             ((t (                                                    :inherit mode-line-buffer-id))))
   `(powerline-active0                        ((t (                                                    :inherit mode-line-emphasis))))
   `(powerline-active1                        ((t (                                                    :inherit mode-line))))
   `(powerline-active2                        ((t (:foreground ,hr-fg                                  :inherit mode-line-inactive))))
   `(powerline-inactive0                      ((t (                                                    :inherit mode-line-inactive))))
   `(powerline-inactive1                      ((t (                                                    :inherit mode-line-inactive))))
   `(powerline-inactive2                      ((t (:background ,hr-bg                                  :inherit mode-line-inactive))))

;;;;; powerline-evil
   `(powerline-evil-base-face                 ((t (                                                    :weight normal))))
   `(powerline-evil-emacs-face                ((t (:foreground ,hr-black     :background ,hr-magenta   :inherit powerline-evil-base-face))))
   `(powerline-evil-insert-face               ((t (:foreground ,hr-black     :background ,hr-green     :inherit powerline-evil-base-face))))
   `(powerline-evil-motion-face               ((t (:foreground ,hr-black     :background ,hr-cyan      :inherit powerline-evil-base-face))))
   `(powerline-evil-normal-face               ((t (:foreground ,hr-black     :background ,hr-blue      :inherit powerline-evil-base-face))))
   `(powerline-evil-operator-face             ((t (:foreground ,hr-white     :background ,hr-black-8   :inherit powerline-evil-base-face))))
   `(powerline-evil-replace-face              ((t (:foreground ,hr-black     :background ,hr-orange    :inherit powerline-evil-base-face))))
   `(powerline-evil-visual-face               ((t (:foreground ,hr-black     :background ,hr-magenta   :inherit powerline-evil-base-face))))

;;;;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face          ((t (:foreground ,hr-fg))))
   `(rainbow-delimiters-depth-2-face          ((t (:foreground ,hr-cyan))))
   `(rainbow-delimiters-depth-3-face          ((t (:foreground ,hr-yellow))))
   `(rainbow-delimiters-depth-4-face          ((t (:foreground ,hr-green+2))))
   `(rainbow-delimiters-depth-5-face          ((t (:foreground ,hr-blue))))
   `(rainbow-delimiters-depth-6-face          ((t (:foreground ,hr-fg))))
   `(rainbow-delimiters-depth-7-face          ((t (:foreground ,hr-cyan))))
   `(rainbow-delimiters-depth-8-face          ((t (:foreground ,hr-yellow))))
   `(rainbow-delimiters-depth-9-face          ((t (:foreground ,hr-green+2))))
   `(rainbow-delimiters-depth-10-face         ((t (:foreground ,hr-blue))))
   `(rainbow-delimiters-unmatched-face        ((t (:foreground ,hr-red))))

;;;;; selectrum
   `(selectrum-current-candidate              ((t (:foreground ,hr-orange                              :weight bold))))
   `(selectrum-primary-highlight              ((t (:foreground ,hr-blue))))
   `(selectrum-secondary-highlight            ((t (:foreground ,hr-red))))

;;;;; smart-mode-line
   `(sml/charging                             ((t (:foreground ,hr-fg))))
   `(sml/client                               ((t (                                                    :inherit sml/prefix))))
   `(sml/col-number                           ((t (                                                    :inherit sml/global))))
   `(sml/discharging                          ((t (:foreground ,hr-fg))))
   `(sml/filename                             ((t (                                                    :inherit mode-line-emphasis))))
   `(sml/folder                               ((t (:foreground ,hr-magenta                             :inherit mode-line-emphasis))))
   `(sml/git                                  ((t (                                                    :inherit sml/vc))))
   `(sml/global                               ((t (:foreground ,hr-fg))))
   `(sml/line-number                          ((t (                                                    :inherit sml/global))))
   `(sml/minor-modes                          ((t (:foreground ,hr-cyan))))
   `(sml/modes                                ((t (:foreground ,hr-blue                                :inherit mode-line-emphasis))))
   `(sml/modified                             ((t (:foreground ,hr-orange))))
   `(sml/mule-info                            ((t (                                                    :inherit sml/global))))
   `(sml/name-filling                         ((t (                                                    :inherit sml/position-percentage))))
   `(sml/not-modified                         ((t (                                                    :inherit sml/global))))
   `(sml/numbers-separator                    ((t (                                                    :inherit sml/global))))
   `(sml/outside-modified                     ((t (:foreground ,hr-red                                 :weight bold))))
   `(sml/position-percentage                  ((t (                                                    :inherit sml/global))))
   `(sml/prefix                               ((t (                                                    :inherit sml/global))))
   `(sml/process                              ((t (                                                    :inherit sml/prefix))))
   `(sml/projectile                           ((t (:foreground ,hr-magenta                             :weight bold))))
   `(sml/read-only                            ((t (:foreground ,hr-orange                              :weight bold))))
   `(sml/remote                               ((t (                                                    :inherit sml/global))))
   `(sml/sudo                                 ((t (:foreground ,hr-red                                 :weight bold))))
   `(sml/time                                 ((t (                                                    :inherit sml/global))))
   `(sml/vc                                   ((t (:foreground ,hr-cyan                                :weight bold))))
   `(sml/vc-edited                            ((t (:foreground ,hr-orange                              :weight bold))))

;;;;; spaceline
   `(spaceline-evil-emacs                     ((t (:foreground ,hr-black     :background ,hr-magenta))))
   `(spaceline-evil-insert                    ((t (:foreground ,hr-black     :background ,hr-green))))
   `(spaceline-evil-motion                    ((t (:foreground ,hr-black     :background ,hr-cyan))))
   `(spaceline-evil-normal                    ((t (:foreground ,hr-black     :background ,hr-blue))))
   `(spaceline-evil-replace                   ((t (:foreground ,hr-black     :background ,hr-orange))))
   `(spaceline-evil-visual                    ((t (:foreground ,hr-black     :background ,hr-magenta))))
   `(spaceline-flycheck-error                 ((t (:foreground ,hr-red))))
   `(spaceline-flycheck-info                  ((t (:foreground ,hr-cyan))))
   `(spaceline-flycheck-warning               ((t (:foreground ,hr-orange))))
   `(spaceline-highlight-face                 ((t (:foreground ,hr-black     :background ,hr-orange))))
   `(spaceline-modified                       ((t (                                                    :inherit spaceline-evil-normal))))
   `(spaceline-python-venv                    ((t (:foreground ,hr-magenta))))
   `(spaceline-read-only                      ((t (                                                    :inherit mode-line))))
   `(spaceline-unmodified                     ((t (:foreground ,hr-black     :background ,hr-orange))))

;;;;; switch-window
   `(switch-window-background                 ((t (:foreground ,hr-black-2))))
   `(switch-window-label                      ((t (:foreground ,hr-yellow                              :weight bold :height 3.0))))

;;;;; telephone-line
   `(telephone-line-accent-active             ((t (:foreground ,hr-fg        :background ,hr-black-5))))
   `(telephone-line-accent-inactive           ((t (:foreground ,hr-black-8   :background ,hr-black-3))))
   `(telephone-line-error                     ((t (                                                    :inherit error))))
   `(telephone-line-evil                      ((t (                                                    :weight normal))))
   `(telephone-line-evil-emacs                ((t (:foreground ,hr-black     :background ,hr-magenta   :inherit telephone-line-evil))))
   `(telephone-line-evil-insert               ((t (:foreground ,hr-black     :background ,hr-green     :inherit telephone-line-evil))))
   `(telephone-line-evil-motion               ((t (:foreground ,hr-black     :background ,hr-cyan      :inherit telephone-line-evil))))
   `(telephone-line-evil-normal               ((t (:foreground ,hr-black     :background ,hr-blue      :inherit telephone-line-evil))))
   `(telephone-line-evil-operator             ((t (:foreground ,hr-white     :background ,hr-black-8   :inherit telephone-line-evil))))
   `(telephone-line-evil-replace              ((t (:foreground ,hr-black     :background ,hr-orange    :inherit telephone-line-evil))))
   `(telephone-line-evil-visual               ((t (:foreground ,hr-black     :background ,hr-magenta   :inherit telephone-line-evil))))
   `(telephone-line-projectile                ((t (:foreground ,hr-fg))))
   `(telephone-line-unimportant               ((t (:foreground ,hr-white+6                             :inherit mode-line))))
   `(telephone-line-warning                   ((t (:foreground ,hr-orange                              :weight normal))))

;;;;; transient
   `(transient-active-infix                   ((t (:foreground ,hr-fg        :background ,hr-black-3))))
   `(transient-argument                       ((t (:foreground ,hr-orange                              :weight bold))))
   `(transient-disabled-suffix                ((t (:foreground ,hr-bg        :background ,hr-red       :weight bold))))
   `(transient-enabled-suffix                 ((t (:foreground ,hr-bg        :background ,hr-green     :weight bold))))
   `(transient-heading                        ((t (:foreground ,hr-blue))))
   `(transient-inactive-argument              ((t (:foreground ,hr-blue))))
   `(transient-inactive-value                 ((t (:foreground ,hr-blue))))
   `(transient-inapt-suffix                   ((t (:foreground ,hr-fg))))
   `(transient-key                            ((t (:foreground ,hr-yellow))))
   `(transient-mismatched-key                 ((t (:foreground ,hr-fg                                  :underline t))))
   `(transient-nonstandard-key                ((t (:foreground ,hr-fg                                  :underline t))))
   `(transient-separator                      ((t (:foreground ,hr-fg        :background ,hr-black-6))))
   `(transient-unreachable                    ((t (:foreground ,hr-fg))))
   `(transient-unreachable-key                ((t (:foreground ,hr-fg))))
   `(transient-value                          ((t (:foreground ,hr-magenta))))

;;;;; treemacs
   `(treemacs-directory-collapsed-face        ((t (:foreground ,hr-magenta))))
   `(treemacs-directory-face                  ((t (:foreground ,hr-magenta))))
   `(treemacs-file-face                       ((t (:foreground ,hr-fg))))
   `(treemacs-fringe-indicator-face           ((t (:foreground ,hr-fg))))
   `(treemacs-git-added-face                  ((t (:foreground ,hr-green))))
   `(treemacs-git-conflict-face               ((t (:foreground ,hr-red))))
   `(treemacs-git-ignored-face                ((t (:foreground ,hr-white+6))))
   `(treemacs-git-modified-face               ((t (:foreground ,hr-blue))))
   `(treemacs-git-renamed-face                ((t (:foreground ,hr-cyan))))
   `(treemacs-git-unmodified-face             ((t (:foreground ,hr-fg))))
   `(treemacs-git-untracked-face              ((t (:foreground ,hr-white+5))))
   `(treemacs-header-button-face              ((t (:foreground ,hr-blue                                :underline t))))
   `(treemacs-help-column-face                ((t (:foreground ,hr-yellow))))
   `(treemacs-help-title-face                 ((t (:foreground ,hr-blue))))
   `(treemacs-on-failure-pulse-face           ((t (:foreground ,hr-bg        :background ,hr-red))))
   `(treemacs-on-success-pulse-face           ((t (:foreground ,hr-bg        :background ,hr-green))))
   `(treemacs-root-face                       ((t (:foreground ,hr-orange))))
   `(treemacs-root-remote-disconnected-face   ((t (:foreground ,hr-yellow                              :weight bold))))
   `(treemacs-root-remote-face                ((t (:foreground ,hr-yellow))))
   `(treemacs-root-remote-unreadable-face     ((t (                                                    :inherit treemacs-root-remote-face :strike-through t))))
   `(treemacs-root-unreadable-face            ((t (                                                    :inherit treemacs-root-face :strike-through t))))
   `(treemacs-tags-face                       ((t (:foreground ,hr-blue))))
   `(treemacs-term-node-face                  ((t (:foreground ,hr-green))))

;;;;; vterm
   `(vterm-color-black                        ((t (:foreground ,hr-black-3   :background ,hr-black-6))))
   `(vterm-color-blue                         ((t (:foreground ,hr-blue+1    :background ,hr-blue))))
   `(vterm-color-cyan                         ((t (:foreground ,hr-cyan+1    :background ,hr-cyan))))
   `(vterm-color-default                      ((t (:foreground ,hr-fg        :background ,hr-bg))))
   `(vterm-color-green                        ((t (:foreground ,hr-green+1   :background ,hr-green))))
   `(vterm-color-inverse-video                ((t (                          :background ,hr-bg        :inverse-video t))))
   `(vterm-color-magenta                      ((t (:foreground ,hr-magenta+1 :background ,hr-magenta))))
   `(vterm-color-red                          ((t (:foreground ,hr-red+1     :background ,hr-red))))
   `(vterm-color-underline                    ((t (                                                    :underline t))))
   `(vterm-color-white                        ((t (:foreground ,hr-white+6   :background ,hr-fg))))
   `(vterm-color-yellow                       ((t (:foreground ,hr-orange    :background ,hr-yellow))))

;;;;; which-key
   `(which-key-command-description-face       ((t (:foreground ,hr-blue))))
   `(which-key-docstring-face                 ((t (:foreground ,hr-white+6))))
   `(which-key-group-description-face         ((t (:foreground ,hr-orange))))
   `(which-key-highlighted-command-face       ((t (:foreground ,hr-blue))))
   `(which-key-key-face                       ((t (:foreground ,hr-yellow))))
   `(which-key-local-map-description-face     ((t (:foreground ,hr-blue))))
   `(which-key-note-face                      ((t (:foreground ,hr-white+6))))
   `(which-key-separator-face                 ((t (:foreground ,hr-white+6))))
   `(which-key-special-key-face               ((t (:foreground ,hr-yellow))))

;;;;; winum
   `(winum-face                               ((t (:foreground ,hr-cyan                                :weight bold))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'hybrid-reverse)

(provide 'hybrid-reverse-theme)

;;; hybrid-reverse-theme.el ends here
