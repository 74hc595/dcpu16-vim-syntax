" Vim syntaxtax file
" Language:     DCPU-16 Assembler (Notch's virtual CPU, http://0x10c.com)
" Maintainer:   Luis Panadero Guardeño <luis.panadero@gmail.com>
"        Previus maintainer:
"        Matt Sarnoff <msarnoff.org>
" Last Change:  June 5, 2015
" URL:          https://github.com/Zardoz89/dcpu16-vim-syntax
" Revision:     2

if exists("b:current_syntaxtax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syntax case match
syntax keyword dcpuTodo NOTE TODO FIXME XXX contained
syntax case ignore

" any valid identifier
syntax match dcpuIdentifier "[A-Z_$?][A-Z0-9_$?]*"

" valid label
syntax match dcpuLabel      "^:[A-Z_$?][A-Z0-9_$?]*"
syntax match dcpuLabel      "[A-Z_$?][A-Z0-9_$?]*:"
syntax match dcpuSubLabel   "^:\.[A-Z_$?][A-Z0-9_$?]*"
syntax match dcpuSubLabel   "\.[A-Z_$?][A-Z0-9_$?]*:"
" me=e-1

" one character
syntax match dcpuASCII      "'.'"

" numbers:
" octal
syntax match dcpuNumber     "\<0[0-7]*\>"
syntax match dcpuNumber     "\<[0-7]\+[oO]\>"
" decimal
syntax match dcpuNumber     "\<[1-9][0-9]*\>"
" hexadecimal
syntax match dcpuNumber     "\<0[Xx][0-9a-fA-F]\+\>"
syntax match dcpuNumber     "\<[0-9][0-9a-fA-F]*[Hh]\>"
syntax match dcpuNumber     "\$[0-9a-fA-F]\+\>"
" binary
syntax match dcpuNumber     "\<0[Bb][01]\+\>"
syntax match dcpuNumber     "\<[0-1]\+[bB]\>"

" string in double quotes
syntax region dcpuString    start=+"+ end=+"+

" comments with special marks
syntax match dcpuComment    ";.*" contains=dcpuTodo
syntax region dcpuComment   start="/\*" end="\*/"

syntax match dcpuOperator   "[-+*]"
" registers
syntax keyword dcpuRegister        a b c x y z i j sp pc ex pop peek push pick

" instruction opcodes
syntax keyword dcpuOpcode  set add sub mul mli div dvi mod mdi and bor xor shr asr shl ifb ifc ife ifn ifg ifa ifl ifu adx sbx sti std
syntax keyword dcpuOpcode  jsr int iag ias rfi iaq hwn hwq hwi bcf
syntax keyword dcpuOpcode  ret


" Directiveessor commands
syntax match dcpuDirective      "\.?org"
syntax match dcpuDirective      "\.?dat"
syntax match dcpuDirective      "\.?fill"
syntax match dcpuDirective      "\.?reserve"
syntax match dcpuDirective      "\.?asciz"
syntax match dcpuDirective      "\.?def"
syntax match dcpuDirective      "\.?define"
syntax match dcpuDirective      "\.?flag"
syntax match dcpuDirective      "ignorelabelcase"
syntax match dcpuDirective      "arrangechunks"
syntax match dcpuDirective      "strictdefinecommas"
syntax match dcpuDirective      "\.?macro"
syntax match dcpuDirective      "\.?opcode"

syntax match dcpuInclude        "\.?include"
syntax match dcpuInclude        "#include"

" Define the default highlighting.

highlight default link dcpuTodo               Todo
highlight default link dcpuComment            Comment

highlight default link dcpuLabel              Function
highlight default link dcpuSubLabel           Label
highlight default link dcpuString             String
highlight default link dcpuASCII              Character
highlight default link dcpuNumber             Number

highlight default link dcpuOpcode             Statement
highlight default link dcpuOperator           Type
highlight default link dcpuRegister           Identifier
highlight default link dcpuDirective          Special
highlight default link dcpuInclude            Include

highlight default link dcpuIdentifier         Identifier


let b:current_syntaxtax = "dcpu"

let &cpo = s:cpo_save
unlet s:cpo_save

" vim: set ts=8 sw=2 tw=0 et :
