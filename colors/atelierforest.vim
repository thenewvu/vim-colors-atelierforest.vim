" Name:       atelierforest.vim
" Version:    0.1
" Maintainer: github.com/thenewvu
" License:    The MIT License (MIT)
" 
" A lot of works come from:
" https://github.com/noahfrederick/vim-hemisu/
" https://github.com/reedes/vim-colors-pencil
" https://github.com/pbrisbin/vim-colors-off
"
"""
hi clear

if exists('syntax on')
  syntax reset
endif

let g:colors_name='atelierforest'

if ! exists("g:hackerrank_transparent")
  let g:hackerrank_transparent = 0
endif

" lightest
let s:shade0  = { "gui": "#f1efee" }
let s:shade1  = { "gui": "#e5e2e0" }
let s:shade2  = { "gui": "#dad5d2" }
let s:shade3  = { "gui": "#8f8783" }
let s:shade4  = { "gui": "#68615e" }
" darkest

let s:red     = { "gui": "#f22c40" }
let s:green   = { "gui": "#5ab738" }

function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="  (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="  (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="  (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="    (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
endfunction

" primitive syntaxs
if g:hackerrank_transparent == 1
  call s:h("Normal",        {"fg": s:shade4})
else
  call s:h("Normal",        {"fg": s:shade4, "bg": s:shade0})
endif
call s:h("Comment",       {"fg": s:shade3, "gui": "italic"})
call s:h("Cursor",        {"gui": "standout"})

call s:h("Constant",      {"fg": s:shade4})
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
hi! link String           Constant

call s:h("Identifier",    {"fg": s:shade4})
hi! link Function         Identifier

call s:h("Statement",     {"fg": s:shade4})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Operator         Statement
hi! link Keyword          Statement
hi! link Exception        Statement

call s:h("PreProc",       {"fg": s:shade4})
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

call s:h("Type",          {"fg": s:shade4})
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

call s:h("Special",       {"fg": s:shade4})
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

call s:h("Underlined",    {"fg": s:shade3, "gui": "underline"})
call s:h("Ignore",        {})
call s:h("Error",         {"fg": s:shade4})
call s:h("Todo",          {"fg": s:shade4})
call s:h("SpecialKey",    {"fg": s:shade4})
call s:h("NonText",       {"fg": s:shade3})
call s:h("Directory",     {"fg": s:shade4})
call s:h("ErrorMsg",      {"fg": s:shade4})
call s:h("IncSearch",     {"gui": "standout"})
call s:h("Search",        {"gui": "standout"})
call s:h("MoreMsg",       {"fg": s:shade3})
call s:h("ModeMsg",       {"fg": s:shade3})
call s:h("LineNr",        {"fg": s:shade2})
call s:h("CursorLineNr",  {"fg": s:shade4})
call s:h("Question",      {"fg": s:shade4})
call s:h("StatusLine",    {"fg": s:shade3, "bg": s:shade1})
call s:h("StatusLineNC",  {"fg": s:shade3, "bg": s:shade1})
call s:h("VertSplit",     {"fg": s:shade3})
call s:h("Title",         {"fg": s:shade3})
call s:h("Visual",        {"gui": "standout"})
call s:h("VisualNOS",     {"gui": "standout"})
call s:h("WarningMsg",    {"fg": s:shade4})
call s:h("WildMenu",      {"fg": s:shade4, "bg": s:shade2})
call s:h("Folded",        {"fg": s:shade4, "bg": s:shade2})
call s:h("FoldColumn",    {"fg": s:shade3})
call s:h("DiffAdd",       {"fg": s:green})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:red})
call s:h("DiffText",      {"fg": s:shade4})
call s:h("DiffFile",      {"fg": s:shade4, "gui": "underline"})
call s:h("SignColumn",    {"fg": s:shade4})

call s:h("Pmenu",         {"fg": s:shade3, "bg": s:shade2})
call s:h("PmenuSel",      {"fg": s:shade4, "bg": s:shade2})
call s:h("PmenuSbar",     {"fg": s:shade4, "bg": s:shade2})
call s:h("PmenuThumb",    {"fg": s:shade4, "bg": s:shade2})
call s:h("TabLine",       {"fg": s:shade3, "bg": s:shade1})
call s:h("TabLineSel",    {"fg": s:shade4, "bg": s:shade1})
call s:h("TabLineFill",   {"fg": s:shade3, "bg": s:shade1})
call s:h("CursorColumn",  {"fg": s:shade4})
call s:h("CursorLine",    {"fg": s:shade4})
call s:h("ColorColumn",   {"fg": s:shade4})

call s:h("MatchParen",    {"gui": "standout"})
call s:h("qfLineNr",      {"fg": s:shade4})
call s:h("QuickFixLine",  {"bg": s:shade1})

call s:h("htmlH1",        {"fg": s:shade4})
call s:h("htmlH2",        {"fg": s:shade4})
call s:h("htmlH3",        {"fg": s:shade4})
call s:h("htmlH4",        {"fg": s:shade4})
call s:h("htmlH5",        {"fg": s:shade4})
call s:h("htmlH6",        {"fg": s:shade4})

hi link diffRemoved       DiffDelete
hi link diffAdded         DiffAdd

hi! link htmlTag          Special
hi! link htmlEndTag       htmlTag

hi! link htmlTagName      KeyWord
hi! link htmlTagN         Keyword

hi! link xmlTag           htmlTag
hi! link xmlEndTag        xmlTag
hi! link xmlTagName       htmlTagName
