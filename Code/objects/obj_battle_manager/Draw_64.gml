
var gui_w = global.w_res
var gui_h = global.h_res
var _w = gui_w/4
var _h = gui_h/3
var _x = 0
var _y = gui_h - _h


draw_sprite_stretched(Sprite40,0,_x,_y,_w,_h)
if(obj_battle_player1.is_dead){
    draw_sprite_stretched(dKristo,0,_x,_y,_w,_h)
}else{
    if(obj_battle_player1.is_attacking){
        draw_sprite_stretched(Sprite33,0,_x,_y,_w,_h) 
        if(alarm[4] == -1){
            alarm[4] = 120
        }
    }else{
       draw_sprite_stretched(obj_battle_player1.sprite_index,0,_x,_y,_w,_h) 
    }
}

if(obj_battle_manager._turn == 0){
    draw_sprite_stretched(spr_pesce,0,_x,_y,_w,_h)
}
draw_sprite_stretched(Sprite40,0,_x+_w,_y,_w,_h)
if(obj_battle_manager._turn == 1){
    draw_sprite_stretched(spr_pesce,0,_x+_w,_y,_w,_h)
}
draw_sprite_stretched(Sprite40,0,_x+2*_w,_y,_w,_h)
if(obj_battle_manager._turn == 2){
    draw_sprite_stretched(spr_pesce,0,_x+2*_w,_y,_w,_h)
}
draw_sprite_stretched(Sprite40,0,_x+3*_w,_y,_w,_h)
if(obj_battle_manager._turn == 3){
    draw_sprite_stretched(spr_pesce,0,_x+3*_w,_y,_w,_h)
}

var _h_name = _h/3
_y -= _h_name 

draw_sprite_stretched(Sprite40,0,_x,_y,_w,_h_name)
draw_sprite_stretched(Sprite40,0,_x+_w,_y,_w,_h_name)
draw_sprite_stretched(Sprite40,0,_x+2*_w,_y,_w,_h_name)
draw_sprite_stretched(Sprite40,0,_x+3*_w,_y,_w,_h_name)

var _h_bar = gui_h - _h - _h_name
_y = 0

draw_sprite_stretched(Sprite40,0,_x,_y,_w,_h_bar)