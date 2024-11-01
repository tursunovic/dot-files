" MacVim colorscheme
"
" Author:       Bjorn Winckler <bjorn.winckler@gmail.com>
" Maintainer:   macvim-dev (https://github.com/macvim-dev)
" Last Change:  2008 May 9
"
" This is the default MacVim color scheme.  It supports both light and dark
" backgrounds (see :h 'background').
"


highlight clear

" Reset String -> Constant links etc if they were reset
if exists("syntax_on")
  syntax reset
endif

let colors_name = "macvim"


"
" First list all groups common to both 'light' and 'dark' background.
"

" `:he highlight-groups`
hi DiffAdd      guibg=MediumSeaGreen
hi Directory    guifg=#1600FF
hi ErrorMsg     guibg=Firebrick2 guifg=White
hi FoldColumn   guibg=Grey guifg=DarkBlue
hi Folded       guibg=#E6E6E6 guifg=DarkBlue
hi IncSearch    gui=reverse
hi ModeMsg      gui=bold
hi MoreMsg      gui=bold guifg=SeaGreen4
hi NonText      gui=bold guifg=Blue
hi Pmenu        guibg=LightSteelBlue1
hi PmenuSbar    guibg=Grey
hi PmenuSel     guifg=White guibg=SkyBlue4
hi PmenuThumb   gui=reverse
hi Question     gui=bold guifg=Chartreuse4
hi SignColumn   guibg=Grey guifg=DarkBlue
hi SpecialKey   guifg=Blue
hi SpellBad     guisp=Firebrick2 gui=undercurl
hi SpellCap     guisp=Blue gui=undercurl
hi SpellLocal   guisp=DarkCyan gui=undercurl
hi SpellRare    guisp=Magenta gui=undercurl
hi StatusLine   gui=NONE guifg=White guibg=DarkSlateGray
hi StatusLineNC gui=NONE guifg=SlateGray guibg=Gray90
hi TabLine      gui=underline guibg=LightGrey
hi TabLineFill  gui=reverse
hi TabLineSel   gui=bold
hi Title        gui=bold guifg=DeepSkyBlue3
hi VertSplit    gui=NONE guifg=DarkSlateGray guibg=Gray90
if has("gui_macvim")
  hi Visual       guibg=MacSelectedTextBackgroundColor
else
  hi Visual       guibg=#72F7FF
endif
hi WarningMsg   guifg=Firebrick2

" Syntax items (`:he group-name` -- more groups are available, these are just
" the top level syntax items for now).
hi Error        gui=NONE guifg=White guibg=Firebrick3
hi Identifier   gui=NONE guifg=Aquamarine4 guibg=NONE
hi Ignore       gui=NONE guifg=bg guibg=NONE
hi PreProc      gui=NONE guifg=DodgerBlue3 guibg=NONE
hi Special      gui=NONE guifg=BlueViolet guibg=NONE
hi String       gui=NONE guifg=SkyBlue4 guibg=NONE
hi Underlined   gui=underline guifg=SteelBlue1


"
" Groups that differ between 'light' and 'dark' background.
"

  hi Boolean      gui=NONE guifg=Red3 guibg=NONE
  hi Comment      gui=italic guifg=Blue2 guibg=NONE
  hi Constant     gui=NONE guifg=DarkOrange guibg=NONE
  hi Cursor       guibg=fg guifg=bg
  hi CursorColumn guibg=#F1F5FA
  hi CursorIM     guibg=fg guifg=bg
  hi CursorLine   guibg=#F1F5FA
  hi DiffChange   guibg=DeepSkyBlue
  hi DiffDelete   gui=bold guifg=Black guibg=SlateBlue
  hi DiffText     gui=NONE guibg=Gold
  hi LineNr       guifg=#888888 guibg=NONE
  hi MatchParen   guifg=White guibg=MediumPurple1
  if has("gui_macvim")
    hi Normal       gui=NONE guifg=MacTextColor guibg=MacTextBackgroundColor
  else
    hi Normal       gui=NONE guifg=Black guibg=White
  endif
  hi Search       guibg=CadetBlue1 guifg=NONE
  hi Statement    gui=bold guifg=Maroon guibg=NONE
  hi Todo         gui=NONE guifg=DarkGreen guibg=PaleGreen1
  hi Type         gui=bold guifg=Green4 guibg=NONE
  hi WildMenu     guibg=SkyBlue guifg=Black
  hi lCursor      guibg=fg guifg=bg


"
" Change the selection color on focus change (but only if the "macvim"
" colorscheme is active).
"
if has("gui_macvim") && !exists("s:augroups_defined")
  au FocusLost * if exists("colors_name") && colors_name == "macvim" | hi Visual guibg=MacSecondarySelectedControlColor | endif
  au FocusGained * if exists("colors_name") && colors_name == "macvim" | hi Visual guibg=MacSelectedTextBackgroundColor | endif

  let s:augroups_defined = 1
endif

" vim: sw=2
