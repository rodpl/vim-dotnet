" Vim compiler file
" Compiler:	msbuild C#
" Maintainer:	Daniel Dabrowski (dabrowski.daniel@42n.pl)
" Last Change:	2012-06-18
" 
" Note: Add Follow line to your .csproj file's common PropertyGroup
" <GenerateFullPaths>True</GenerateFullPaths>

if exists("current_compiler")
  finish
endif
let current_compiler = "msbuild"

if exists(":CompilerSet") != 2 " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

" errorformat for csc
CompilerSet errorformat=\ %#%f(%l\\\,%c):\ %m
"CompilerSet errorformat=%f(%l\\,%c):\ %t%*[^\ ]\ CS%n:\ %m

" default make
CompilerSet makeprg=msbuild.exe\ /nologo\ /verbosity:quiet\ /p:GenerateFullPaths=True
