;;; test-config.el --- Configuration for testing Oscura themes

;; Add the current directory to the load path
(add-to-list 'load-path (file-name-directory load-file-name))

;; Function to load a theme by name
(defun load-oscura-theme (theme-name)
  "Load the specified Oscura theme."
  (load-theme (intern theme-name) t))

;; Display the current theme in the mode line
(setq-default mode-line-format
              '("%e"
                mode-line-front-space
                mode-line-mule-info
                mode-line-client
                mode-line-modified
                mode-line-remote
                mode-line-frame-identification
                mode-line-buffer-identification
                "   "
                mode-line-position
                "  "
                "Theme: " (:eval (symbol-name (car custom-enabled-themes)))
                mode-line-end-spaces))

;; Set font to a nice programming font if available
(cond
 ((find-font (font-spec :name "SF Mono"))
  (set-frame-font "SF Mono-14" nil t))
 ((find-font (font-spec :name "Monaco"))
  (set-frame-font "Monaco-14" nil t))
 ((find-font (font-spec :name "Menlo"))
  (set-frame-font "Menlo-14" nil t))
 ((find-font (font-spec :name "Consolas"))
  (set-frame-font "Consolas-14" nil t)))

;; Enable line numbers
(global-display-line-numbers-mode 1)

;; Enable syntax highlighting
(global-font-lock-mode 1)

;; Set frame size
(when (display-graphic-p)
  (set-frame-size (selected-frame) 120 40))

;;; test-config.el ends here
