#!/bin/bash

# Automated screenshot script for Emacs themes using AppleScript

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Function to take screenshot with AppleScript automation
take_screenshot_automated() {
    local theme_name=$1
    local theme_file=$2
    local output_name=$3
    
    echo "Processing ${theme_name} theme..."
    
    # Create init file
    cat > "/tmp/screenshot-${theme_file}.el" << ELISP
(add-to-list 'load-path "${SCRIPT_DIR}")
(require '${theme_file})
(load-theme '${theme_name} t)

(when (display-graphic-p)
  (set-frame-font "Monaco-14" nil t)
  (global-display-line-numbers-mode 1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (set-frame-size (selected-frame) 100 35))

(find-file "${SCRIPT_DIR}/sample-code.py")
(setq frame-title-format "Emacs - ${theme_name}")
ELISP

    # Use AppleScript to automate the process
    osascript << APPLESCRIPT
tell application "Terminal"
    activate
    
    -- Create new window
    set newTab to do script "cd '${SCRIPT_DIR}' && emacs -Q --load '/tmp/screenshot-${theme_file}.el'"
    
    -- Wait for Emacs to load
    delay 3
    
    -- Take screenshot
    do shell script "screencapture -w '${SCRIPT_DIR}/${output_name}'"
    
    -- Close the tab
    tell application "System Events"
        keystroke "w" using {command down}
    end tell
    
    delay 1
end tell
APPLESCRIPT

    # Clean up
    rm -f "/tmp/screenshot-${theme_file}.el"
    
    if [ -f "${SCRIPT_DIR}/${output_name}" ]; then
        echo "✓ Screenshot saved: ${output_name}"
    else
        echo "✗ Failed to save: ${output_name}"
    fi
}

echo "=== Automated Emacs Screenshot Tool ==="

# Take screenshots
take_screenshot_automated "oscura" "oscura-theme" "emacs-oscura.png"
take_screenshot_automated "oscura-light" "oscura-light-theme" "emacs-oscura-light.png"
take_screenshot_automated "oscura-dusk" "oscura-dusk-theme" "emacs-oscura-dusk.png"
take_screenshot_automated "oscura-dusk-light" "oscura-dusk-light-theme" "emacs-oscura-dusk-light.png"

echo ""
echo "Process complete. Check the emacs/ directory for screenshots."
