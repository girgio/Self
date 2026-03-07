
draw_set_halign(fa_center)
draw_set_valign(fa_center)

if(obj_pointer._selezione != "magic" or obj_pointer._selezione_magia){
    draw_set_font(FontBattle)	
}else{
      draw_set_font(Font2)
}

var _dx = gui_w*1/4
var _w = gui_w*3/4
var _h = gui_h*0.1
var _dy = gui_h*5/9 - _h


draw_sprite_stretched(spr_box,0,_dx,_dy,_w,_h)

_dx += _w/2
_dy += _h/2

  
    	




draw_text_ext(_dx,_dy,draw_message,-1,_w - 2*_dx)

draw_set_valign(fa_left)
    draw_set_halign(fa_top)
    


