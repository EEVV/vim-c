if exists("b:current_syntax")
	finish
endif

" compiler directive
syntax match cPreProc "\v#.*$"

" keywords
syntax keyword cStructure struct enum
syntax keyword cKeyword continue break return typedef
syntax keyword cConditional if else switch
syntax keyword cRepeat while for

" types
syntax keyword cType char int long
syntax keyword cType float double
syntax keyword cType void
syntax keyword cType uint64_t uint32_t uint16_t uint8_t
syntax keyword cType int64_t int32_t int16_t int8_t
syntax keyword cType size_t

" misc types
syntax keyword cType BOOL

" my types
syntax match cType "\v[A-Z][a-zA-Z0-9_]*"

" identifiers
syntax match cIdentifier "\v[a-z][a-zA-Z0-9_]*"

" functions
syntax match cFunction "\v[a-z][a-zA-Z0-9_]*(\()@="

" operators
syntax match cOperator "+"
syntax match cOperator "-"
syntax match cOperator "*"
syntax match cOperator "/"
syntax match cOperator "%"
syntax match cOperator "&"
syntax match cOperator "|"
syntax match cOperator "<"
syntax match cOperator ">"
syntax match cOperator "="

" comments
syntax match cComment "\v//.*$"

" constants / literals
syntax match cConstant "\v[0-9]+|TRUE|FALSE"
syntax region cString start=/\v"/ skip=/\v\\./ end=/\v"/

" linking
highlight link cPreProc PreProc
highlight link cStructure Structure
highlight link cKeyword Keyword
highlight link cConditional Conditional
highlight link cRepeat Repeat
highlight link cType Type
highlight link cIdentifier Identifier
highlight link cFunction Function
highlight link cComment Comment
highlight link cOperator Operator
highlight link cConstant Constant
highlight link cString String

let b:current_syntax = "c"
