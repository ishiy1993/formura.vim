
if version < 600
  syntax clear
elseif exists("b:current_syntax") && b:current_syntax == "formura"
  finish
endif

syn keyword formuraConditional if then else
syn keyword formuraKeyword fun begin end function extern manifest
syn keyword formuraSpecial axes dimension
syn keyword formuraType integer rational float double complex_float complex_double Real Complex string
syn keyword formuraOperator and or not

syn match formuraOperator "::"
syn match formuraOperator "+"
syn match formuraOperator "\*"
syn match formuraOperator "\-"
syn match formuraOperator "/"
syn match formuraOperator "\*\*"
syn match formuraOperator "\."
syn match formuraOperator "&&"
syn match formuraOperator "||"
syn match formuraOperator ">"
syn match formuraOperator ">="
syn match formuraOperator "=="
syn match formuraOperator "!="
syn match formuraOperator "<"
syn match formuraOperator "<="

syn match formuraComment /#.*$/

syn region formuraString start=+"+ skip=+\\\\\|\\"+ end=+"+

hi def link formuraConditional Conditional
hi def link formuraKeyword Keyword
hi def link formuraOperator Operator
hi def link formuraSpecial Special
hi def link formuraType Type
hi def link formuraString String
hi def link formuraComment Comment

let b:current_syntax = "formura"
