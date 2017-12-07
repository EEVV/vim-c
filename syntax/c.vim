if exists("b:current_syntax")
	finish
endif

" compiler directive
syntax match cPreProc "\v#.*$"

" keywords
syntax keyword cStructure struct enum
syntax keyword cKeyword continue break return
syntax keyword cConditional if else switch
syntax keyword cRepeat while for

" types
syntax keyword cType char int long
syntax keyword cType float double
syntax keyword cType void

" misc types
syntax keyword cType BOOL

" my types
syntax match cType "\v[A-Z][a-zA-Z0-9]*"

" identifiers
syntax match cIdentifier "\v[a-z][a-zA-Z0-9_]*"

" functions
syntax match cFunction "\v[a-z][a-zA-Z0-9_]*(\()@="

" comments
syntax match cComment "\v\\\\.*$"


" linking
highlight link cPreProc PreProc
highlight link cStructure Structure
highlight link cKeyword Keyword
highlight link cRepeat Repeat
highlight link cType Type
highlight link cIdentifier Identifier
highlight link cFunction Function
highlight link cComment Comment

let b:current_syntax = "c"
