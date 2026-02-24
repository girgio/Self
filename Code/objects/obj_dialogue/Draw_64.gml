var _dx = gui_w*0.025
var _dy = gui_h*0.75
var _w = gui_w*0.95
var _h = (gui_h - _dy)*0.95

draw_sprite_stretched(spr_box,0,_dx,_dy,_w,_h)

_dx += 16
_dy += 16

draw_set_font(Font1)

var _name = message[current_message].name
var _img = message[current_message].img

draw_text_ext(_dx,_dy,draw_message,-1,_w - 2*_dx)

_h = 256
_w = 256
_dy = _dy - (32 + _h)
_dx -= 16

if(_img){
    draw_sprite_stretched(_img,0,_dx,_dy,_w,_h)
}





if(_name != 0){
    var _h_name = string_height(_name)+16
    var _w_name = string_width(_name)+16
    _dy += _h - _h_name
    
    if(_img){
        _dx += _w + 16    
    }
    
    
    draw_set_valign(fa_center)
    draw_set_halign(fa_center)
    
    draw_sprite_stretched(spr_box,0,_dx,_dy,_w_name,_h_name)
    
    _dx += _w_name/2
    _dy += _h_name/2
    
    draw_text(_dx,_dy,_name)
    draw_set_valign(fa_left)
    draw_set_halign(fa_top)
    
}






