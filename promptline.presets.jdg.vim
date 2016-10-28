fun! promptline#presets#jdg#get()
  return {
        \'a' : [ '[ $(date +"%r") ]' ],
        \'b' : [ '\h' ],
        \'c' : [  promptline#slices#cwd() , promptline#slices#vcs_branch(), promptline#slices#git_status() ],
endfun
