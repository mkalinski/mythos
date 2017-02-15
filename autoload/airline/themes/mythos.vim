" Mythos palette, copied for convenience.
let s:col00 = "#151d20"		" black 1
let s:col01 = "#875a61"		" red 1
let s:col02 = "#4b725e"		" green 1
let s:col03 = "#766c45"		" brown 1
let s:col04 = "#526a87"		" blue 1
let s:col05 = "#775671"		" purple 1
let s:col06 = "#4e6c72"		" teal 1
let s:col07 = "#485356"		" grey 1
let s:col08 = "#202d31"		" black 2
let s:col09 = "#9c6b61"		" red 2
let s:col10 = "#657f5e"		" green 2
let s:col11 = "#9b996c"		" brown 2
let s:col12 = "#5b859e"		" blue 2
let s:col13 = "#7d7294"		" purple 2
let s:col14 = "#6e8f84"		" teal 2
let s:col15 = "#8a9193"		" grey 2

let airline#themes#mythos#palette = {}

" Only the A segment changes colors for modes; B and C remain the same apart
" from inactive. Also, B gets black text, C gets grey, for A it's variable.
" The flow of colors in normal mode is green-purple-black: dirty fish scales,
" putrid flesh, dark abyss. :)

" Meaning of list items is: [guifg, guibg, ctermfg, ctermbg, opts].

let s:std_b = [s:col08, s:col05,  8, 5, '']
let s:std_c = [s:col15, s:col00, 15, 0, '']
" Modified override is for the C segment - text becomes yellow.
let s:mod_c = [s:col11, s:col00, 11, 0, '']

" Normal and visual are green and blue.
" Their text is dark, so it doesn't stand out: they both don't modify buffers.
let s:Na = [s:col08, s:col02, 8, 2, '']
let airline#themes#mythos#palette.normal = airline#themes#generate_color_map(s:Na, s:std_b, s:std_c)
let airline#themes#mythos#palette.normal_modified = {'airline_c': s:mod_c}

let s:Va = [s:Na[0], s:col04, s:Na[2], 4, '']
let airline#themes#mythos#palette.visual = airline#themes#generate_color_map(s:Va, s:std_b, s:std_c)
let airline#themes#mythos#palette.visual_modified = {'airline_c': s:mod_c}

" Insert has yellow background and text, and replace has red.
let s:Ia = [s:col11, s:col03, 11, 3, '']
let airline#themes#mythos#palette.insert = airline#themes#generate_color_map(s:Ia, s:std_b, s:std_c)
let airline#themes#mythos#palette.insert_modified = {'airline_c': s:mod_c}

let s:Ra = [s:col09, s:col01, 9, 1, '']
let airline#themes#mythos#palette.replace = airline#themes#generate_color_map(s:Ra, s:std_b, s:std_c)
let airline#themes#mythos#palette.replace_modified = {'airline_c': s:mod_c}

" Inactive is grey with black A and B (for flavour).
" When modified, text in C turns to black.
let s:IAa = [s:col15, s:col00, 15, 0, '']
let s:IAb = s:IAa
let s:IAc = [s:col15, s:col07, 15, 7, '']
let airline#themes#mythos#palette.inactive = airline#themes#generate_color_map(s:IAa, s:IAb, s:IAc)
let airline#themes#mythos#palette.inactive_modified = {'airline_c': [s:col00, s:col07, 0, 7, '']}

" Red accent consistent with the theme.
let airline#themes#mythos#palette.accents = {'red': [s:col01, '', 1, '']}
