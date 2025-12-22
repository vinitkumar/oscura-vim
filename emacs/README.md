# Oscura Emacs Themes

This directory contains Emacs themes ported from the Oscura Vim colorschemes.

## Available Themes

- **oscura-theme.el** - The original dark theme
- **oscura-light-theme.el** - A light variant
- **oscura-dusk-theme.el** - A dusk variant (dark)
- **oscura-dusk-light-theme.el** - A light dusk variant

## Installation

### Manual Installation

1. Copy the desired theme file to your Emacs configuration directory:
   ```bash
   cp oscura-theme.el ~/.emacs.d/themes/
   ```

2. Add the themes directory to your theme path in your init.el:
   ```elisp
   (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
   ```

3. Load the theme:
   ```elisp
   (load-theme 'oscura t)
   ```

### Using use-package

```elisp
(use-package oscura-theme
  :load-path "path/to/oscura-vim/emacs"
  :config
  (load-theme 'oscura t))
```

## Testing

To test a theme in Emacs:

1. Open Emacs
2. M-x load-theme RET oscura RET
3. Or evaluate: `(load-theme 'oscura t)`

## Theme Features

All themes support:

- Basic Emacs faces
- Font-lock syntax highlighting
- Mode line customization
- Line numbers (including current line highlighting)
- Search and replace highlighting
- Diff mode
- Company mode
- Ivy/Helm/Swiper
- Magit
- Org mode
- Markdown mode
- Rainbow delimiters
- Flycheck/Flyspell
- LSP mode
- Treemacs
- Dired
- Eshell
- And many more...

## License

MIT License - Same as the parent project
