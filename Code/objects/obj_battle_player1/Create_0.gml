data = obj_battle_switch.data_player
_action = noone
_target = noone
_self = obj_battle_player1
is_dead = false
stat = false //per visualizzare le statistiche quando passi il mouse
current_atk = data.atk
curretn_matk = data.m_atk
current_def = data.def
current_speed = data._speed
current_luck = data.luck
level_up = false
draw_state = false
point = 2
max_point = point
is_attacking = false
defend = 1

//condizione di stato
_state = noone


//magie
magics = []
for(i = 0;i < array_length(data.magics);i++){
    var magic = instance_create_depth(0,0,0,data.magics[i])  
    array_push(magics,magic)
}


default_sprite = Sprite28
sprite_index = default_sprite
defend_sprite = Sprite37

//variabili x draw
var gui_w = global.w_res 
var gui_h = global.h_res
_w = gui_w/4
_h = gui_h/3
_x  = gui_w*x/room_width
_y = gui_h*y/room_height
_y_pointer = _y + 0.2*_h
 _x_pointer = _x + 0.3*_w