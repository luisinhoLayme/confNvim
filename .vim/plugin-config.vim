"para acceder rapidamente
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

"fzf
let $FZF_DEFAULT_OPTS='--layout=reverse'
let g:fzf_layout = { 'window': 'call FloatingFZF()'  }
function! FloatingFZF()
let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')
    let height = float2nr((&lines - 3) / 2)
let width = float2nr(&columns - (&columns * 2 / 10))
  let col = float2nr((&columns - width) / 2)
  let row = float2nr((&lines - height) / 2)
let opts = {
          \ 'relative': 'editor',
          \ 'row': row,
          \ 'col': col,
          \ 'width': width,
          \ 'height': height
          \ }
    call nvim_open_win(buf, v:true, opts)
endfunction

"config para snippets
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/plugged/ultisnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"


"wConfiguracion Semantic highlight
autocmd FileType javascript setlocal iskeyword+=$

" configuracion de pug
let g:html5_event_handler_attributes_complete = 0 "atributos de controlador de eventos Deshabilitar
let g:html5_rdfa_attributes_complete = 0 " atributos Disable RDFa
let g:html5_microdata_attributes_complete = 0 " atributos de microdatos Deshabilitar
let g:html5_aria_attributes_complete = 0 " atributo Disable WAI-ARIA

"lint pug config
let g:syntastic_pug_checkers = ['pug_lint']


"Configuracion de pro.

 " let $FZF_DEFAULT_OPTS .= ' --inline-info'

 " Modificar Archivos
 let g:NERDTreeMinimalUI = 1  " Hide help text
 let g:NERDTreeAutoDeleteBuffer = 1

 "NERDTree
 "autocmd StdinReadPre * let s:std_in=1
 "autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
 "Mapeo del explorador de archivos
 let g:NERDTreeChDirMode = 2 "Cambia el directorio actual al nodo padre

 let g:NERDTreeDirArrowExpandable = ''
 let g:NERDTreeDirArrowCollapsible = ''

function! s:check_back_space() abort
let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction
" fin de configuracion de nerdtree

" Vim devicons
if exists("g:loaded_webdevicons")
    call webdevicons#refresh()
endif

" use current git repo/file director with ctrl p
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 0

"signify
"Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

" If you like colors instead
highlight SignifySignAdd   ctermbg=green guibg=#00ff00
highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000
highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00


" aun no se como funcion aeso xd
let g:coc_global_extensions = ['coc-pairs', 'coc-tslint', 'coc-tsserver', 'coc-json', 'coc-css', 'coc-elixir', 'coc-html', 'coc-just-complete', 'coc-explorer', 'coc-highlight', 'coc-stylelint']
 command! -nargs=0 Prettier :CocCommand prettier.formatFile


" HTML, JSX
"let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

"  "configuring the highlight devicons
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" Javascript
autocmd BufRead *.js set filetype=javascript.jsx
autocmd BufRead *.jsx set filetype=javascript.jsx
augroup filetype javascript syntax=javascript

" highlight cursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" highlight con enter seleccion y no
let g:highlighting = 0
function! Highlighting()
    if g:highlighting == 1 && @/ =~ '^\\<'.expand('<cword>').'\\>$'
        let g:highlighting = 0
        return ":silent nohlsearch\<CR>"
    endif
    let @/ = '\<'.expand('<cword>').'\>'
    let g:highlighting = 1
    return ":silent set hlsearch\<CR>"
endfunction
nnoremap <silent> <expr> <CR> Highlighting()
                        

"nerdtree
 let NERDTreeQuitOnOpen=1

 "configuring clang
 "let g:clang_format#auto_format = 1

" colorear parentecis todas esas cosas relacionados
let g:rainbow_active = 1

" Emmet
let g:user_emmet_leader_key=','

" NERDComment por defecto
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

"identLine configuracion
autocmd! User indentLine doautocmd indentLine Syntax
let g:indentLine_color_term = 239
let g:indentLine_char = "¦"  "💙🔥★♫
let g:indentLine_color_gui = '#616161'
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"vim-json
let g:vim_json_syntax_conceal = 0

" Cargar fuente Powerline y símbolos (ver nota)
" let g:airline_powerline_fonts = 1
set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)

"Configuracion airline
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
" let g:airline_theme = 'gruvbox' "palenight, one, onehalfdark, gruvbox


"set guifont=DroidSansMono\ Nerd\ Font\ 12
" testing rounded separators (extra-powerline-symbols):
" let g:airline_left_sep = "\uE0B4"
" let g:airline_right_sep = "\uE0B6"

function! AccentDemo()
      let keys = ['a','b','c','d','e','f','g','h']
        for k in keys
        call airline#parts#define_text(k, k)
          endfor
    call airline#parts#define_accent('a', 'red')
      call airline#parts#define_accent('b', 'green')
    call airline#parts#define_accent('c', 'blue')
      call airline#parts#define_accent('d', 'yellow')
        call airline#parts#define_accent('e', 'orange')
      call airline#parts#define_accent('f', 'purple')
        call airline#parts#define_accent('g', 'bold')
  call airline#parts#define_accent('h', 'italic')
    let g:airline_section_a = airline#section#create(keys)
endfunction
autocmd VimEnter * call AccentDemo()

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"
" " unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'
"
"los separadores de buffers abiertos
" let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'


" set the CN (column number) symbol:
" let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])

" let g:airline_section_a = 'b%n, w%{winnr()}%#__accent_bold#%{winnr()==winnr("#")?" [LW]":""}%#__restore__#'



        " return ''


