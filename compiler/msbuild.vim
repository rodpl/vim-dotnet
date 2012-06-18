" Vim compiler file
" Compiler:	msbuild C#
" Maintainer:	Daniel Dabrowski (dabrowski.daniel@42n.pl)
" Last Change:	2011-11-06
" 
" Note: Add Follow line to your .csproj file's common PropertyGroup
" <GenerateFullPaths>True</GenerateFullPaths>

if exists("current_compiler")
  finish
endif
let current_compiler = "msbuild"

" errorformat for csc
setlocal errorformat=%f(%l\\,%c):\ %t%*[^\ ]\ CS%n:\ %m

" default make
setlocal makeprg=msbuild.exe\ /nologo\ /v:q
