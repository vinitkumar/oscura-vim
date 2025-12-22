#!/bin/bash

# Script to take screenshots of Emacs themes on macOS
# This version uses the GUI Emacs.app

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

echo "Script directory: $SCRIPT_DIR"
echo "Project directory: $PROJECT_DIR"

# Function to create Emacs config and launch
create_and_launch() {
    local theme_name=$1
    local theme_file=$2
    local output_name=$3
    
    echo "Setting up ${theme_name} theme..."
    
    # Create a temporary elisp file for this theme
    cat > "/tmp/emacs-screenshot-${theme_file}.el" << ELISP
;; Screenshot configuration for ${theme_name}

;; Add theme directory to load path
(add-to-list 'load-path "${SCRIPT_DIR}")

;; Load the theme file
(require '${theme_file})

;; Apply the theme
(load-theme '${theme_name} t)

;; Configure display
(when (display-graphic-p)
  ;; Set a nice font
  (cond
   ((member "SF Mono" (font-family-list))
    (set-frame-font "SF Mono-14" nil t))
   ((member "Monaco" (font-family-list))
    (set-frame-font "Monaco-14" nil t))
   ((member "Menlo" (font-family-list))
    (set-frame-font "Menlo-14" nil t)))
  
  ;; Enable line numbers
  (global-display-line-numbers-mode 1)
  
  ;; Configure UI
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  
  ;; Set frame size and position
  (set-frame-size (selected-frame) 120 40)
  (set-frame-position (selected-frame) 100 50)
  
  ;; Set title
  (setq frame-title-format "Emacs - ${theme_name}")
  
  ;; Open the sample file
  (find-file "${SCRIPT_DIR}/sample-code.py")
  (goto-char (point-min))
  
  ;; Force redisplay
  (redisplay t))

;; Message to user
(message "Theme ${theme_name} loaded. Close this window when ready...")
ELISP

    # Launch Emacs using the open command (for GUI app)
    echo "Launching Emacs GUI with ${theme_name} theme..."
    echo "Please take a screenshot manually and then close the Emacs window."
    
    # Try to use Emacs.app if available
    if [ -d "/Applications/Emacs.app" ]; then
        open -W -a /Applications/Emacs.app --args -Q --load "/tmp/emacs-screenshot-${theme_file}.el"
    else
        # Use command line emacs
        emacs -Q --load "/tmp/emacs-screenshot-${theme_file}.el"
    fi
    
    # Clean up temp file
    rm -f "/tmp/emacs-screenshot-${theme_file}.el"
    
    echo "Ready for next theme..."
    echo ""
}

# Main execution
echo "=== Emacs Theme Screenshot Helper ==="
echo "This script will launch Emacs with each theme."
echo "You'll need to take screenshots manually."
echo ""

# Check for theme files
for theme_file in oscura-theme.el oscura-light-theme.el oscura-dusk-theme.el oscura-dusk-light-theme.el; do
    if [ ! -f "${SCRIPT_DIR}/${theme_file}" ]; then
        echo "Error: ${theme_file} not found in ${SCRIPT_DIR}"
        exit 1
    fi
done

echo "All theme files found. Starting..."
echo ""

# Launch each theme
create_and_launch "oscura" "oscura-theme" "oscura-dark.png"
create_and_launch "oscura-light" "oscura-light-theme" "oscura-light.png"
create_and_launch "oscura-dusk" "oscura-dusk-theme" "oscura-dusk.png"
create_and_launch "oscura-dusk-light" "oscura-dusk-light-theme" "oscura-dusk-light.png"

echo "=== All themes displayed ==="
echo "Remember to save your screenshots!"
