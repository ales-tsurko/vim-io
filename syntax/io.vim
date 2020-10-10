" Vim Syntax File
" Language:     Io
" Creator:      Scott Dunlop <swdunlop@verizon.net>
" Fixes:        Manpreet Singh <junkblocker@yahoo.com>
"               Jonathan Wright <quaggy@gmail.com>
"               Erik Garrison <erik.garrison@gmail.com>
"
" Packaging:    Andrei Maxim <andrei@andreimaxim.ro>
" Last Change:  2011 Dec 16

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syntax case match

" equivalent to io-mode-message-names in io-mode.el
syntax keyword ioKeyword continue exit forward list message
syntax keyword ioKeyword nil parent pass pause proto resend resume 
syntax keyword ioKeyword return self sender super thisBlock thisContext call 
syntax keyword ioKeyword yield

syntax keyword ioException catch Error raise raiseResumable try

syntax keyword ioFunction activate activeCoroCount asString clone block method
syntax keyword ioFunction collectGarbage compileString do doFile doMessage
syntax keyword ioFunction doString getSlot getEnvironmentVariable hasSlot 
syntax keyword ioFunction perform performWithArgList print println 
syntax keyword ioFunction removeSlot schedulerSleepSeconds isResumable
syntax keyword ioFunction setSchedulerSleepSeconds setSlot shallowCopy
syntax keyword ioFunction slotNames system type uniqueId updateSlot wait write 
syntax keyword ioFunction ifFalse ifNil ifNilEval ifTrue isActive isNil 

syn match ioFunction "\zs\<[_a-zA-Z0-9_]\+\>\ze\s*(" display

syntax keyword ioConditional and else elseif if or then 

syntax keyword ioRepeat for foreach map select repeat while

syntax keyword ioBoolean false true

syn match ioIdentifier "\zs\<[_a-zA-Z0-9_]\+\>\ze\s*:\+=[^=]" display

syn match ioType "\<[A-Z][A-Za-z0-9_]*\>" display

syntax region ioOperator start=':' end='='
syntax region ioOperator start='!' end='='
syntax region ioOperator start='@' end='@'
syntax region ioOperator start='@' end='[^@]'he=e-1
syntax region ioOperator start='?' end='?'
syntax region ioOperator start='?' end='[^?]'he=e-1
syntax region ioOperator start=';' end=';'
syntax region ioOperator start=';' end='[^;]'he=e-1
syntax region ioOperator start='\.' end='\.'
syntax region ioOperator start='\.' end='[^\.]'he=e-1
syntax region ioOperator start='=' end='='
syntax region ioOperator start='=' end=' 'he=e-1
syntax region ioOperator start='[*/>=+-]' end='[ 0-9]'he=e-1

syntax region ioString start=/"/ skip=/\\./ end=/"/
syntax region ioString start=/"""/ skip=/\\./ end=/"""/

syn match   ioHexNumber	"\<0[xX]\x\+[lL]\=\>" display
syn match   ioHexNumber	"\<0[xX]\>" display
syn match   ioNumber	"-\?\<\d\+[lLjJ]\=\>" display
syn match   ioFloat		"-\?\.\d\+\([eE][+-]\=\d\+\)\=[jJ]\=\>" display
syn match   ioFloat		"-\?\<\d\+[eE][+-]\=\d\+[jJ]\=\>" display
syn match   ioFloat		"-\?\<\d\+\.\d*\([eE][+-]\=\d\+\)\=[jJ]\=" display

syn match   ioOctalError	"\<0\o*[89]\d*[lL]\=\>" display
syn match   ioError	"\<0[xX]\X\+[lL]\=\>" display

syntax region ioComment start='#' end='$' keepend contains=ioTodo,@Spell
syntax region ioComment start=/\/\*/ end=/\*\// contains=ioTodo,ioDocComment,@Spell
syntax region ioComment start=/\/\// end=/$/ keepend contains=ioTodo,ioDocComment,@Spell
syntax keyword ioTodo TODO FIXME XXX
syn match ioDocComment "\(meta\)\?doc\s\+\zs\(\<[A-Za-z_0-9]\+\>\s*\)\{2\}\((.*)\)\?" display

highlight link ioComment Comment
highlight link ioTodo Todo
highlight link ioDocComment SpecialComment
highlight link ioString String
highlight link ioHexNumber Number
highlight link ioNumber Number
highlight link ioBoolean Boolean
highlight link ioFloat Float
highlight link ioIdentifier Identifier
highlight link ioFunction Function
highlight link ioConditional Conditional
highlight link ioRepeat Repeat
highlight link ioOperator Operator
highlight link ioKeyword Keyword
highlight link ioException Exception
highlight link ioType Type
highlight link ioOctalError Error
highlight link ioError Error

setlocal commentstring=#\ %s
set spell

let b:current_syntax = "io"
