# Oscura Vim Colorscheme

A dark colorscheme for Vim based on a VSCode theme. Oscura provides a comfortable, eye-friendly dark theme that maintains good contrast and readability.

Based on this great Theme [Oscura](https://marketplace.visualstudio.com/items?itemName=Fey.oscura) for VScode. Please go and add a star there https://github.com/narative/oscura

## Screenshot

![screenshot](./nvim2.png)
![screenshot](./nvim3.png)

## Features

- Dark theme optimized for long coding sessions
- High contrast for better readability
- Syntax highlighting for multiple programming languages
- Support for common Vim UI elements (status line, line numbers, etc.)
- Git diff highlighting
- Search and visual mode highlighting

## Installation

### Manual Installation

1. Download the `oscura.vim` file
2. Place it in your `~/.vim/colors/` directory (create the directory if it doesn't exist)

```bash
mkdir -p ~/.vim/colors
cp oscura.vim ~/.vim/colors/
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

Add this line to your `.vimrc`:
```vim
colorscheme oscura
```

## Requirements

- Vim 7.4 or later
- True color support (recommended)

## License

MIT License - see LICENSE file for details

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
