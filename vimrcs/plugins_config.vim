"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
"       This requires that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! Cond(Cond, ...)
      let opts = get(a:000, 0, {})
      return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

""""""""""""""""""""""""""""""
" => plug plugin
""""""""""""""""""""""""""""""
call plug#begin('~/.vimrc_vscode/plugins')
      Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })
call plug#end()