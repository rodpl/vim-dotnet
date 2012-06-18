au BufNewFile,BufRead *.proj,*.xaml setf xml
au BufNewFile,BufRead *.proj,*.cs,*.xaml compiler msbuild
au BufRead,BufNewFile *.cshtml set filetype=cshtml

au FileType cs set omnifunc=syntaxcomplete#Complete
au FileType cs set foldmethod=marker
au FileType cs set foldmarker={,}
au FileType cs set foldtext=substitute(getline(v:foldstart),'{.*','{...}',)
au FileType cs set foldlevelstart=2  
