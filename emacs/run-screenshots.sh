#!/bin/bash

# Fully automated Emacs screenshot script

echo "Starting automated screenshot process..."

# Array of themes
declare -a themes=(
    "oscura:oscura-theme:emacs-oscura.png"
    "oscura-light:oscura-light-theme:emacs-oscura-light.png"
    "oscura-dusk:oscura-dusk-theme:emacs-oscura-dusk.png"
    "oscura-dusk-light:oscura-dusk-light-theme:emacs-oscura-dusk-light.png"
)

# Process each theme
for theme_info in "${themes[@]}"; do
    IFS=':' read -r theme_name theme_file output_file <<< "$theme_info"
    
    echo "Processing $theme_name..."
    
    # Create elisp config
    cat > /tmp/emacs-theme-config.el << ELISP
(add-to-list 'load-path "$(pwd)")
(require '${theme_file})
(load-theme '${theme_name} t)
(global-display-line-numbers-mode 1)
(find-file "sample-code.py")
ELISP
    
    # Launch Emacs in background
    /opt/homebrew/bin/emacs -Q -nw --load /tmp/emacs-theme-config.el &
    EMACS_PID=$!
    
    # Give it time to load
    sleep 2
    
    # Try to capture terminal output
    screencapture -x "${output_file}" 2>/dev/null || echo "Screenshot failed for $theme_name"
    
    # Kill Emacs
    kill $EMACS_PID 2>/dev/null
    
    sleep 1
done

echo "Process complete!"
ls -la *.png
