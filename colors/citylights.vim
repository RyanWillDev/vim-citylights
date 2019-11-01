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
      \'yellow': '#E27E8D',
      \'green': '#E27E8D',
      \'red': '#E27E8D',
      \'orange': '#E27E8D',
      \'gray': '#41505E',
      \'very-light-gray': '#B7C5D3',
      \'light-gray': '#718CA1',
      \'dark-gray': '#333F4A',
      \'very-dark-gray': '#1D252C'
      \}

let g:colors_name = "citylights"

function! s:AddHighlight(args)
  exec 'highlight ' . join(a:args, ' ')
endfunction

function! s:Highlight(group, fg_color, ...)
  " optional args bg_color, reverse
  let pieces = [a:group]

  if a:fg_color !=# ''
   let pieces = add(pieces, 'guifg=' . s:colors[a:fg_color])
  endif

  if a:0 > 0 && a:1 !=# ''
    let pieces = add(pieces, 'guibg=' . s:colors[a:bg_color])
  endif

  if a:0 > 1 && a:2 == 1
    let pieces = add(pieces, 'gui=reverse')
  endif

  call s:AddHighlight(pieces)
endfunction

call s:Highlight('Cursor', 'light-gray')
hi Visual ctermfg=NONE ctermbg=23 cterm=NONE guifg=NONE guibg=#2d3741 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=17 cterm=NONE guifg=NONE guibg=#252f38 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=17 cterm=NONE guifg=NONE guibg=#252f38 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=17 cterm=NONE guifg=NONE guibg=#252f38 gui=NONE
hi LineNr ctermfg=59 ctermbg=17 cterm=NONE guifg=#475967 guibg=#252f38 gui=NONE
call s:Highlight('CursorLineNr', 'blue', '', 1)
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#35434e guibg=#35434e gui=NONE
hi MatchParen ctermfg=81 ctermbg=NONE cterm=underline guifg=#5ec4ff guibg=NONE gui=underline
hi StatusLine ctermfg=67 ctermbg=59 cterm=bold guifg=#718ca1 guibg=#35434e gui=bold
hi StatusLineNC ctermfg=67 ctermbg=59 cterm=NONE guifg=#718ca1 guibg=#35434e gui=NONE
hi Pmenu ctermfg=67 ctermbg=59 cterm=bold guifg=#718ca1 guibg=#35434e gui=bold
hi PmenuSel ctermfg=67 ctermbg=59 cterm=bold guifg=#718ca1 guibg=#35434e gui=bold,reverse
hi WildMenu ctermfg=NONE ctermbg=None cterm=NONE guifg=#5ec4ff  guibg=NONE gui=reverse
hi IncSearch ctermfg=16 ctermbg=69 cterm=NONE guifg=#1d252c guibg=#539afc gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=115 ctermbg=NONE cterm=NONE guifg=#8bd49c guibg=NONE gui=NONE
hi Folded ctermfg=59 ctermbg=16 cterm=NONE guifg=#41505e guibg=#1d252c gui=NONE
hi SpellBad ctermfg=88 ctermbg=NONE cterm=NONE guifg=#890709  guibg=NONE gui=undercurl

hi Normal ctermfg=67 ctermbg=16 cterm=NONE guifg=#718ca1 guibg=#1d252c gui=NONE
hi Boolean ctermfg=174 ctermbg=NONE cterm=NONE guifg=#e27e8d guibg=NONE gui=NONE
hi Character ctermfg=115 ctermbg=NONE cterm=NONE guifg=#8bd49c guibg=NONE gui=NONE
hi Comment ctermfg=59 ctermbg=NONE cterm=NONE guifg=#41505e guibg=NONE gui=NONE
hi Conditional ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5ec4ff guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5ec4ff guibg=NONE gui=NONE
hi DiffAdd ctermfg=67 ctermbg=64 cterm=bold guifg=#8bd49c guibg=#44830e gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#890709 guibg=NONE gui=NONE
hi DiffChange ctermfg=67 ctermbg=23 cterm=NONE guifg=#539afc guibg=#1e385a gui=NONE
hi DiffText ctermfg=67 ctermbg=24 cterm=bold guifg=#718ca1 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=218 ctermbg=167 cterm=NONE guifg=#febac5 guibg=#d95468 gui=NONE
hi WarningMsg ctermfg=218 ctermbg=167 cterm=NONE guifg=#febac5 guibg=#d95468 gui=NONE
hi Float ctermfg=174 ctermbg=NONE cterm=NONE guifg=#e27e8d guibg=NONE gui=NONE
hi Function ctermfg=80 ctermbg=NONE cterm=NONE guifg=#33ced8 guibg=NONE gui=NONE
hi Identifier ctermfg=30 ctermbg=NONE cterm=NONE guifg=#008b94 guibg=NONE gui=NONE
hi Keyword ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5ec4ff guibg=NONE gui=NONE
hi Label ctermfg=69 ctermbg=NONE cterm=NONE guifg=#539afc guibg=NONE gui=NONE
hi NonText ctermfg=23 ctermbg=17 cterm=NONE guifg=#2d3741 guibg=#212a32 gui=NONE
hi Number ctermfg=174 ctermbg=NONE cterm=NONE guifg=#e27e8d guibg=NONE gui=NONE
hi Operator ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5ec4ff guibg=NONE gui=NONE
hi PreProc ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5ec4ff guibg=NONE gui=NONE
hi Special ctermfg=67 ctermbg=NONE cterm=NONE guifg=#718ca1 guibg=NONE gui=NONE
hi SpecialKey ctermfg=23 ctermbg=17 cterm=NONE guifg=#2d3741 guibg=#252f38 gui=NONE
hi Statement ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5ec4ff guibg=NONE gui=NONE
hi StorageClass ctermfg=30 ctermbg=NONE cterm=NONE guifg=#008b94 guibg=NONE gui=NONE
hi String ctermfg=69 ctermbg=NONE cterm=NONE guifg=#539afc guibg=NONE gui=NONE
hi Tag ctermfg=30 ctermbg=NONE cterm=NONE guifg=#008b94 guibg=NONE gui=NONE
hi Title ctermfg=67 ctermbg=NONE cterm=bold guifg=#718ca1 guibg=NONE gui=bold
hi Todo ctermfg=59 ctermbg=NONE cterm=inverse,bold guifg=#539afc guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline

" Elixir
hi elixirAtom ctermfg=115 ctermbg=NONE cterm=NONE guifg=#8bd49c guibg=NONE gui=NONE
hi elixirInterpolationDelimiter ctermfg=80 ctermbg=NONE cterm=NONE guifg=#33ced8 guibg=NONE gui=NONE

" Ruby
hi rubyClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5ec4ff guibg=NONE gui=NONE
hi rubyFunction ctermfg=80 ctermbg=NONE cterm=NONE guifg=#33ced8 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=115 ctermbg=NONE cterm=NONE guifg=#8bd49c guibg=NONE gui=NONE
hi rubyConstant ctermfg=67 ctermbg=NONE cterm=NONE guifg=#718ca1 guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=69 ctermbg=NONE cterm=NONE guifg=#539afc guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=180 ctermbg=NONE cterm=NONE guifg=#ebbf83 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=67 ctermbg=NONE cterm=NONE guifg=#718ca1 guibg=NONE gui=NONE
hi rubyInclude ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5ec4ff guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=67 ctermbg=NONE cterm=NONE guifg=#718ca1 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=69 ctermbg=NONE cterm=NONE guifg=#539afc guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=69 ctermbg=NONE cterm=NONE guifg=#539afc guibg=NONE gui=NONE
hi rubyEscape ctermfg=115 ctermbg=NONE cterm=NONE guifg=#8bd49c guibg=NONE gui=NONE
hi rubyControl ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5ec4ff guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=67 ctermbg=NONE cterm=NONE guifg=#718ca1 guibg=NONE gui=NONE
" hi rubyOperator ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5ec4ff guibg=NONE gui=NONE
hi rubyException ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5ec4ff guibg=NONE gui=NONE
call s:Highlight('rubyPseudoVariable', 'blue')
hi rubyRailsUserClass ctermfg=67 ctermbg=NONE cterm=NONE guifg=#718ca1 guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=80 ctermbg=NONE cterm=NONE guifg=#33ced8 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=80 ctermbg=NONE cterm=NONE guifg=#33ced8 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=80 ctermbg=NONE cterm=NONE guifg=#33ced8 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=80 ctermbg=NONE cterm=NONE guifg=#33ced8 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=59 ctermbg=NONE cterm=NONE guifg=#41505e guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=80 ctermbg=NONE cterm=NONE guifg=#33ced8 guibg=NONE gui=NONE

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
hi VimwikiLink ctermfg=81 ctermbg=NONE cterm=NONE guifg=#5ec4ff guibg=NONE gui=NONE
