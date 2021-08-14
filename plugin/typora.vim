if !(has("win64") || has("win32") || has("win16"))
  function! typora#launch()
    " call system("Typora.exe \"" . expand("%") . "\"")
    let l:files = expand("%:p")
    let l:files = substitute(l:files, "/mnt/c/", "", "")
    call system("Typora.exe " . '"C:/' . l:files . '"' . "> ~/vim.log &")
    setlocal autoread
  endfunction

  command! Typora call typora#launch()
endif
