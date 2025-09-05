" Oscura Dusk - A dark Vim/Neovim colorscheme ported from VS Code
" Author: Vinit Kumar
" Created: March 20, 2025
" License MIT

" Setup
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "oscura-dusk"

" Define colors
let s:bg           = "#131419"    " Changed from #0B0B0F
let s:fg           = "#E6E6E6"
let s:comment      = "#46474F"
let s:keyword      = "#9099A1"
let s:function     = "#E6E7A3"
let s:string       = "#F9B98C"
let s:number       = "#F9B98C"
let s:constant     = "#F9B98C"
let s:type         = "#E6E7A3"
let s:error        = "#FF5C5C"    " Changed from #D84F68
let s:warning      = "#D2D714"    " Changed from #FF5C5C
let s:special      = "#9592A4"
let s:visual       = "#232323"    " Changed from #EAEC8A21
let s:cursor       = "#FFCC00"
let s:selection    = "#5A5B63"
let s:linenum      = "#32333B"
let s:linenum_act  = "#E6E6E6"
let s:matchbracket = "#5C6974"    " Changed from #EAEC8A54
let s:search       = "#5C6974"    " Changed from #EAEC8A54
let s:diffadd      = "#4EBE96"    " Changed from #E6E6E615
let s:diffdelete   = "#FF5C5C"    " Changed from #D84F6815
let s:diffchange   = "#4EBE96"    " Changed from #E6E6E615
let s:difftext     = "#303030"    " Changed from #E6E6E630
let s:link         = "#479FFA"
let s:attr         = "#54C0A3"

" Highlight helper
execute "command! -nargs=+ Hi hi <args>"

" Editor highlighting
execute "hi Normal guifg=".s:fg." guibg=".s:bg
execute "hi Cursor guifg=".s:bg." guibg=".s:cursor." gui=bold"
execute "hi CursorLine guibg=#232323 gui=none"
execute "hi LineNr guifg=".s:linenum
execute "hi CursorLineNr guifg=".s:linenum_act
execute "hi VertSplit guifg=".s:linenum." guibg=".s:bg
execute "hi StatusLine guifg=".s:fg." guibg=#232323 gui=none"
execute "hi StatusLineNC guifg=".s:comment." guibg=#191919 gui=none"
execute "hi Pmenu guifg=".s:fg." guibg=#2C2C31"
execute "hi PmenuSel guifg=".s:bg." guibg=".s:function
execute "hi PmenuSbar guibg=#2C2C31"
execute "hi PmenuThumb guibg=".s:selection
execute "hi TabLine guifg=".s:comment." guibg=".s:bg." gui=none"
execute "hi TabLineFill guifg=".s:comment." guibg=".s:bg." gui=none"
execute "hi TabLineSel guifg=".s:fg." guibg=".s:bg." gui=none"
execute "hi Search guifg=".s:bg." guibg=".s:search
execute "hi IncSearch guifg=".s:bg." guibg=".s:search
execute "hi MatchParen guibg=".s:matchbracket
execute "hi Visual guibg=".s:visual

" Syntax highlighting
execute "hi Comment guifg=".s:comment
execute "hi Constant guifg=".s:constant
execute "hi String guifg=".s:string
execute "hi Character guifg=".s:string
execute "hi Number guifg=".s:number
execute "hi Boolean guifg=".s:constant
execute "hi Float guifg=".s:number
execute "hi Function guifg=".s:function

" TypeScript specific
execute "hi typescriptBraces guifg=".s:special
execute "hi typescriptParens guifg=".s:special
execute "hi typescriptEndColons guifg=".s:special
execute "hi typescriptModule guifg=".s:keyword
execute "hi typescriptImport guifg=".s:keyword
execute "hi typescriptExport guifg=".s:keyword
execute "hi typescriptVariable guifg=".s:keyword
execute "hi typescriptOperator guifg=".s:keyword
execute "hi typescriptEnumKeyword guifg=".s:keyword
execute "hi typescriptArrowFunc guifg=".s:keyword
execute "hi typescriptMethodAccessor guifg=".s:keyword
execute "hi typescriptAsyncFuncKeyword guifg=".s:keyword
execute "hi typescriptAwaitKeyword guifg=".s:keyword
execute "hi typescriptCall guifg=".s:special
execute "hi typescriptClassName guifg=".s:function
execute "hi typescriptClassHeritage guifg=".s:function
execute "hi typescriptInterfaceName guifg=".s:function
execute "hi typescriptTypeReference guifg=".s:function
execute "hi typescriptFuncName guifg=".s:function
execute "hi typescriptMember guifg=".s:function
execute "hi typescriptObjectLabel guifg=".s:fg

" TSX/JSX Support
execute "hi tsxAttrib guifg=".s:attr
execute "hi tsxTag guifg=".s:special
execute "hi tsxTagName guifg=".s:function
execute "hi tsxCloseTag guifg=".s:special
execute "hi tsxCloseString guifg=".s:special
execute "hi tsxAttributeBraces guifg=".s:special
execute "hi tsxEqual guifg=".s:special
execute "hi tsxString guifg=".s:fg

" Continue with all other language-specific highlights...

" HTML
execute "hi htmlTag guifg=".s:special
execute "hi htmlEndTag guifg=".s:special
execute "hi htmlTagName guifg=".s:function
execute "hi htmlArg guifg=".s:attr
execute "hi htmlTitle guifg=".s:fg

" CSS
execute "hi cssClassName guifg=".s:function
execute "hi cssIdentifier guifg=".s:function
execute "hi cssTagName guifg=".s:function
execute "hi cssColor guifg=".s:constant
execute "hi cssBraces guifg=".s:special
execute "hi cssAttr guifg=".s:attr
execute "hi cssAttrRegion guifg=".s:attr
execute "hi cssDefinition guifg=".s:attr
execute "hi cssVendor guifg=".s:attr
execute "hi cssImportant guifg=".s:attr

" JavaScript
execute "hi javaScript guifg=".s:fg
execute "hi javaScriptBraces guifg=".s:special
execute "hi javaScriptNumber guifg=".s:constant
execute "hi javaScriptNull guifg=".s:constant
execute "hi javaScriptIdentifier guifg=".s:keyword
execute "hi javaScriptOperator guifg=".s:keyword
execute "hi javaScriptFunction guifg=".s:keyword
execute "hi javaScriptRegexpString guifg=".s:string
execute "hi javaScriptGlobal guifg=".s:type
execute "hi javaScriptMessage guifg=".s:type
execute "hi javaScriptThis guifg=".s:special

" Python
execute "hi pythonBuiltin guifg=".s:function." gui=bold"
execute "hi pythonStatement guifg=".s:keyword
execute "hi pythonConditional guifg=".s:keyword
execute "hi pythonRepeat guifg=".s:keyword
execute "hi pythonException guifg=".s:keyword
execute "hi pythonInclude guifg=".s:keyword
execute "hi pythonDecorator guifg=".s:attr
execute "hi pythonFunction guifg=".s:function
execute "hi pythonClass guifg=".s:function
execute "hi pythonOperator guifg=".s:keyword
execute "hi pythonSelf guifg=".s:special
execute "hi pythonDottedName guifg=".s:special
execute "hi pythonComment guifg=".s:comment." gui=italic"
execute "hi pythonDocstring guifg=".s:comment." gui=italic"
execute "hi pythonString guifg=".s:string
execute "hi pythonQuotes guifg=".s:string
execute "hi pythonTripleQuotes guifg=".s:string

" Markdown
execute "hi markdownHeadingDelimiter guifg=".s:function." gui=bold"
execute "hi markdownH1 guifg=".s:function." gui=bold"
execute "hi markdownH2 guifg=".s:function." gui=bold"
execute "hi markdownH3 guifg=".s:function." gui=bold"
execute "hi markdownH4 guifg=".s:function." gui=bold"
execute "hi markdownH5 guifg=".s:function." gui=bold"
execute "hi markdownH6 guifg=".s:function." gui=bold"
execute "hi markdownCode guifg=".s:special
execute "hi markdownCodeBlock guifg=".s:special
execute "hi markdownCodeDelimiter guifg=".s:special
execute "hi markdownBlockquote guifg=".s:comment
execute "hi markdownListMarker guifg=".s:function
execute "hi markdownOrderedListMarker guifg=".s:function
execute "hi markdownRule guifg=".s:special
execute "hi markdownHeadingRule guifg=".s:special
execute "hi markdownUrlDelimiter guifg=".s:special
execute "hi markdownLinkDelimiter guifg=".s:special
execute "hi markdownLinkTextDelimiter guifg=".s:special
execute "hi markdownHeadingDelimiter guifg=".s:special
execute "hi markdownUrl guifg=".s:link
execute "hi markdownUrlTitleDelimiter guifg=".s:string
execute "hi markdownLinkText guifg=".s:function." gui=underline"
execute "hi markdownIdDeclaration guifg=".s:function

" JSON
execute "hi jsonKeyword guifg=".s:function
execute "hi jsonString guifg=".s:string
execute "hi jsonBoolean guifg=".s:constant
execute "hi jsonNumber guifg=".s:constant
execute "hi jsonQuote guifg=".s:special
execute "hi jsonBraces guifg=".s:special
execute "hi jsonNull guifg=".s:constant

" TreeSitter support (for Neovim)
if has("nvim")
  " Identifiers
  hi! link @variable Identifier
  hi! link @variable.builtin Special
  hi! link @variable.parameter Special
  hi! link @variable.member Identifier
  hi! link @constant Constant
  hi! link @constant.builtin Special
  hi! link @constant.macro Define
  hi! link @module Type
  hi! link @label Label
  hi! link @symbol Special

  " Functions
  hi! link @function Function
  hi! link @function.builtin Special
  hi! link @function.macro Macro
  hi! link @method Function
  hi! link @constructor Function
  hi! link @parameter Special

  " Keywords
  hi! link @keyword Keyword
  hi! link @keyword.function Keyword
  hi! link @keyword.operator Operator
  hi! link @keyword.return Keyword
  hi! link @conditional Conditional
  hi! link @repeat Repeat
  hi! link @debug Debug
  hi! link @exception Exception
  hi! link @include Include
  hi! link @define Define

  " Types
  hi! link @type Type
  hi! link @type.builtin Type
  hi! link @type.qualifier StorageClass
  hi! link @type.definition Typedef
  hi! link @storageclass StorageClass
  hi! link @namespace Identifier
  hi! link @attribute Special
  hi! link @property Identifier
  hi! link @field Identifier

  " Literals
  hi! link @string String
  hi! link @string.regex String
  hi! link @string.escape SpecialChar
  hi! link @string.special SpecialChar
  hi! link @character Character
  hi! link @character.special SpecialChar
  hi! link @boolean Boolean
  hi! link @number Number
  hi! link @float Float

  " Markup
  hi! link @text.strong Bold
  hi! link @text.emphasis Italic
  hi! link @text.underline Underlined
  hi! link @text.strike Comment
  hi! link @text.title Title
  hi! link @text.literal String
  hi! link @text.uri Underlined
  hi! link @text.reference Identifier
  hi! link @tag Tag
  hi! link @tag.attribute Label
  hi! link @tag.delimiter Special

  " Comments
  hi! link @comment Comment
  hi! link @comment.documentation SpecialComment

  " Punctuation
  hi! link @punctuation.delimiter Delimiter
  hi! link @punctuation.bracket Delimiter
  hi! link @punctuation.special Delimiter

  " Misc
  hi! link @error Error
  hi! link @danger Error
  hi! link @todo Todo
endif

" TypeScript/JavaScript Specific
execute "hi typescriptBraces guifg=".s:special
execute "hi typescriptParens guifg=".s:special
execute "hi typescriptEndColons guifg=".s:special
execute "hi typescriptModule guifg=".s:keyword
execute "hi typescriptImport guifg=".s:keyword
execute "hi typescriptExport guifg=".s:keyword
execute "hi typescriptVariable guifg=".s:keyword
execute "hi typescriptOperator guifg=".s:keyword
execute "hi typescriptEnumKeyword guifg=".s:keyword
execute "hi typescriptArrowFunc guifg=".s:keyword
execute "hi typescriptMethodAccessor guifg=".s:keyword
execute "hi typescriptAsyncFuncKeyword guifg=".s:keyword
execute "hi typescriptAwaitKeyword guifg=".s:keyword
execute "hi typescriptCall guifg=".s:special
execute "hi typescriptClassName guifg=".s:function
execute "hi typescriptClassHeritage guifg=".s:function
execute "hi typescriptInterfaceName guifg=".s:function
execute "hi typescriptTypeReference guifg=".s:function
execute "hi typescriptFuncName guifg=".s:function
execute "hi typescriptMember guifg=".s:function
execute "hi typescriptObjectLabel guifg=".s:fg
execute "hi typescriptCall guifg=".s:fg
execute "hi typescriptBinaryOp guifg=".s:keyword
execute "hi typescriptUnaryOp guifg=".s:keyword
execute "hi typescriptAssign guifg=".s:keyword
execute "hi typescriptConstructSignature guifg=".s:keyword
execute "hi typescriptFuncType guifg=".s:special
execute "hi typescriptTemplateSubstitution guifg=".s:string
execute "hi typescriptTemplateSB guifg=".s:special
execute "hi typescriptTypeAnnotation guifg=".s:special
execute "hi typescriptTypeBrackets guifg=".s:special
execute "hi typescriptTypeParameter guifg=".s:function
execute "hi typescriptDecorator guifg=".s:attr

" String Literals in TypeScript/JavaScript
execute "hi typescriptStringLiteralType guifg=".s:attr
execute "hi typescriptStringProperty guifg=".s:attr
execute "hi typescriptObjectPropertyKey guifg=".s:attr
execute "hi typescriptTemplateLiteral guifg=".s:string
execute "hi typescriptString guifg=".s:string
execute "hi typescriptStringS guifg=".s:string
execute "hi typescriptStringD guifg=".s:string
execute "hi typescriptStringB guifg=".s:string

" Next.js Directives
execute "hi typescriptDirective guifg=".s:string
execute "hi javascriptDirective guifg=".s:string

" Import/Export Paths
execute "hi typescriptImportPath guifg=".s:fg
execute "hi typescriptExportPath guifg=".s:fg

" SVG and HTML Attributes in TSX/JSX
execute "hi tsxAttrib guifg=".s:attr
execute "hi tsxTag guifg=".s:special
execute "hi tsxTagName guifg=".s:function
execute "hi tsxCloseTag guifg=".s:special
execute "hi tsxCloseString guifg=".s:special
execute "hi tsxAttributeBraces guifg=".s:special
execute "hi tsxEqual guifg=".s:special
execute "hi tsxString guifg=".s:fg

" Done! 