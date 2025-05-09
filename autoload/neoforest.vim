function! neoforest#get_configuration() "{{{
  return {
        \ 'background': get(g:, 'neoforest_background', 'medium'),
        \ 'transparent_background': get(g:, 'neoforest_transparent_background', 0),
        \ 'dim_inactive_windows': get(g:, 'neoforest_dim_inactive_windows', 0),
        \ 'disable_italic_comment': get(g:, 'neoforest_disable_italic_comment', 0),
        \ 'enable_italic': get(g:, 'neoforest_enable_italic', 0),
        \ 'cursor': get(g:, 'neoforest_cursor', 'auto'),
        \ 'sign_column_background': get(g:, 'neoforest_sign_column_background', 'none'),
        \ 'spell_foreground': get(g:, 'neoforest_spell_foreground', 'none'),
        \ 'ui_contrast': get(g:, 'neoforest_ui_contrast', 'low'),
        \ 'show_eob': get(g:, 'neoforest_show_eob', 1),
        \ 'float_style': get(g:, 'neoforest_float_style', 'bright'),
        \ 'current_word': get(g:, 'neoforest_current_word', get(g:, 'neoforest_transparent_background', 0) == 0 ? 'grey background' : 'bold'),
        \ 'inlay_hints_background': get(g:, 'neoforest_inlay_hints_background', 'none'),
        \ 'lightline_disable_bold': get(g:, 'neoforest_lightline_disable_bold', 0),
        \ 'diagnostic_text_highlight': get(g:, 'neoforest_diagnostic_text_highlight', 0),
        \ 'diagnostic_line_highlight': get(g:, 'neoforest_diagnostic_line_highlight', 0),
        \ 'diagnostic_virtual_text': get(g:, 'neoforest_diagnostic_virtual_text', 'grey'),
        \ 'disable_terminal_colors': get(g:, 'neoforest_disable_terminal_colors', 0),
        \ 'better_performance': get(g:, 'neoforest_better_performance', 0),
        \ 'colors_override': get(g:, 'neoforest_colors_override', {}),
        \ }
endfunction "}}}
function! neoforest#get_palette(background, colors_override) "{{{
  if a:background ==# 'hard' "{{{
    if &background ==# 'dark'
      let palette1 = {
            \ 'bg_dim':     ['#1e2326',   '233'],
            \ 'bg0':        ['#272e33',   '235'],
            \ 'bg1':        ['#2e383c',   '236'],
            \ 'bg2':        ['#374145',   '237'],
            \ 'bg3':        ['#414b50',   '238'],
            \ 'bg4':        ['#495156',   '239'],
            \ 'bg5':        ['#4f5b58',   '240'],
            \ 'bg_visual':  ['#4c3743',   '52'],
            \ 'bg_red':     ['#493b40',   '52'],
            \ 'bg_green':   ['#3c4841',   '22'],
            \ 'bg_blue':    ['#384b55',   '17'],
            \ 'bg_yellow':  ['#45443c',   '136'],
            \ }
    else
      let palette1 = {
            \ 'bg_dim':     ['#f2efdf',   '223'],
            \ 'bg0':        ['#fffbef',   '230'],
            \ 'bg1':        ['#f8f5e4',   '228'],
            \ 'bg2':        ['#f2efdf',   '223'],
            \ 'bg3':        ['#edeada',   '223'],
            \ 'bg4':        ['#e8e5d5',   '223'],
            \ 'bg5':        ['#bec5b2',   '223'],
            \ 'bg_visual':  ['#f0f2d4',   '194'],
            \ 'bg_red':     ['#ffe7de',   '217'],
            \ 'bg_green':   ['#f3f5d9',   '194'],
            \ 'bg_blue':    ['#ecf5ed',   '117'],
            \ 'bg_yellow':  ['#fef2d5',   '226'],
            \ }
    endif "}}}
  elseif a:background ==# 'medium' "{{{
    if &background ==# 'dark'
      let palette1 = {
            \ 'bg_dim':     ['#2D353B',   '233'],
            \ 'bg0':        ['#2D353B',   '235'],
            \ 'bg1':        ['#343f44',   '236'],
            \ 'bg2':        ['#3d484d',   '237'],
            \ 'bg3':        ['#475258',   '238'],
            \ 'bg4':        ['#4f585e',   '239'],
            \ 'bg5':        ['#56635f',   '240'],
            \ 'bg_visual':  ['#543a48',   '52'],
            \ 'bg_red':     ['#514045',   '52'],
            \ 'bg_green':   ['#425047',   '22'],
            \ 'bg_blue':    ['#3a515d',   '17'],
            \ 'bg_yellow':  ['#4d4c43',   '136'],
            \ }
    else
      let palette1 = {
            \ 'bg_dim':     ['#efebd4',   '223'],
            \ 'bg0':        ['#fdf6e3',   '230'],
            \ 'bg1':        ['#f4f0d9',   '228'],
            \ 'bg2':        ['#efebd4',   '223'],
            \ 'bg3':        ['#e6e2cc',   '223'],
            \ 'bg4':        ['#e0dcc7',   '223'],
            \ 'bg5':        ['#bdc3af',   '223'],
            \ 'bg_visual':  ['#eaedc8',   '194'],
            \ 'bg_red':     ['#fbe3da',   '217'],
            \ 'bg_green':   ['#f0f1d2',   '194'],
            \ 'bg_blue':    ['#e9f0e9',   '117'],
            \ 'bg_yellow':  ['#faedcd',   '226'],
            \ }
    endif "}}}
  else "{{{
    if &background ==# 'dark'
      let palette1 = {
            \ 'bg_dim':     ['#293136',   '233'],
            \ 'bg0':        ['#333c43',   '235'],
            \ 'bg1':        ['#3a464c',   '236'],
            \ 'bg2':        ['#434f55',   '237'],
            \ 'bg3':        ['#4d5960',   '238'],
            \ 'bg4':        ['#555f66',   '239'],
            \ 'bg5':        ['#5d6b66',   '240'],
            \ 'bg_visual':  ['#5c3f4f',   '52'],
            \ 'bg_red':     ['#59464c',   '52'],
            \ 'bg_green':   ['#48584e',   '22'],
            \ 'bg_blue':    ['#3f5865',   '17'],
            \ 'bg_yellow':  ['#55544a',   '136'],
            \ }
    else
      let palette1 = {
            \ 'bg_dim':     ['#e5dfc5',   '223'],
            \ 'bg0':        ['#f3ead3',   '230'],
            \ 'bg1':        ['#eae4ca',   '228'],
            \ 'bg2':        ['#e5dfc5',   '223'],
            \ 'bg3':        ['#ddd8be',   '223'],
            \ 'bg4':        ['#d8d3ba',   '223'],
            \ 'bg5':        ['#b9c0ab',   '223'],
            \ 'bg_visual':  ['#e1e4bd',   '194'],
            \ 'bg_red':     ['#f4dbd0',   '217'],
            \ 'bg_green':   ['#e5e6c5',   '194'],
            \ 'bg_blue':    ['#e1e7dd',   '117'],
            \ 'bg_yellow':  ['#f1e4c5',   '226'],
            \ }
    endif
  endif "}}}
  if &background ==# 'dark' "{{{
    let palette2 = {
          \ 'fg':         ['#d3c6aa',   '223'],
          \ 'red':        ['#EE6060',   '167'],
          \ 'orange':     ['#F38E61',   '208'],
          \ 'yellow':     ['#EFBD58',   '214'],
          \ 'green':      ['#A9CD73',   '142'],
          \ 'aqua':       ['#69CA81',   '108'],
          \ 'blue':       ['#4DC5B6',   '109'],
          \ 'purple':     ['#D182D8',   '175'],
          \ 'white':      ['#ffffff',   '175'],
          \ 'grey0':      ['#7a8478',   '243'],
          \ 'grey1':      ['#859389',   '245'],
          \ 'mainDarkGrey':  ['#374144',   '245'],
          \ 'lightGrey':  ['#94A0A1',   '245'],
          \ 'lightGrey2': ['#81898A',   '245'],
          \ 'lightGreen': ['#68CA81',   '245'],
          \ 'lightYellow':['#D9B05E',   '245'],
          \ 'lightRed':   ['#EE6060',   '245'],
          \ 'lightOrange':['#F38E61',   '245'],
          \ 'lightAqua'  :['#42A99D',   '245'],
          \ 'lightPurple':['#E187B2',   '245'],
          \ 'grey2':      ['#94A0A1',   '247'],
          \ 'mainGrey':   ['#899DA7',   '142'],
          \ 'mainBlack':  ['#22272D',   '142'],
          \ 'darkGrey':   ['#293035',   '142'],
          \ 'darkGrey2':   ['#293035',   '142'],
          \ 'mainAqua':   ['#60B8AD',   '142'],
          \ 'darkYellow': ['#C59C4A',   '214'],
          \ 'darkRed':    ['#B94B4B',   '214'],
          \ 'darkBlue':   ['#43AC9F',   '214'],
          \ 'darkOrange': ['#CA7E5B',   '214'],
          \ 'statusline1':['#A9CD73',   '142'],
          \ 'statusline2':['#4DC5B6',   '223'],
          \ 'statusline3':['#D182D8',   '167'],
          \ 'statusline4':['#889DA7',   '167'],
          \ 'none':       ['NONE',      'NONE']
          \ } "}}}
  else "{{{
    let palette2 = {
          \ 'fg':         ['#5c6a72',   '242'],
          \ 'red':        ['#f85552',   '160'],
          \ 'orange':     ['#f57d26',   '116'],
          \ 'yellow':     ['#dfa000',   '136'],
          \ 'green':      ['#8da101',   '106'],
          \ 'aqua':       ['#35a77c',   '37'],
          \ 'blue':       ['#3a94c5',   '32'],
          \ 'purple':     ['#df69ba',   '162'],
          \ 'grey0':      ['#a6b0a0',   '247'],
          \ 'grey1':      ['#939f91',   '247'],
          \ 'grey2':      ['#829181',   '247'],
          \ 'statusline1':['#93b259',   '106'],
          \ 'statusline2':['#708089',   '242'],
          \ 'statusline3':['#e66868',   '160'],
          \ 'none':       ['NONE',      'NONE']
          \ }
  endif "}}}
  return extend(extend(palette1, palette2), a:colors_override)
endfunction "}}}
function! neoforest#highlight(group, fg, bg, ...) "{{{
  execute 'highlight' a:group
        \ 'guifg=' . a:fg[0]
        \ 'guibg=' . a:bg[0]
        \ 'ctermfg=' . a:fg[1]
        \ 'ctermbg=' . a:bg[1]
        \ 'gui=' . (a:0 >= 1 ?
          \ a:1 :
          \ 'NONE')
        \ 'cterm=' . (a:0 >= 1 ?
          \ a:1 :
          \ 'NONE')
        \ 'guisp=' . (a:0 >= 2 ?
          \ a:2[0] :
          \ 'NONE')
endfunction "}}}
function! neoforest#syn_gen(path, last_modified, msg) "{{{
  " Generate the `after/syntax` directory.
  let full_content = join(readfile(a:path), "\n") " Get the content of `colors/neoforest.vim`
  let syn_conent = []
  let rootpath = neoforest#syn_rootpath(a:path) " Get the path to place the `after/syntax` directory.
  call substitute(full_content, '" syn_begin.\{-}syn_end', '\=add(syn_conent, submatch(0))', 'g') " Search for 'syn_begin.\{-}syn_end' (non-greedy) and put all the search results into a list.
  for content in syn_conent
    let syn_list = []
    call substitute(matchstr(matchstr(content, 'syn_begin:.\{-}{{{'), ':.\{-}{{{'), '\(\w\|-\)\+', '\=add(syn_list, submatch(0))', 'g') " Get the file types. }}}}}}
    for syn in syn_list
      call neoforest#syn_write(rootpath, syn, content) " Write the content.
    endfor
  endfor
  call neoforest#syn_write(rootpath, 'text', "let g:neoforest_last_modified = '" . a:last_modified . "'") " Write the last modified time to `after/syntax/text/neoforest.vim`
  let syntax_relative_path = has('win32') ? '\after\syntax' : '/after/syntax'
  if a:msg ==# 'update'
    echohl WarningMsg | echom '[neoforest] Updated ' . rootpath . syntax_relative_path | echohl None
    call neoforest#ftplugin_detect(a:path)
  else
    echohl WarningMsg | echom '[neoforest] Generated ' . rootpath . syntax_relative_path | echohl None
    execute 'set runtimepath+=' . fnamemodify(rootpath, ':p') . 'after'
  endif
endfunction "}}}
function! neoforest#syn_write(rootpath, syn, content) "{{{
  " Write the content.
  let syn_path = a:rootpath . '/after/syntax/' . a:syn . '/neoforest.vim' " The path of a syntax file.
  " create a new file if it doesn't exist
  if !filereadable(syn_path)
    call mkdir(a:rootpath . '/after/syntax/' . a:syn, 'p')
    call writefile([
          \ "if !exists('g:colors_name') || g:colors_name !=# 'neoforest'",
          \ '    finish',
          \ 'endif'
          \ ], syn_path, 'a') " Abort if the current color scheme is not neoforest.
    call writefile([
          \ "if index(g:neoforest_loaded_file_types, '" . a:syn . "') ==# -1",
          \ "    call add(g:neoforest_loaded_file_types, '" . a:syn . "')",
          \ 'else',
          \ '    finish',
          \ 'endif'
          \ ], syn_path, 'a') " Abort if this file type has already been loaded.
  endif
  " If there is something like `call neoforest#highlight()`, then add
  " code to initialize the palette and configuration.
  if matchstr(a:content, 'neoforest#highlight') !=# ''
    call writefile([
          \ 'let s:configuration = neoforest#get_configuration()',
          \ 'let s:palette = neoforest#get_palette(s:configuration.background, s:configuration.colors_override)'
          \ ], syn_path, 'a')
  endif
  " Append the content.
  call writefile(split(a:content, "\n"), syn_path, 'a')
  " Add modeline.
  call writefile(['" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:'], syn_path, 'a')
endfunction "}}}
function! neoforest#syn_rootpath(path) "{{{
  " Get the directory where `after/syntax` is generated.
  if (matchstr(a:path, '^/usr/share') ==# '') " Return the plugin directory. The `after/syntax` directory should never be generated in `/usr/share`, even if you are a root user.
    return fnamemodify(a:path, ':p:h:h')
  else " Use vim home directory.
    if has('nvim')
      return stdpath('config')
    else
      return expand('~') . '/.vim'
    endif
  endif
endfunction "}}}
function! neoforest#syn_newest(path, last_modified) "{{{
  " Determine whether the current syntax files are up to date by comparing the last modified time in `colors/neoforest.vim` and `after/syntax/text/neoforest.vim`.
  let rootpath = neoforest#syn_rootpath(a:path)
  execute 'source ' . rootpath . '/after/syntax/text/neoforest.vim'
  return a:last_modified ==# g:neoforest_last_modified ? 1 : 0
endfunction "}}}
function! neoforest#syn_clean(path, msg) "{{{
  " Clean the `after/syntax` directory.
  let rootpath = neoforest#syn_rootpath(a:path)
  " Remove `after/syntax/**/neoforest.vim`.
  let file_list = split(globpath(rootpath, 'after/syntax/**/neoforest.vim'), "\n")
  for file in file_list
    call delete(file)
  endfor
  " Remove empty directories.
  let dir_list = split(globpath(rootpath, 'after/syntax/*'), "\n")
  for dir in dir_list
    if globpath(dir, '*') ==# ''
      call delete(dir, 'd')
    endif
  endfor
  if globpath(rootpath . '/after/syntax', '*') ==# ''
    call delete(rootpath . '/after/syntax', 'd')
  endif
  if globpath(rootpath . '/after', '*') ==# ''
    call delete(rootpath . '/after', 'd')
  endif
  if a:msg
    let syntax_relative_path = has('win32') ? '\after\syntax' : '/after/syntax'
    echohl WarningMsg | echom '[neoforest] Cleaned ' . rootpath . syntax_relative_path | echohl None
  endif
endfunction "}}}
function! neoforest#syn_exists(path) "{{{
  return filereadable(neoforest#syn_rootpath(a:path) . '/after/syntax/text/neoforest.vim')
endfunction "}}}
function! neoforest#ftplugin_detect(path) "{{{
  " Check if /after/ftplugin exists.
  " This directory is generated in earlier versions, users may need to manually clean it.
  let rootpath = neoforest#syn_rootpath(a:path)
  if filereadable(neoforest#syn_rootpath(a:path) . '/after/ftplugin/text/neoforest.vim')
    let ftplugin_relative_path = has('win32') ? '\after\ftplugin' : '/after/ftplugin'
    echohl WarningMsg | echom '[neoforest] Detected ' . rootpath . ftplugin_relative_path | echohl None
    echohl WarningMsg | echom '[neoforest] This directory is no longer used, you may need to manually delete it.' | echohl None
  endif
endfunction "}}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
