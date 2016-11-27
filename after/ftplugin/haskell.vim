" i_CTRL-Y to insert function name, twice to insert '= undefined'

fun! s:findFunction()
  let lnr = search('^\l[0-9A-Za-z'']*\s*::', 'bnW')

  if lnr == 0
    return "\<c-y>"
  endif

  let funcname = substitute( getline(lnr), '\s*::.*', '', '' )

  " if line is empty -- 'funcname'
  " if 'funcname' exist on the line -- '= undefined'
  " if line is 'fu' -- 'ncname'
  " else <C-Y>

  let cline = getline('.')

  if empty(cline)
    return funcname
  elseif cline =~ '^' . funcname . '\s*$'
    let pre = cline =~ '\s\+$' ? '' : ' '
    return pre . '= undefined'
  elseif cline =~ '^' . funcname . '\s*=\s*$'
    return 'undefined'
  elseif strpart(funcname, 0, len(cline)) == cline
    return strpart(funcname, len(cline))
  else
    return "\<c-y>"
  endif
endfun

if maparg("\<c-y>", 'i') == ''
  inoremap <buffer> <expr> <C-Y> <sid>findFunction()
endif

if maparg(']]','n') == ''
  nnoremap <silent><buffer> [[ m':call search('^\l[0-9A-Za-z'']*\s*::', "bW")<CR>
  nnoremap <silent><buffer> ]] m':call search('^\l[0-9A-Za-z'']*\s*::', "W")<CR>

  vnoremap <silent><buffer> [[ m':<C-U>exe "normal! gv"<Bar>call search('^\l[0-9A-Za-z'']*\s*::', "bW")<CR>
  vnoremap <silent><buffer> ]] m':<C-U>exe "normal! gv"<Bar>call search('^\l[0-9A-Za-z'']*\s*::', "W")<CR>
endif
