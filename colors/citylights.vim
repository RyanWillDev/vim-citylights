" Vim color file
" Converted from Textmate theme City Lights using Coloration v0.4.0 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

" lighter_blue = #5ec4ff

" blue_black = #1d252c
" gray_black = #2d3741
" darker_gray_black = #2d3741
" darkest_gray_black = #35434e
"
" lighter_blue_gray = #718ca1
" blue_gray = #475967

" Official Colors
" color1light: #70E1E8;
" color1medium: #33CED8;
" color1dark: #008B94;

" color2light: #5EC4FF;
" color2medium: #68A1F0;
" color2dark: #539AFC;

" color3light:#E27E8D;
" color3medium:#D95468;
" color3dark:#B62D65;

" color4light: #EBBF83;
" color4dark: #D98E48;

" color5light: #8BD49C;

" color6dark: #718CA1;

" color7light: #8BD49C;

" Thanks to @whatyouhide for the inspiration to use a function https://github.com/whatyouhide/vim-gotham/blob/master/colors/gotham.vim
let s:colors = {
      \'cyan': '#70E1E8' ,
      \'blue': '#5EC4FF',
      \'purple': '#B62D65',
      \'pink': '#E27E8D',
      \'yellow': '#EBBF83',
      \'green': '#8BD49C',
      \'dark-green': '#008b94',
      \'red': '#D95468',
      \'orange': '#D98E48',
      \'gray': '#41505E',
      \'very-light-gray': '#B7C5D3',
      \'light-gray': '#718CA1',
      \'dark-gray': '#333F4A',
      \'very-dark-gray': '#1D252C',
      \'NONE': 'NONE',
      \'dark': '#35434E',
      \'darkest': '#252F38',
      \}

let g:colors_name = "citylights"

function! s:AddHighlight(args)
  exec 'highlight ' . join(a:args, ' ')
endfunction

function! s:Highlight(group, fg_color, ...)
  " optional args bg_color, gui
  let pieces = [a:group]

  if a:fg_color !=# ''
   let pieces = add(pieces, 'guifg=' . s:colors[a:fg_color])
  endif

  if a:0 > 0 && a:1 !=# ''
    let pieces = add(pieces, 'guibg=' . s:colors[a:1])
  endif

  if a:0 > 1 && a:2 !=# ''
    let pieces = add(pieces, 'gui='. a:2)
  endif

  call s:AddHighlight(pieces)
endfunction

call s:Highlight('Cursor', 'gray')
call s:Highlight('Visual', '', 'dark-gray', 'bold')
call s:Highlight('CursorLine', '', 'darkest')
call s:Highlight('CursorColumn', '', 'darkest')
call s:Highlight('CursorLineNr', 'blue', '', 'reverse')
call s:Highlight('LineNr', 'gray', 'darkest')
call s:Highlight('VertSplit', 'gray', 'gray')
call s:Highlight('MatchParen', 'blue', 'NONE', 'underline')
call s:Highlight('StatusLine', 'light-gray', 'darkest', 'bold')
call s:Highlight('StatusLineNC', 'dark-gray', 'light-gray')
call s:Highlight('SignColumn', 'gray', 'darkest')
call s:Highlight('Pmenu', 'light-gray', 'dark')
call s:Highlight('PmenuSel', 'light-gray', 'dark', 'reverse,bold')
call s:Highlight('Search', 'blue', 'NONE', 'underline,bold')
call s:Highlight('Folded', 'gray', 'darkest')
call s:Highlight('SpellBad', 'red')
call s:Highlight('Directory', 'green')
call s:Highlight('TabLine', 'light-gray', 'darkest', 'bold')
call s:Highlight('TabLineFill', 'dark-gray', 'light-gray')
"hi WildMenu ctermfg=NONE ctermbg=None cterm=NONE guifg=#5ec4ff  guibg=NONE gui=reverse
"hi IncSearch ctermfg=16 ctermbg=69 cterm=NONE guifg=#1d252c guibg=#539afc gui=NONE
"hi Directory ctermfg=115 ctermbg=NONE cterm=NONE guifg=#8bd49c guibg=NONE gui=NONE

call s:Highlight('Normal', 'light-gray', 'very-dark-gray')
call s:Highlight('Boolean', 'pink')
call s:Highlight('Character', 'yellow')
call s:Highlight('Comment', 'gray')
call s:Highlight('Conditional', 'blue')
call s:Highlight('Constant', 'yellow')
"hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
call s:Highlight('Define', 'blue')
" Remove ~ from end of buffer
call s:Highlight('EndOfbuffer', 'very-dark-gray')
call s:Highlight('Float', 'pink')
call s:Highlight('Function', 'cyan')
call s:Highlight('Identifier', 'dark-green')
call s:Highlight('Keyword', 'blue')
call s:Highlight('Label', 'blue')
" For listchars
call s:Highlight('NonText', 'pink', 'very-dark-gray')
call s:Highlight('Number', 'pink')
call s:Highlight('Operator', 'blue')
call s:Highlight('PreProc', 'blue')
call s:Highlight('Special', 'light-gray')
call s:Highlight('SpecialKey', 'dark', 'darkest')
call s:Highlight('Statement', 'blue')
call s:Highlight('StorageClass', 'dark-green')
call s:Highlight('String', 'blue')
call s:Highlight('Tag', 'dark-green')
call s:Highlight('Title', 'light-gray')
call s:Highlight('Todo', 'blue', 'NONE', 'inverse,bold')
call s:Highlight('Type', 'NONE', 'NONE', 'NONE')
call s:Highlight('Underlined', 'NONE', 'NONE', 'underline')
call s:Highlight('WhiteSpace', 'pink', 'very-dark-gray')

" Git
call s:Highlight('DiffAdd', 'green', 'darkest')
call s:Highlight('DiffDelete', 'red', 'darkest')
call s:Highlight('DiffChange', 'yellow',  'darkest')

" Messages in cmdline
call s:Highlight('ErrorMsg', 'red', 'NONE')
call s:Highlight('WarningMsg', 'yellow', 'NONE')
call s:Highlight('MoreMsg', 'green', 'NONE')


" Elixir
call s:Highlight('elixirPseudoVariable', 'yellow')
call s:Highlight('elixirAtom', 'green')
call s:Highlight('elixirInterpolationDelimiter', 'cyan')

" Ruby
call s:Highlight('rubyClass', 'blue')
call s:Highlight('rubyFunction', 'cyan')
call s:Highlight('rubyInterpolationDelimiter', 'cyan')
call s:Highlight('rubySymbol', 'green')
call s:Highlight('rubyBlockParameter', 'yellow')
call s:Highlight('rubyInstanceVariable', 'light-gray')
call s:Highlight('rubyInclude', 'blue')
call s:Highlight('rubyGlobalVariable', 'light-gray')
call s:Highlight('rubyGlobalVariable', 'light-gray')
call s:Highlight('rubyRegexp', 'blue')
call s:Highlight('rubyRegexpDelimiter', 'blue')
call s:Highlight('rubyEscape', 'green')
call s:Highlight('rubyControl', 'blue')
call s:Highlight('rubyClassVariable', 'light-gray')
call s:Highlight('rubyException', 'blue')
call s:Highlight('rubyPseudoVariable', 'blue')
call s:Highlight('rubyRailsUserClass', 'light-gray')
call s:Highlight('rubyRailsUserClass', 'light-gray')
call s:Highlight('rubyRailsARAssociationMethod', 'cyan')
call s:Highlight('rubyRailsARMethod', 'cyan')
call s:Highlight('rubyRailsRenderMethod', 'cyan')
call s:Highlight('rubyRailsMethod', 'cyan')
call s:Highlight('erubyDelimiter', 'NONE', 'NONE')
call s:Highlight('erubyComment', 'gray')
call s:Highlight('erubyRailsMethod', 'cyan')

" Javascript
call s:Highlight('jsNull', 'pink')
call s:Highlight('jsUndefined', 'pink')

" HTML
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=115 ctermbg=NONE cterm=NONE guifg=#8bd49c guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=30 ctermbg=NONE cterm=NONE guifg=#008b94 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=80 ctermbg=NONE cterm=NONE guifg=#33ced8 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=30 ctermbg=NONE cterm=NONE guifg=#008b94 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=67 ctermbg=NONE cterm=NONE guifg=#718ca1 guibg=NONE gui=NONE
hi yamlAlias ctermfg=67 ctermbg=NONE cterm=NONE guifg=#718ca1 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=69 ctermbg=NONE cterm=NONE guifg=#539afc guibg=NONE gui=NONE

" CSS
hi cssURL ctermfg=180 ctermbg=NONE cterm=NONE guifg=#ebbf83 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=80 ctermbg=NONE cterm=NONE guifg=#33ced8 guibg=NONE gui=NONE
hi cssColor ctermfg=115 ctermbg=NONE cterm=NONE guifg=#8bd49c guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=80 ctermbg=NONE cterm=NONE guifg=#70e1e8 guibg=NONE gui=NONE
hi cssClassName ctermfg=80 ctermbg=NONE cterm=NONE guifg=#70e1e8 guibg=NONE gui=NONE
hi cssValueLength ctermfg=174 ctermbg=NONE cterm=NONE guifg=#e27e8d guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=152 ctermbg=NONE cterm=NONE guifg=#b7c5d3 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

" Vimwiki
call s:Highlight('VimwikiLink', 'green')
