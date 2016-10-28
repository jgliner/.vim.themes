let s:N1 = [ '#005F87' , '#C6C6C6' , 251 , 24 ] " dirtywhite & steelblue
let s:N2 = [ '#626262' , '#1C1C1C' , 241 , 234 ] " steelblue    & deepgravel
let s:N3 = [ '#626262' , '#121212' , 241 , 233 ] " steelblue & darkgravel
let s:N4 = [ '#262626' , 235 ]                   " mediumgravel

let s:I1 = [ '#005F87' , '#1C1C1C' , 24 , 234 ] " steelblue    & deepgravel
let s:I2 = [ '#005F87' , '#C6C6C6' , 251 , 24 ] " dirtywhite & steelblue
let s:I3 = [ '#005F87' , '#121212' , 24 , 233 ] " steelblue & darkgravel

let s:V1 = [ '#141413' , '#ffa724' , 233 , 214 ] " blackestgravel & orange
let s:V2 = [ '#000000' , '#fade3e' , 16  , 221 ] " coal           & dalespale
let s:V3 = [ '#000000' , '#b88853' , 16  , 137 ] " coal           & toffee
let s:V4 = [ '#c7915b' , 173 ]                   " coffee

let s:PA = [ '#C6C6C6' , 251 ]                   " dirtyblonde
let s:RE = [ '#C6C6C6' , 251 ]                   " dress

let s:IA = [ s:N3[1] , s:N2[1] , s:N3[3] , s:N2[3] , '' ]

let g:airline#themes#jdg#palette = {}

let g:airline#themes#jdg#palette.accents = {
      \ 'red': [ '#ff2c4b' , '' , 196 , '' , '' ]
      \ }

let g:airline#themes#jdg#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#jdg#palette.normal_modified = {
      \ 'airline_b': [ s:N2[0]   , s:N4[0]   , s:N2[2]   , s:N4[1]   , ''     ] ,
      \ 'airline_c': [ s:V1[1]   , s:N2[1]   , s:V1[3]   , s:N2[3]   , ''     ] }


let g:airline#themes#jdg#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#jdg#palette.insert_modified = {
      \ 'airline_c': [ s:V1[1]   , s:N2[1]   , s:V1[3]   , s:N2[3]   , ''     ] }
let g:airline#themes#jdg#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , s:PA[0]   , s:I1[2]   , s:PA[1]   , ''     ] }


let g:airline#themes#jdg#palette.replace = copy(airline#themes#jdg#palette.insert)
let g:airline#themes#jdg#palette.replace.airline_a = [ s:I1[0] , s:RE[0] , s:I1[2] , s:RE[1] , '' ]
let g:airline#themes#jdg#palette.replace_modified = g:airline#themes#jdg#palette.insert_modified


let g:airline#themes#jdg#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#jdg#palette.visual_modified = {
      \ 'airline_c': [ s:V3[0]   , s:V4[0]   , s:V3[2]   , s:V4[1]   , ''     ] }


let g:airline#themes#jdg#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#jdg#palette.inactive_modified = {
      \ 'airline_c': [ s:V1[1]   , ''        , s:V1[3]   , ''        , ''     ] }

