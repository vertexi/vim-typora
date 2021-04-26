if !(has("win64") || has("win32") || has("win16"))
  function! typora#launch()
    " call system("Typora.exe \"" . expand("%") . "\"")
    let l:files = expand("%")
    let l:files = substitute(l:files, "/mnt/c/", "", "")
    echo("Typora.exe " . l:files. "")
    setlocal autoread
  endfunction

  command! Typora call typora#launch()
endif
