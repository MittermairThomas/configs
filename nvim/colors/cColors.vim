highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "cColors"

hi Normal       guibg=NONE   ctermbg=NONE
hi NormalFloat  guibg=NONE   ctermbg=NONE

hi Keyword      guifg=#F4FF00
hi Statement    guifg=#F4FF00
hi StorageClass guifg=#FF005F
hi Structure    guifg=#AF00FF
hi Comment      guifg=#00E0C4
hi String       guifg=#FF00FF
hi Number       guifg=#8F8FFF
hi Type         guifg=#AF00FF
hi cFunction     guifg=#B0FFFF
hi PreProc      guifg=#00D4D4
hi Identifier   guifg=#FFFFFF
hi Special      guifg=FFD700
