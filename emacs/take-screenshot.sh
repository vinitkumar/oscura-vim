#!/bin/bash

# Function to launch Emacs with a theme and take screenshot
launch_and_screenshot() {
    local theme_name=$1
    local theme_file=$2
    local output_name=$3
    
    echo "Launching Emacs with ${theme_name}..."
    
    # Create init file for this theme
    cat > /tmp/init-${theme_file}.el << INIT
;; Load the theme
(add-to-list 'load-path "$(pwd)/emacs")
(require '${theme_file})
(load-theme '${theme_name} t)

;; Configure Emacs
(set-frame-font "Monaco-14" nil t)
(global-display-line-numbers-mode 1)
(menu-bar-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Set window size
(when (display-graphic-p)
  (set-frame-size (selected-frame) 100 35)
  (set-frame-position (selected-frame) 100 50))

;; Open sample file
(find-file "$(pwd)/emacs/sample-code.py")
(goto-char (point-min))

;; Set window title
(setq frame-title-format '("Emacs - ${theme_name}"))
INIT

    # Launch Emacs in background
    emacs -Q --load /tmp/init-${theme_file}.el &
    EMACS_PID=$!
    
    # Wait for Emacs to fully load
    sleep 3
    
    # Take screenshot using screencapture
    # First, bring Emacs to front using AppleScript
    osascript -e 'tell application "Emacs" to activate' 2>/dev/null || true
    sleep 1
    
    # Take screenshot of the active window
    screencapture -o -w "$(pwd)/emacs/${output_name}"
    
    # Kill Emacs
    kill $EMACS_PID 2>/dev/null || true
    
    # Wait a bit before next theme
    sleep 2
}

# Main execution
echo "Starting Emacs theme screenshots..."

# Take screenshots for each theme
launch_and_screenshot "oscura" "oscura-theme" "emacs-oscura-dark.png"
launch_and_screenshot "oscura-light" "oscura-light-theme" "emacs-oscura-light.png"
launch_and_screenshot "oscura-dusk" "oscura-dusk-theme" "emacs-oscura-dusk.png"
launch_and_screenshot "oscura-dusk-light" "oscura-dusk-light-theme" "emacs-oscura-dusk-light.png"

echo "All screenshots completed!"
echo "Screenshots saved in: $(pwd)/emacs/"
ls -la emacs/*.png 2>/dev/null || echo "No screenshots found yet."
