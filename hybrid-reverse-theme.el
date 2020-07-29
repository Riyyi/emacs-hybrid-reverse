;;; hybrid-reverse-theme.el --- Emacs theme with material color scheme -*- lexical-binding: t; -*-

;; Author: Riyyi
;; URL: https://github.com/riyyi/emacs-hybrid-reverse
;; Version: 0.1.0
;; Package-Requires: ((emacs "24.1"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; A port of the Vim theme Hybrid Reverse for Emacs 24.1+.
;;
;; Supported packages:
;; - avy
;; - centaur-tabs
;; - company-mode
;; - elfeed
;; - evil
;; - flycheck
;; - ido-vertical-mode
;; - neotree
;; - php-mode
;; - rainbow-delimiters
;; - telephone-line
;; - which-key

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

(unless (or (> emacs-major-version 24)
			(and (= emacs-major-version 24)
				 (>= emacs-minor-version 1)))
  (error "Hybrid Reverse theme requires Emacs 24.1 or later!"))

(deftheme hybrid-reverse "The Hybrid Reverse color theme")

(defgroup hybrid-reverse nil
  "Hybrid Reverse theme."
  :group 'faces)

;;; Color Palette

(let ((class '((class color) (min-colors 89)))
	  (hr-white      "#ffffff") ; grey100
	  (hr-white+1    "#e4e4e4") ; grey90~
	  (hr-white+2    "#d0d0d0") ; grey82~
	  (hr-white+3    "#cccccc") ; grey80
	  (hr-fg         "#c5c8c6")
	  (hr-white+4    "#bcbcbc") ; grey74~
	  (hr-white+5    "#9e9e9e") ; grey62
	  (hr-white+6    "#707880")
	  ;; ----------------------
	  (hr-black-8    "#656565") ; grey40~
	  (hr-black-7    "#5f5f5f") ; grey37~
	  (hr-black-6    "#373b41")
	  (hr-black-5    "#383838") ; grey22
	  (hr-black-4    "#303030") ; grey19
	  (hr-black-3    "#282a2e")
	  (hr-black-2    "#1d1f21")
	  (hr-black-1    "#212121") ; grey13 ; Added
	  (hr-bg         "#1c1c1c") ; grey11
	  (hr-black      "#000000") ; grey0
	  ;; ----------------------
	  (hr-red-1      "#ffd7d7")
	  (hr-red        "#cc6666")
	  (hr-red+1      "#a54242") ; Added
	  (hr-red+2      "#5f0000")
	  ;; ----------------------
	  (hr-orange     "#de935f")
	  (hr-orange+1   "#875f00")
	  ;; ----------------------
	  (hr-yellow     "#f0c674")
	  (hr-yellow+1   "#5f5f00")
	  ;; ----------------------
	  (hr-green-1    "#d7ffd7")
	  (hr-green      "#b5bd68")
	  (hr-green+1    "#5f875f")
	  (hr-green+2    "#005f00")
	  ;; ----------------------
	  (hr-cyan       "#8abeb7")
	  (hr-cyan+1     "#005f5f")
	  ;; ----------------------
	  (hr-blue-1     "#d7d7ff")
	  (hr-blue       "#81a2be")
	  (hr-blue+1     "#5f5f87")
	  (hr-blue+2     "#00005f")
	  ;; ----------------------
	  (hr-magenta    "#b294bb")
	  (hr-magenta+1  "#5f005f"))

;;; Theme Faces

  (custom-theme-set-faces
   'hybrid-reverse

;;;; --- Built-in ---

;;;;; Basic coloring
   `(cursor                                   ((t (                          :background ,hr-white+1))))
   ;; Basic default face
   `(default                                  ((t (:foreground ,hr-fg        :background ,hr-bg))))
   `(escape-glyph                             ((t (:foreground ,hr-cyan))))
   `(error                                    ((t (:foreground ,hr-red       :background ,hr-bg))))
   `(success                                  ((t (:foreground ,hr-green                               :weight bold))))
   `(warning                                  ((t (:foreground ,hr-orange                              :weight bold))))

;;;;; UI
   `(border                                   ((t (:foreground ,hr-white+5))))
   `(custom-group-tag                         ((t (:foreground ,hr-blue))))
   `(custom-state                             ((t (:foreground ,hr-green))))
   `(custom-variable-tag                      ((t (:foreground ,hr-blue))))
   `(fringe                                   ((t (:foreground ,hr-fg        :background ,hr-bg))))
   `(highlight                                ((t (:foreground ,hr-yellow    :background ,hr-bg))))
   `(highlight-changes                        ((t (:foreground ,hr-red       :background ,hr-bg))))
   `(hl-line                                  ((t (                          :background ,hr-black-3))))
   `(link                                     ((t (:foreground ,hr-blue      :background ,hr-bg))))
   `(link-visited                             ((t (:foreground ,hr-blue      :background ,hr-bg))))
   `(minibuffer-prompt                        ((t (:foreground ,hr-blue      :background ,hr-bg))))
   `(region                                   ((t (                          :background ,hr-black-6))))
   `(secondary-selection                      ((t (                          :background ,hr-black-3))))
   `(widget-button-pressed                    ((t (:foreground ,hr-orange))))
   `(window-divider                           ((t (:foreground ,hr-white+5))))
   `(window-divider-first-pixel               ((t (:foreground ,hr-black-6))))
   `(window-divider-last-pixel                ((t (:foreground ,hr-black-6))))

;;;;; font lock
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

;;;;; ido
   `(ido-first-match                          ((t (:foreground ,hr-orange))))
   `(ido-indicator                            ((t (:foreground ,hr-red))))
   `(ido-only-match                           ((t (:foreground ,hr-green))))
   `(ido-subdir                               ((t (:foreground ,hr-magenta))))

;;;;; search
   `(isearch                                  ((t (:foreground ,hr-bg        :background ,hr-yellow))))
   `(isearch-fail                             ((t (:foreground ,hr-fg        :background ,hr-red+1))))
   `(lazy-highlight                           ((t (:foreground ,hr-bg        :background ,hr-white+5))))
   `(match                                    ((t (:foreground ,hr-bg        :background ,hr-blue))))

;;;;; sh-mode
   `(sh-heredoc                                ((t (:foreground nil                                     :inherit font-lock-string-face))))
   `(sh-quoted-exec                            ((t (:foreground nil                                     :inherit font-lock-preprocessor-face))))

;;;;; line-number (Emacs 26.1 and above)
   `(line-number                              ((t (:foreground ,hr-white+5   :background ,hr-black-1))))
   `(line-number-current-line                 ((t (:foreground ,hr-yellow    :background ,hr-black-1   :weight bold))))

;;; message-mode
   `(message-header-name                      ((t (:foreground ,hr-blue))))
   `(message-header-subject                   ((t (:foreground ,hr-green                               :weight bold))))
   `(message-header-to                        ((t (:foreground ,hr-green))))
   `(message-header-other                     ((t (:foreground ,hr-fg))))

;;;;; mode-line
   `(header-line                              ((t (                          :background ,hr-black-3))))
   `(mode-line                                ((t (:foreground ,hr-fg        :background ,hr-black-3))))
   `(mode-line-buffer-id                      ((t (:foreground ,hr-fg        :background ,hr-black-5))))
   `(mode-line-emphasis                       ((t (:foreground ,hr-fg        :background ,hr-black-5))))
   `(mode-line-inactive                       ((t (:foreground ,hr-black-8   :background ,hr-black-3))))
   `(mode-line-highlight                      ((t (                                                    :inherit highlight))))

;;;;; org-mode
   `(org-agenda-structure                     ((t (:foreground ,hr-magenta))))
   `(org-agenda-current-time                  ((t (:foreground ,hr-yellow))))
   `(org-agenda-date                          ((t (:foreground ,hr-blue                                :underline nil))))
   `(org-agenda-done                          ((t (:foreground ,hr-green))))
   `(org-agenda-dimmed-todo-face              ((t (:foreground ,hr-white+6))))
   `(org-block                                ((t (                          :background ,hr-black-3))))
   `(org-block-begin-line                     ((t (:foreground ,hr-white+6   :background ,hr-bg        :slant italic))))
   `(org-block-end-line                       ((t (:foreground ,hr-white+6   :background ,hr-bg        :slant italic))))
   `(org-code                                 ((t (:foreground ,hr-yellow))))
   `(org-column                               ((t (                          :background ,hr-black-6))))
   `(org-column-title                         ((t (                                                    :inherit org-column :weight bold :underline t))))
   `(org-date                                 ((t (:foreground ,hr-blue                                :underline t))))
   `(org-date-selected                        ((t (:foreground ,hr-cyan                                :inverse-video t))))
   `(org-document-info                        ((t (:foreground ,hr-green))))
   `(org-document-info-keyword                ((t (:foreground ,hr-blue))))
   `(org-document-title                       ((t (:foreground ,hr-green                               :weight bold))))
   `(org-done                                 ((t (:foreground ,hr-green))))
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

;;;;; outline
   `(outline-1                                ((t (:foreground ,hr-red))))
   `(outline-2                                ((t (:foreground ,hr-green))))
   `(outline-3                                ((t (:foreground ,hr-blue))))
   `(outline-4                                ((t (:foreground ,hr-yellow))))
   `(outline-5                                ((t (:foreground ,hr-red))))
   `(outline-6                                ((t (:foreground ,hr-green))))
   `(outline-7                                ((t (:foreground ,hr-blue))))
   `(outline-8                                ((t (:foreground ,hr-yellow))))

;;;;; show-paren
   `(show-paren-match                         ((t (:foreground ,hr-cyan      :background ,hr-blue+1    :weight bold))))
   `(show-paren-mismatch                      ((t (:foreground ,hr-white+1   :background ,hr-red       :weight bold))))

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

;;;;; avy
   `(avy-background-face                      ((t (:foreground ,hr-bg        :background ,hr-yellow    :weight bold))))
   `(avy-lead-face                            ((t (:foreground ,hr-bg        :background ,hr-yellow    :weight bold))))
   `(avy-lead-face-0                          ((t (:foreground ,hr-bg        :background ,hr-yellow    :weight bold))))
   `(avy-lead-face-1                          ((t (:foreground ,hr-bg        :background ,hr-yellow    :weight bold))))
   `(avy-lead-face-2                          ((t (:foreground ,hr-bg        :background ,hr-yellow    :weight bold))))

;;;;; centaur-tabs
   `(centaur-tabs-active-bar-face             ((t (:foreground ,hr-bg        :background ,hr-cyan))))
   `(centaur-tabs-default                     ((t (:foreground ,hr-black-3   :background ,hr-black-3))))
   `(centaur-tabs-modified-marker-selected    ((t (:foreground ,hr-white     :background ,hr-black-6))))
   `(centaur-tabs-modified-marker-unselected  ((t (:foreground ,hr-fg        :background ,hr-black-3))))
   `(centaur-tabs-selected                    ((t (:foreground ,hr-white     :background ,hr-black-6))))
   `(centaur-tabs-selected-modified           ((t (:foreground ,hr-white     :background ,hr-black-6))))
   `(centaur-tabs-unselected                  ((t (:foreground ,hr-fg        :background ,hr-black-3))))
   `(centaur-tabs-unselected-modified         ((t (:foreground ,hr-fg        :background ,hr-black-3))))

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

;;;;; neotree
   `(neo-banner-face                          ((t (:foreground ,hr-orange                              :weight bold))))
   `(neo-button-face                          ((t (                                                    :underline t))))
   `(neo-dir-link-face                        ((t (:foreground ,hr-blue))))
   `(neo-expand-btn-face                      ((t (:foreground ,hr-black-7))))
   `(neo-file-link-face                       ((t (:foreground ,hr-fg))))
   `(neo-header-face                          ((t (:foreground ,hr-fg        :background ,hr-black-3))))
   `(neo-root-dir-face                        ((t (:foreground ,hr-orange))))
   `(neo-vc-added-face                        ((t (:foreground ,hr-green))))
   `(neo-vc-conflict-face                     ((t (:foreground ,hr-red))))
   `(neo-vc-default-face                      ((t (:foreground ,hr-fg))))
   `(neo-vc-edited-face                       ((t (:foreground ,hr-magenta))))
   `(neo-vc-ignored-face                      ((t (:foreground ,hr-white+6))))
   `(neo-vc-missing-face                      ((t (:foreground ,hr-red))))
   `(neo-vc-needs-merge-face                  ((t (:foreground ,hr-red))))
   `(neo-vc-unlocked-changes-face             ((t (:foreground ,hr-orange                              :slant italic))))
   `(neo-vc-user-face                         ((t (:foreground ,hr-red                                 :slant italic))))

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
   ;; These are defined but not yet implemented by php-mode
   `(php-builtin                              ((t (:foreground ,hr-yellow))))
   `(php-constant-assign                      ((t (:foreground ,hr-fg))))
   `(php-control-structure                    ((t (:foreground ,hr-blue))))
   `(php-doc-annotation-tag                   ((t (:foreground ,hr-cyan))))
   `(php-doc-class-name                       ((t (:foreground ,hr-orange))))
   `(php-method-modifier                      ((t (:foreground ,hr-orange))))
   `(php-visibility-modifier                  ((t (:foreground ,hr-orange))))

;;;;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face          ((t (:foreground ,hr-fg))))
   `(rainbow-delimiters-depth-2-face          ((t (:foreground ,hr-cyan))))
   `(rainbow-delimiters-depth-3-face          ((t (:foreground ,hr-yellow))))
   `(rainbow-delimiters-depth-4-face          ((t (:foreground ,hr-green+1))))
   `(rainbow-delimiters-depth-5-face          ((t (:foreground ,hr-blue))))
   `(rainbow-delimiters-depth-6-face          ((t (:foreground ,hr-fg))))
   `(rainbow-delimiters-depth-7-face          ((t (:foreground ,hr-cyan))))
   `(rainbow-delimiters-depth-8-face          ((t (:foreground ,hr-yellow))))
   `(rainbow-delimiters-depth-9-face          ((t (:foreground ,hr-green+1))))
   `(rainbow-delimiters-depth-10-face         ((t (:foreground ,hr-blue))))
   `(rainbow-delimiters-unmatched-face        ((t (:foreground ,hr-red))))

;;;;; telephone-line
   `(telephone-line-accent-active             ((t (:foreground ,hr-fg        :background ,hr-black-5))))
   `(telephone-line-accent-inactive           ((t (:foreground ,hr-black-8   :background ,hr-black-3))))
   `(telephone-line-evil                      ((t (                                                    :weight normal))))
   `(telephone-line-evil-normal               ((t (:foreground ,hr-black     :background ,hr-blue))))
   `(telephone-line-evil-insert               ((t (:foreground ,hr-black     :background ,hr-green))))
   `(telephone-line-evil-visual               ((t (:foreground ,hr-black     :background ,hr-magenta))))
   `(telephone-line-evil-replace              ((t (:foreground ,hr-white     :background ,hr-black-3))))
   `(telephone-line-evil-operator             ((t (:foreground ,hr-black     :background ,hr-orange))))
   `(telephone-line-evil-motion               ((t (:foreground ,hr-black     :background ,hr-cyan))))
   `(telephone-line-evil-emacs                ((t (:foreground ,hr-black     :background ,hr-magenta))))
   `(telephone-line-projectile                ((t (:foreground ,hr-fg))))
   `(telephone-line-warning                   ((t (:foreground ,hr-orange                              :weight normal))))

;;;;; which-key
   `(which-key-command-description-face       ((t (:foreground ,hr-blue))))
   `(which-key-docstring-face                 ((t (:foreground ,hr-white+6))))
   `(which-key-group-description-face         ((t (:foreground ,hr-orange))))
   `(which-key-highlighted-command-face       ((t (:foreground ,hr-blue))))
   `(which-key-key-face                       ((t (:foreground ,hr-yellow))))
   `(which-key-local-map-description-face     ((t (:foreground ,hr-blue))))
   `(which-key-note-face                      ((t (:foreground ,hr-white+6))))
   `(which-key-separator-face                 ((t (:foreground ,hr-white+6))))
   `(which-key-special-key-face               ((t (:foreground ,hr-yellow))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'hybrid-reverse)

;;; hybrid-reverse-theme.el ends here
