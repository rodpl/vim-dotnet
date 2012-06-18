" vim syntax file
" Language: C# Razor
" Maintainer: Russ Martinez <russ.m01@gmail.com>

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

if !exists("main_syntax")
    let main_syntax = 'html'
endif

if version < 600
    so <sfile>:p:h/cs.vim
    so <sfile>:p:h/html.cim
else
    runtime! syntax/cs.vim
    runtime! syntax/html.vim
endif

syn cluster razorBlocks add=razorCodeBlock,razorCommentBlock

syn region razorCodeBlock start="@" end="}\|)\|\n|\"" contains=cstype,csStatements,csStorage,csRepeat,csConditional,csLabel,csOperator,csModifier,csConstant,csException,csUnspecifiedStatement,csUnsupportedStatement,csUnspecifiedKeyword containedin=ALLBUT,@razorBlocks
syn region razorComment start="@*" end="*@" contains=csComment containedin=ALLBUT,@razorBlocks

hi def link razorCommentBlock comment

let b:current_syntax = "cshtml"
