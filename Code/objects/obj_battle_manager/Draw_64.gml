
var gui_w = camera_get_view_width(0)
var gui_h = camera_get_view_height(0)
var _w = gui_w/4
var _h = gui_h/3
var _x = 0
var _y = gui_h - _h


draw_sprite_stretched(spr_box,0,_x,_y,_w,_h)
draw_sprite_stretched(Sprite28,0,_x,_y,_w,_h)
if(obj_battle_manager._turn == 0){
    draw_sprite_stretched(spr_pesce,0,_x,_y,_w,_h)
}
draw_sprite_stretched(spr_box,0,_x+_w,_y,_w,_h)
if(obj_battle_manager._turn == 1){
    draw_sprite_stretched(spr_pesce,0,_x+_w,_y,_w,_h)
}
draw_sprite_stretched(spr_box,0,_x+2*_w,_y,_w,_h)
if(obj_battle_manager._turn == 2){
    draw_sprite_stretched(spr_pesce,0,_x+2*_w,_y,_w,_h)
}
draw_sprite_stretched(spr_box,0,_x+3*_w,_y,_w,_h)
if(obj_battle_manager._turn == 3){
    draw_sprite_stretched(spr_pesce,0,_x+3*_w,_y,_w,_h)
}

var _h_name = _h/3
_y -= _h_name 

draw_sprite_stretched(spr_box,0,_x,_y,_w,_h_name)
draw_sprite_stretched(spr_box,0,_x+_w,_y,_w,_h_name)
draw_sprite_stretched(spr_box,0,_x+2*_w,_y,_w,_h_name)
draw_sprite_stretched(spr_box,0,_x+3*_w,_y,_w,_h_name)

var _h_bar = gui_h - _h - _h_name
_y = 0

draw_sprite_stretched(spr_box,0,_x,_y,_w,_h_bar)