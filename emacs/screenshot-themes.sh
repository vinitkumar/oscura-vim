#!/bin/bash

# Function to take a screenshot of Emacs with a specific theme
take_emacs_screenshot() {
    local theme_name=$1
    local screenshot_name=$2
    
    echo "Loading Emacs with ${theme_name}..."
    
    # Create a temporary Emacs init file for this theme
    cat > /tmp/emacs-theme-init.el << INIT
(add-to-list 'load-path "$(pwd)/emacs")
(load-theme '${theme_name} t)

;; Set font
(cond
 ((find-font (font-spec :name "SF Mono"))
  (set-frame-font "SF Mono-14" nil t))
 ((find-font (font-spec :name "Monaco"))
  (set-frame-font "Monaco-14" nil t))
 ((find-font (font-spec :name "Menlo"))
  (set-frame-font "Menlo-14" nil t)))

;; Enable line numbers
(global-display-line-numbers-mode 1)

;; Set frame size
(when (display-graphic-p)
  (set-frame-size (selected-frame) 120 40))

;; Open the sample file
(find-file "$(pwd)/emacs/sample-code.py")

;; Wait a bit for everything to load
(run-with-timer 2 nil (lambda () 
                        (shell-command (format "screencapture -w %s" "${screenshot_name}"))
                        (kill-emacs)))
INIT
    
    # Launch Emacs with the custom init file
    emacs -Q --load /tmp/emacs-theme-init.el &
    
    # Wait for the screenshot to be taken
    sleep 5
}

# Change to the emacs directory
cd "$(dirname "$0")"

# Take screenshots for each theme
echo "Taking screenshots of Oscura themes in Emacs..."

take_emacs_screenshot "oscura" "oscura-dark-emacs.png"
take_emacs_screenshot "oscura-light" "oscura-light-emacs.png"
take_emacs_screenshot "oscura-dusk" "oscura-dusk-emacs.png"
take_emacs_screenshot "oscura-dusk-light" "oscura-dusk-light-emacs.png"

echo "Screenshots completed!"
