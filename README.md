# Oscura Vim Colorschemes

A collection of dark colorschemes for Vim based on VSCode themes. Oscura provides comfortable, eye-friendly dark themes that maintain good contrast and readability.

Based on this great Theme [Oscura](https://marketplace.visualstudio.com/items?itemName=Fey.oscura) for VScode. Please go and add a star there https://github.com/narative/oscura

## Available Themes

- **Oscura**: The original dark theme with a deep, rich background (#0B0B0F)
- **Oscura Dusk**: A slightly lighter variant with enhanced contrast (#131419)

## Screenshots

### Oscura
![screenshot](./nvim2.png)
![screenshot](./nvim3.png)

### Oscura Dusk
[Add screenshot for Dusk variant]

## Features

- Two dark themes optimized for long coding sessions
- High contrast for better readability
- Comprehensive syntax highlighting for multiple programming languages
- Enhanced TypeScript/JavaScript support
- Support for common Vim UI elements (status line, line numbers, etc.)
- Git diff highlighting
- Search and visual mode highlighting

## Installation

### Manual Installation

1. Download the colorscheme files
2. Place them in your `~/.vim/colors/` directory (create the directory if it doesn't exist)

```bash
mkdir -p ~/.vim/colors
cp oscura.vim ~/.vim/colors/
cp oscura-dusk.vim ~/.vim/colors/
```

### Using a Plugin Manager

#### Vim-Plug
Add this to your `.vimrc`:
```vim
Plug 'vinitkumar/oscura-vim'
```

#### Packer
Add this to your Neovim config:
```lua
use 'vinitkumar/oscura-vim'
```

#### Lazy.nvim
Add this to your Neovim config:
```lua
{
  'vinitkumar/oscura-vim',
  lazy = false, -- Load during startup
}
```

## Usage

Add one of these lines to your `.vimrc`:
```vim
" For the original dark theme
colorscheme oscura

" For the dusk variant
colorscheme oscura-dusk
```

## Requirements

- Vim 7.4 or later
- True color support (recommended)

## Theme Comparison

### Oscura (Original)
- Deeper background (#0B0B0F)
- Classic dark theme aesthetics
- Optimal for low-light environments

### Oscura Dusk
- Slightly lighter background (#131419)
- Enhanced contrast for better readability
- Optimized for various lighting conditions
- Updated error and warning colors
- Enhanced TypeScript/JavaScript support

## License

MIT License - see LICENSE file for details

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
