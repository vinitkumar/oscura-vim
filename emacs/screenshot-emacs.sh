#!/bin/bash

# Screenshot script for Emacs themes on macOS

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "=== Emacs Theme Screenshot Tool ==="
echo "This will open Emacs with each theme loaded."
echo "After each theme loads:"
echo "1. Use Cmd+Shift+4 then Space to take a window screenshot"
echo "2. Click on the Emacs window"
echo "3. Close Emacs with Cmd+Q"
echo ""
echo "Press Enter to continue..."
read

# Function to launch Emacs with a theme
launch_theme() {
    local theme_name=$1
    local theme_file=$2
    
    echo ""
    echo "Loading ${theme_name} theme..."
    
    # Create temporary init file
    cat > "/tmp/theme-init.el" << ELISP
(add-to-list 'load-path "${SCRIPT_DIR}")
(require '${theme_file})
(load-theme '${theme_name} t)
(set-frame-font "Monaco-14" nil t)
(global-display-line-numbers-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-frame-size (selected-frame) 100 35)
(find-file "${SCRIPT_DIR}/sample-code.py")
(message "Theme: ${theme_name}")
ELISP

    # Launch Emacs
    if [ -d "/Applications/Emacs.app" ]; then
        open -W -a /Applications/Emacs.app --args -Q --load /tmp/theme-init.el
    else
        emacs -Q --load /tmp/theme-init.el
    fi
    
    echo "Screenshot taken for ${theme_name}? Press Enter to continue..."
    read
}

# Process each theme
launch_theme "oscura" "oscura-theme"
launch_theme "oscura-light" "oscura-light-theme"
launch_theme "oscura-dusk" "oscura-dusk-theme"
launch_theme "oscura-dusk-light" "oscura-dusk-light-theme"

echo ""
echo "All themes processed!"
echo "Remember to rename your screenshots appropriately."

# Clean up
rm -f /tmp/theme-init.el
