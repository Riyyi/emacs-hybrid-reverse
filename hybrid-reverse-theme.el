;;; hybrid-reverse-theme.el --- Emacs theme with material color scheme

;; Author: Riyyi
;; URL: https://github.com/riyyi/emacs-hybrid-reverse
;; Version: 0.1.0
;; Package-Requires: ((emacs "24"))

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

;; A port of the Vim theme Hybrid Reverse for Emacs 24+.
;;
;; Supported packages:
;; - avy
;; - centaur-tabs(?)
;; - company-mode
;; - flycheck
;; - ido-vertical-mode
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

(unless (>= emacs-major-version 24)
  (error "Hybrid Reverse theme requires Emacs 24 or later!"))

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
   `(custom-group-tag                         ((t (:foreground ,hr-blue))))
   `(custom-state                             ((t (:foreground ,hr-green))))
   `(custom-variable-tag                      ((t (:foreground ,hr-blue))))
   `(fringe                                   ((t (:foreground ,hr-fg        :background ,hr-bg))))
   `(highlight                                ((t (:foreground ,hr-yellow    :background ,hr-bg))))
   `(highlight-changes                        ((t (:foreground ,hr-red       :background ,hr-bg))))
   `(link                                     ((t (:foreground ,hr-blue      :background ,hr-bg))))
   `(link-visited                             ((t (:foreground ,hr-blue      :background ,hr-bg))))
   `(minibuffer-prompt                        ((t (:foreground ,hr-blue      :background ,hr-bg))))
   `(region                                   ((t (                          :background ,hr-black-6))))
   `(secondary-selection                      ((t (                          :background ,hr-black-3))))
   `(trailing-whitespace                      ((t (                          :background ,hr-red))))
   `(widget-button-pressed                    ((t (:foreground ,hr-orange))))

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

;;;;; line-number (Emacs 26.1 and above)
   `(line-number                              ((t (:foreground ,hr-white+5   :background ,hr-black-1))))
   `(line-number-current-line                 ((t (:foreground ,hr-yellow    :background ,hr-black-1   :weight bold))))

;;;;; mode-line
   `(mode-line                                ((t (:foreground ,hr-fg        :background ,hr-black-3))))
   `(mode-line-inactive                       ((t (:foreground ,hr-black-8   :background ,hr-black-3))))

;;;;; org-mode
   ;;..

;;;;; show-paren
   `(show-paren-match                         ((t (:foreground ,hr-cyan      :background ,hr-blue+1    :weight bold))))
   `(show-paren-mismatch                      ((t (:foreground ,hr-white+1   :background ,hr-red       :weight bold))))

;;;;; whitespace-mode
   ;;..

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

;;;;; flycheck
   `(flycheck-error                           ((t :underline (:color ,hr-red       :style wave))))
   `(flycheck-info                            ((t :underline (:color ,hr-cyan      :style wave))))
   `(flycheck-warning                         ((t :underline (:color ,hr-orange    :style wave))))
   `(flycheck-fringe-error                    ((t (:foreground ,hr-red))))
   `(flycheck-fringe-info                     ((t (:foreground ,hr-cyan))))
   `(flycheck-fringe-warning                  ((t (:foreground ,hr-orange))))

;;;;; ido-vertical-mode
   `(ido-vertical-match-face                  ((t (:foreground ,hr-yellow                              :weight bold :underline t))))

;;;;; rainbow-delimiters
   ;;..

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
   `(which-key-special-key-face               ((t (:foreground ,hr-yellow))))

   ))

(provide-theme 'hybrid-reverse)

;;; hybrid-reverse-theme.el ends here
