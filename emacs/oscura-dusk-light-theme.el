;;; oscura-dusk-light-theme.el --- A dusk variant light Emacs theme ported from Oscura Dusk Light Vim colorscheme

;; Copyright (C) 2025 Vinit Kumar

;; Author: Vinit Kumar
;; Version: 1.0
;; Package-Requires: ((emacs "24.3"))
;; Keywords: faces themes
;; URL: https://github.com/vinitkumar/oscura-vim

;; This file is not part of GNU Emacs.

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

;; A dusk variant light Emacs theme ported from Oscura Dusk Light Vim colorscheme

;;; Code:

(deftheme oscura-dusk-light
  "A dusk variant light Emacs theme ported from Oscura Dusk Light Vim colorscheme")

(let ((class '((class color) (min-colors 89)))
      ;; Color palette
      (bg           "#F8F9FA")
      (fg           "#2D3748")
      (comment      "#718096")
      (keyword      "#4A5568")
      (function     "#2B6CB0")
      (string       "#C05621")
      (number       "#C05621")
      (constant     "#C05621")
      (type         "#2B6CB0")
      (error        "#E53E3E")
      (warning      "#D69E2E")
      (special      "#4A5568")
      (visual       "#E2E8F0")
      (cursor       "#2B6CB0")
      (selection    "#CBD5E0")
      (linenum      "#A0AEC0")
      (linenum-act  "#2D3748")
      (matchbracket "#E2E8F0")
      (search       "#FEF5E7")
      (diffadd      "#C6F6D5")
      (diffdelete   "#FED7D7")
      (diffchange   "#FEF5E7")
      (difftext     "#E2E8F0")
      (link         "#3182CE")
      (attr         "#38A169")
      ;; Additional colors for better Emacs support
      (bg-alt       "#F0F0F0")
      (bg-dark      "#E8E8E8")
      (fg-alt       "#505050"))

  (custom-theme-set-faces
   'oscura-dusk-light

   ;; Basic faces
   `(default ((,class (:background ,bg :foreground ,fg))))
   `(cursor ((,class (:background ,cursor))))
   `(region ((,class (:background ,selection :extend t))))
   `(highlight ((,class (:background ,visual))))
   `(secondary-selection ((,class (:background ,matchbracket))))
   `(fringe ((,class (:background ,bg))))
   `(vertical-border ((,class (:foreground ,linenum))))
   `(link ((,class (:foreground ,link :underline t))))
   `(link-visited ((,class (:foreground ,link :underline t))))
   `(match ((,class (:background ,search :foreground ,bg))))
   `(trailing-whitespace ((,class (:background ,error))))
   `(tooltip ((,class (:background ,bg-alt :foreground ,fg))))

   ;; Font-lock faces
   `(font-lock-builtin-face ((,class (:foreground ,keyword))))
   `(font-lock-comment-face ((,class (:foreground ,comment :italic t))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,comment :italic t))))
   `(font-lock-constant-face ((,class (:foreground ,constant))))
   `(font-lock-doc-face ((,class (:foreground ,comment :italic t))))
   `(font-lock-function-name-face ((,class (:foreground ,function))))
   `(font-lock-keyword-face ((,class (:foreground ,keyword))))
   `(font-lock-negation-char-face ((,class (:foreground ,keyword))))
   `(font-lock-preprocessor-face ((,class (:foreground ,keyword))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,special))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,special))))
   `(font-lock-string-face ((,class (:foreground ,string))))
   `(font-lock-type-face ((,class (:foreground ,type))))
   `(font-lock-variable-name-face ((,class (:foreground ,fg))))
   `(font-lock-warning-face ((,class (:foreground ,warning :bold t))))

   ;; Mode line
   `(mode-line ((,class (:background ,visual :foreground ,fg :box nil))))
   `(mode-line-inactive ((,class (:background ,bg-alt :foreground ,comment :box nil))))
   `(mode-line-buffer-id ((,class (:foreground ,function :bold t))))
   `(mode-line-emphasis ((,class (:foreground ,function))))
   `(mode-line-highlight ((,class (:foreground ,keyword))))

   ;; Header line
   `(header-line ((,class (:background ,visual :foreground ,fg :box nil))))

   ;; Line numbers
   `(line-number ((,class (:foreground ,linenum :background ,bg))))
   `(line-number-current-line ((,class (:foreground ,linenum-act :background ,bg :bold t))))

   ;; Hl-line
   `(hl-line ((,class (:background ,bg :extend t))))

   ;; Search
   `(isearch ((,class (:background ,search :foreground ,bg))))
   `(isearch-fail ((,class (:background ,error :foreground ,fg))))
   `(lazy-highlight ((,class (:background ,matchbracket :foreground ,fg))))

   ;; Diff mode
   `(diff-added ((,class (:background ,diffadd :foreground ,fg :extend t))))
   `(diff-removed ((,class (:background ,diffdelete :foreground ,fg :extend t))))
   `(diff-changed ((,class (:background ,diffchange :foreground ,fg :extend t))))
   `(diff-refine-added ((,class (:background ,diffadd :foreground ,fg))))
   `(diff-refine-removed ((,class (:background ,diffdelete :foreground ,fg))))
   `(diff-refine-changed ((,class (:background ,diffchange :foreground ,fg))))
   `(diff-header ((,class (:background ,bg-alt :foreground ,fg))))
   `(diff-file-header ((,class (:background ,bg-alt :foreground ,fg :bold t))))
   `(diff-hunk-header ((,class (:background ,bg-alt :foreground ,function))))

   ;; Ediff
   `(ediff-even-diff-A ((,class (:background ,bg-alt))))
   `(ediff-even-diff-B ((,class (:background ,bg-alt))))
   `(ediff-even-diff-C ((,class (:background ,bg-alt))))
   `(ediff-odd-diff-A ((,class (:background ,bg-alt))))
   `(ediff-odd-diff-B ((,class (:background ,bg-alt))))
   `(ediff-odd-diff-C ((,class (:background ,bg-alt))))
   `(ediff-current-diff-A ((,class (:background ,diffdelete :foreground ,fg))))
   `(ediff-current-diff-B ((,class (:background ,diffadd :foreground ,fg))))
   `(ediff-current-diff-C ((,class (:background ,diffchange :foreground ,fg))))
   `(ediff-fine-diff-A ((,class (:background ,error :foreground ,fg))))
   `(ediff-fine-diff-B ((,class (:background ,diffadd :foreground ,fg))))
   `(ediff-fine-diff-C ((,class (:background ,diffchange :foreground ,fg))))

   ;; Company mode
   `(company-tooltip ((,class (:background ,visual :foreground ,fg))))
   `(company-tooltip-selection ((,class (:background ,selection :foreground ,fg))))
   `(company-tooltip-common ((,class (:foreground ,function))))
   `(company-tooltip-annotation ((,class (:foreground ,comment))))
   `(company-scrollbar-bg ((,class (:background ,bg-alt))))
   `(company-scrollbar-fg ((,class (:background ,selection))))
   `(company-preview ((,class (:background ,visual :foreground ,fg))))
   `(company-preview-common ((,class (:background ,visual :foreground ,function))))

   ;; Which-key
   `(which-key-key-face ((,class (:foreground ,function))))
   `(which-key-separator-face ((,class (:foreground ,comment))))
   `(which-key-command-description-face ((,class (:foreground ,fg))))
   `(which-key-group-description-face ((,class (:foreground ,keyword))))

   ;; Ivy/Swiper/Counsel
   `(ivy-current-match ((,class (:background ,selection :foreground ,fg :extend t))))
   `(ivy-minibuffer-match-face-1 ((,class (:background ,matchbracket))))
   `(ivy-minibuffer-match-face-2 ((,class (:background ,search :foreground ,bg))))
   `(ivy-minibuffer-match-face-3 ((,class (:background ,search :foreground ,bg))))
   `(ivy-minibuffer-match-face-4 ((,class (:background ,search :foreground ,bg))))
   `(ivy-match-required-face ((,class (:foreground ,error))))
   `(ivy-modified-buffer ((,class (:foreground ,warning))))
   `(ivy-remote ((,class (:foreground ,link))))
   `(ivy-virtual ((,class (:foreground ,comment))))

   ;; Helm
   `(helm-header ((,class (:background ,bg :foreground ,fg))))
   `(helm-source-header ((,class (:background ,visual :foreground ,fg :bold t))))
   `(helm-selection ((,class (:background ,selection :foreground ,fg))))
   `(helm-visible-mark ((,class (:background ,matchbracket :foreground ,fg))))
   `(helm-candidate-number ((,class (:background ,bg :foreground ,function))))
   `(helm-ff-directory ((,class (:foreground ,function))))
   `(helm-ff-executable ((,class (:foreground ,string))))
   `(helm-ff-symlink ((,class (:foreground ,link))))
   `(helm-ff-prefix ((,class (:background ,keyword :foreground ,bg))))
   `(helm-M-x-key ((,class (:foreground ,function))))
   `(helm-buffer-size ((,class (:foreground ,comment))))
   `(helm-buffer-not-saved ((,class (:foreground ,warning))))
   `(helm-buffer-process ((,class (:foreground ,keyword))))
   `(helm-buffer-saved-out ((,class (:background ,warning :foreground ,bg))))
   `(helm-buffer-directory ((,class (:foreground ,function))))

   ;; Magit
   `(magit-branch-local ((,class (:foreground ,function))))
   `(magit-branch-remote ((,class (:foreground ,string))))
   `(magit-section-heading ((,class (:foreground ,keyword :bold t))))
   `(magit-section-highlight ((,class (:background ,visual :extend t))))
   `(magit-diff-context-highlight ((,class (:background ,bg-alt :extend t))))
   `(magit-diff-file-heading ((,class (:foreground ,fg :extend t))))
   `(magit-diff-removed ((,class (:foreground ,diffdelete :extend t))))
   `(magit-diff-removed-highlight ((,class (:background ,diffdelete :foreground ,fg :extend t))))
   `(magit-diff-added ((,class (:foreground ,diffadd :extend t))))
   `(magit-diff-added-highlight ((,class (:background ,diffadd :foreground ,fg :extend t))))
   `(magit-diff-changed ((,class (:foreground ,diffchange :extend t))))
   `(magit-diff-changed-highlight ((,class (:background ,diffchange :foreground ,fg :extend t))))
   `(magit-diffstat-added ((,class (:foreground ,diffadd))))
   `(magit-diffstat-removed ((,class (:foreground ,diffdelete))))
   `(magit-process-ok ((,class (:foreground ,function))))
   `(magit-process-ng ((,class (:foreground ,error))))
   `(magit-log-author ((,class (:foreground ,string))))
   `(magit-log-date ((,class (:foreground ,comment))))
   `(magit-log-graph ((,class (:foreground ,comment))))
   `(magit-hash ((,class (:foreground ,comment))))

   ;; Org mode
   `(org-level-1 ((,class (:foreground ,function :bold t))))
   `(org-level-2 ((,class (:foreground ,keyword :bold t))))
   `(org-level-3 ((,class (:foreground ,type :bold t))))
   `(org-level-4 ((,class (:foreground ,string :bold t))))
   `(org-level-5 ((,class (:foreground ,constant :bold t))))
   `(org-level-6 ((,class (:foreground ,fg :bold t))))
   `(org-level-7 ((,class (:foreground ,special :bold t))))
   `(org-level-8 ((,class (:foreground ,comment :bold t))))
   `(org-document-title ((,class (:foreground ,function :bold t))))
   `(org-document-info ((,class (:foreground ,fg))))
   `(org-document-info-keyword ((,class (:foreground ,comment))))
   `(org-todo ((,class (:foreground ,error :bold t))))
   `(org-done ((,class (:foreground ,diffadd :bold t))))
   `(org-date ((,class (:foreground ,link :underline t))))
   `(org-link ((,class (:foreground ,link :underline t))))
   `(org-special-keyword ((,class (:foreground ,comment))))
   `(org-block ((,class (:background ,bg-alt :extend t))))
   `(org-block-begin-line ((,class (:background ,bg-alt :foreground ,comment :extend t))))
   `(org-block-end-line ((,class (:background ,bg-alt :foreground ,comment :extend t))))
   `(org-quote ((,class (:background ,bg-alt :extend t))))
   `(org-code ((,class (:foreground ,string))))
   `(org-verbatim ((,class (:foreground ,constant))))
   `(org-formula ((,class (:foreground ,type))))
   `(org-table ((,class (:foreground ,fg))))

   ;; Markdown mode
   `(markdown-header-face-1 ((,class (:foreground ,function :bold t))))
   `(markdown-header-face-2 ((,class (:foreground ,keyword :bold t))))
   `(markdown-header-face-3 ((,class (:foreground ,type :bold t))))
   `(markdown-header-face-4 ((,class (:foreground ,string :bold t))))
   `(markdown-header-face-5 ((,class (:foreground ,constant :bold t))))
   `(markdown-header-face-6 ((,class (:foreground ,fg :bold t))))
   `(markdown-bold-face ((,class (:bold t))))
   `(markdown-italic-face ((,class (:italic t))))
   `(markdown-link-face ((,class (:foreground ,link :underline t))))
   `(markdown-url-face ((,class (:foreground ,link :underline t))))
   `(markdown-inline-code-face ((,class (:foreground ,string))))
   `(markdown-pre-face ((,class (:foreground ,string))))
   `(markdown-blockquote-face ((,class (:foreground ,comment :italic t))))
   `(markdown-reference-face ((,class (:foreground ,comment))))

   ;; Rainbow delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,function))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,type))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,string))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,constant))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,keyword))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,function))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,type))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,string))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,constant))))

   ;; Show paren
   `(show-paren-match ((,class (:background ,matchbracket :foreground ,fg :bold t))))
   `(show-paren-mismatch ((,class (:background ,error :foreground ,fg :bold t))))

   ;; Flycheck
   `(flycheck-error ((,class (:underline (:style wave :color ,error)))))
   `(flycheck-warning ((,class (:underline (:style wave :color ,warning)))))
   `(flycheck-info ((,class (:underline (:style wave :color ,keyword)))))
   `(flycheck-fringe-error ((,class (:foreground ,error))))
   `(flycheck-fringe-warning ((,class (:foreground ,warning))))
   `(flycheck-fringe-info ((,class (:foreground ,keyword))))

   ;; Flyspell
   `(flyspell-duplicate ((,class (:underline (:style wave :color ,warning)))))
   `(flyspell-incorrect ((,class (:underline (:style wave :color ,error)))))

   ;; Treemacs
   `(treemacs-directory-face ((,class (:foreground ,function))))
   `(treemacs-file-face ((,class (:foreground ,fg))))
   `(treemacs-root-face ((,class (:foreground ,keyword :bold t))))
   `(treemacs-git-modified-face ((,class (:foreground ,warning))))
   `(treemacs-git-staged-face ((,class (:foreground ,function))))
   `(treemacs-git-untracked-face ((,class (:foreground ,comment))))

   ;; LSP
   `(lsp-headerline-breadcrumb-path-face ((,class (:foreground ,comment))))
   `(lsp-headerline-breadcrumb-symbols-face ((,class (:foreground ,fg))))
   `(lsp-headerline-breadcrumb-separator-face ((,class (:foreground ,comment))))
   `(lsp-ui-doc-background ((,class (:background ,visual))))
   `(lsp-ui-doc-header ((,class (:background ,keyword :foreground ,bg))))
   `(lsp-ui-peek-filename ((,class (:foreground ,string))))
   `(lsp-ui-peek-header ((,class (:background ,keyword :foreground ,bg))))
   `(lsp-ui-peek-selection ((,class (:background ,selection :foreground ,fg))))
   `(lsp-ui-peek-list ((,class (:background ,bg-alt))))
   `(lsp-ui-peek-peek ((,class (:background ,bg-alt))))
   `(lsp-ui-peek-highlight ((,class (:background ,search :foreground ,bg))))
   `(lsp-ui-peek-line-number ((,class (:foreground ,comment))))
   `(lsp-ui-sideline-symbol ((,class (:foreground ,comment :box nil))))
   `(lsp-ui-sideline-current-symbol ((,class (:foreground ,fg :box nil))))
   `(lsp-ui-sideline-code-action ((,class (:foreground ,warning))))
   `(lsp-ui-sideline-symbol-info ((,class (:foreground ,comment :italic t))))

   ;; Term/Ansi colors
   `(term-color-black ((,class (:foreground ,bg :background ,bg))))
   `(term-color-red ((,class (:foreground ,error :background ,error))))
   `(term-color-green ((,class (:foreground ,diffadd :background ,diffadd))))
   `(term-color-yellow ((,class (:foreground ,warning :background ,warning))))
   `(term-color-blue ((,class (:foreground ,keyword :background ,keyword))))
   `(term-color-magenta ((,class (:foreground ,constant :background ,constant))))
   `(term-color-cyan ((,class (:foreground ,function :background ,function))))
   `(term-color-white ((,class (:foreground ,fg :background ,fg))))

   ;; Ansi colors
   `(ansi-color-black ((,class (:foreground ,bg :background ,bg))))
   `(ansi-color-red ((,class (:foreground ,error :background ,error))))
   `(ansi-color-green ((,class (:foreground ,diffadd :background ,diffadd))))
   `(ansi-color-yellow ((,class (:foreground ,warning :background ,warning))))
   `(ansi-color-blue ((,class (:foreground ,keyword :background ,keyword))))
   `(ansi-color-magenta ((,class (:foreground ,constant :background ,constant))))
   `(ansi-color-cyan ((,class (:foreground ,function :background ,function))))
   `(ansi-color-white ((,class (:foreground ,fg :background ,fg))))

   ;; Eshell
   `(eshell-prompt ((,class (:foreground ,function :bold t))))
   `(eshell-ls-directory ((,class (:foreground ,function))))
   `(eshell-ls-symlink ((,class (:foreground ,link))))
   `(eshell-ls-executable ((,class (:foreground ,string))))

   ;; Dired
   `(dired-directory ((,class (:foreground ,function))))
   `(dired-symlink ((,class (:foreground ,link))))
   `(dired-special ((,class (:foreground ,warning))))
   `(dired-executable ((,class (:foreground ,string))))
   `(dired-marked ((,class (:foreground ,constant :bold t))))
   `(dired-flagged ((,class (:foreground ,error :bold t))))
   `(dired-header ((,class (:foreground ,keyword :bold t))))

   ;; Compilation
   `(compilation-info ((,class (:foreground ,function))))
   `(compilation-warning ((,class (:foreground ,warning))))
   `(compilation-error ((,class (:foreground ,error))))
   `(compilation-mode-line-exit ((,class (:foreground ,function))))
   `(compilation-mode-line-fail ((,class (:foreground ,error))))
   `(compilation-mode-line-run ((,class (:foreground ,keyword))))

   ;; Minibuffer
   `(minibuffer-prompt ((,class (:foreground ,function :bold t))))
   `(completions-common-part ((,class (:foreground ,function))))
   `(completions-first-difference ((,class (:foreground ,keyword :bold t))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'oscura-dusk-light)

;;; oscura-dusk-light-theme.el ends here
