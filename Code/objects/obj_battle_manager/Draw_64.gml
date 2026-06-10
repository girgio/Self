
if(origin_turn != _turn){
    image_index = 0
    origin_turn = _turn
}

var gui_w = global.w_res
var gui_h = global.h_res
var _w = gui_w/4
var _h = gui_h/3
var _x = 0
var _y = gui_h - _h

image_speed = 12/60;
_spr_box = Sprite40
_eye = Sprite43
_spr_box_healt = Sprite41



if(obj_battle_manager._turn == 0){
    draw_sprite_stretched(_spr_box,-1,_x,_y,_w,_h)
}else{
    draw_sprite_stretched(_spr_box,0,_x,_y,_w,_h)
}
if(obj_battle_player1.is_dead){
    draw_sprite_stretched(dKristo,0,_x,_y + 10,_w,_h -30)
}else{
    if(obj_battle_player1.is_attacking){
        draw_sprite_stretched(Sprite33,0,_x,_y+ 10,_w,_h -30) 
        if(alarm[4] == -1){
            alarm[4] = 120
        }
    }else{
       draw_sprite_stretched(obj_battle_player1.sprite_index,0,_x,_y+ 10,_w,_h -30) 
    }
}

if(obj_battle_manager._turn == 1){
    draw_sprite_stretched(_spr_box,-1,_x+_w,_y,_w,_h)
}else {
	draw_sprite_stretched(_spr_box,0,_x+_w,_y,_w,_h)
}

if(obj_battle_player2.is_dead){
    draw_sprite_stretched(dKristo,0,_x +_w,_y + 10,_w,_h -30)
}else{
    if(obj_battle_player2.is_attacking){
        draw_sprite_stretched(Sprite33,0,_x +_w,_y+ 10,_w,_h -30) 
        if(alarm[4] == -1){
            alarm[4] = 120
        }
    }else{
       draw_sprite_stretched(obj_battle_player2.sprite_index,0,_x +_w,_y+ 10,_w,_h -30) 
    }
}

if(obj_battle_manager._turn == 2){
    draw_sprite_stretched(_spr_box,-1,_x+2*_w,_y,_w,_h)
}else {
	draw_sprite_stretched(_spr_box,0,_x+2*_w,_y,_w,_h)
}

if(obj_battle_manager._turn == 3){
    draw_sprite_stretched(_spr_box,-1,_x+3*_w,_y,_w,_h)
}else {
	draw_sprite_stretched(_spr_box,0,_x+3*_w,_y,_w,_h)
}

var _h_name = _h/3
_y -= _h_name 

draw_sprite_stretched(_spr_box_healt,0,_x,_y,_w,_h_name)
draw_sprite_stretched(_spr_box_healt,0,_x+_w,_y,_w,_h_name)
draw_sprite_stretched(_spr_box_healt,0,_x+2*_w,_y,_w,_h_name)
draw_sprite_stretched(_spr_box_healt,0,_x+3*_w,_y,_w,_h_name)

if(!obj_battle_player1.is_dead)
{
    if(obj_battle_manager._turn == 0){
    
        draw_sprite_stretched(_eye,-1,_x + 10,_y - 40,_w -  40,_h - 160)
   }else{
       draw_sprite_stretched(_eye,0,_x+ 10,_y - 40,_w -  40,_h - 160)
   }   
}else{
    image_speed = 18/60;
    draw_sprite_stretched(spr_blood_eye,-1,_x + 10,_y - 40,_w -  40,_h - 160)
}

if(!obj_battle_player2.is_dead){
  if(obj_battle_manager._turn == 1){
    draw_sprite_stretched(_eye,-1,_x+_w+ 10,_y - 40,_w -  40,_h - 160)
    }else {
    	draw_sprite_stretched(_eye,0,_x+_w+ 10,_y - 40,_w -  40,_h - 160)
    }  
}else{
    image_speed = 18/60;
    draw_sprite_stretched(spr_blood_eye,-1,_x+_w+ 10,_y - 40,_w -  40,_h - 160)
}

if(!obj_battle_player3.is_dead){
    if(obj_battle_manager._turn == 2){
        draw_sprite_stretched(_eye,-1,_x+2*_w+ 10,_y - 40,_w -  40,_h - 160)
    }else {
    	draw_sprite_stretched(_eye,0,_x+2*_w+ 10,_y - 40,_w -  40,_h - 160)
    }
}else{
    image_speed = 18/60;
    draw_sprite_stretched(spr_blood_eye,-1,_x+2*_w+ 10,_y - 40,_w -  40,_h - 160)
}

if(!obj_battle_player4.is_dead){
    if(obj_battle_manager._turn == 3){
        draw_sprite_stretched(_eye,-1,_x+3*_w+ 10,_y - 40,_w -  40,_h - 160)
    }else {
    	draw_sprite_stretched(_eye,0,_x+3*_w+ 10,_y - 40,_w -  40,_h - 160)
    }
}else{
    image_speed = 18/60;
    draw_sprite_stretched(spr_blood_eye,-1,_x+3*_w+ 10,_y - 40,_w -  40,_h - 160)
}

var _h_bar = gui_h - _h - _h_name
_y = 0

draw_sprite_stretched(Sprite42,0,_x,_y,_w,_h_bar)