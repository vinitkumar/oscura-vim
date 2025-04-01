# Oscura Colorschemes

A collection of dark colorschemes for Vim based on VSCode themes. Oscura provides comfortable, eye-friendly dark themes that maintain good contrast and readability.

Based on this great Theme [Oscura](https://marketplace.visualstudio.com/items?itemName=Fey.oscura) for VScode. Please go and add a star there https://github.com/narative/oscura

## Available Themes

- **Oscura**: The original dark theme with a deep, rich background (#0B0B0F)
- **Oscura Dusk**: A slightly lighter variant with enhanced contrast (#131419)

## Screenshots

### Oscura
![screenshot](./nvim2.png)

### Oscura Dusk
![screenshot](./nvim3.png)


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

## Kitty Terminal Installation

### Manual Installation
1. Create a `kitty` directory in your terminal configuration directory:
```bash
mkdir -p ~/.config/kitty/themes
```

2. Copy the theme files:
```bash
cp kitty/oscura.conf ~/.config/kitty/themes/
cp kitty/oscura-dusk.conf ~/.config/kitty/themes/
```

3. To use the theme, you have two options:

   **Option 1**: Add to your `~/.config/kitty/kitty.conf`:
   ```bash
   # For Oscura theme
   include themes/oscura.conf

   # OR for Oscura Dusk theme
   include themes/oscura-dusk.conf
   ```

   **Option 2**: Use Kitty's theme selector:
   ```bash
   # For Oscura theme
   kitty +kitten themes Oscura

   # OR for Oscura Dusk theme
   kitty +kitten themes "Oscura Dusk"
   ```

### Using Kitty Theme Kitten

1. List available themes:
```bash
kitty +kitten themes
```

2. Preview and apply the theme:
```bash
# For Oscura theme
kitty +kitten themes --reload-in=all Oscura

# For Oscura Dusk theme
kitty +kitten themes --reload-in=all "Oscura Dusk"
```

The themes will be available in the Kitty Theme Kitten browser, where you can preview and apply them interactively.

## Ghostty Terminal Installation

### Manual Installation
1. Create the themes directory:
```bash
mkdir -p ~/.config/ghostty/themes
```

2. Copy the theme files:
```bash
cp ghostty/oscura ~/.config/ghostty/themes/
cp ghostty/oscura-dusk ~/.config/ghostty/themes/
```

3. To use the theme, add one of these lines to your Ghostty config file:
```bash
# For Oscura theme
theme = oscura

# OR for Oscura Dusk theme
theme = oscura-dusk
```

### Theme Files Location
The theme files can be located in:
- `~/.config/ghostty/themes` (recommended)
- You can also use absolute paths in your config file

## Nano Editor Installation

### Manual Installation
1. Create the required directories:
```bash
mkdir -p ~/.nano/syntax
```

2. Copy the theme files:
```bash
cp nano/main-oscura.nanorc ~/.nanorc
cp -r nano/syntax/* ~/.nano/syntax/
```

### Color Scheme
The theme uses the following color mappings:
- Keywords: yellow
- Functions and Types: green
- Comments: bright blue
- Strings and Numbers: yellow
- Decorators and Special: cyan
- Background: black
- Foreground: white

### Note
- Nano's color support is limited to basic terminal colors
- The theme adapts the Oscura color scheme to work within nano's limitations
- For best results, ensure your terminal supports basic colors
- Some terminals may display colors differently

### TypeScript Support
The theme includes comprehensive syntax highlighting for TypeScript:

- **Language Features**
  - Type annotations and interfaces
  - Generics and type parameters
  - Decorators
  - Modern TypeScript keywords
  - JSX/TSX syntax

- **Color Scheme**
  - Keywords: yellow
  - Types and Classes: green
  - Type Annotations: cyan
  - Decorators: magenta
  - Strings: yellow
  - Numbers: red
  - Comments: bright blue
  - Special Characters: magenta
  - Function Calls: green

- **File Types**
  - `.ts` - TypeScript files
  - `.tsx` - TypeScript React files

### Usage
TypeScript highlighting is automatically enabled for files with `.ts` and `.tsx` extensions.

### Note
For TSX files, ensure your nano version supports JSX syntax highlighting (nano 4.0 or later recommended).

## License

MIT License - see LICENSE file for details

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
