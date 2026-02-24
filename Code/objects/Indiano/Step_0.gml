if(instance_exists(obj_dialogue)) exit;

hor = keyboard_check(vk_right) - keyboard_check(vk_left)
ver = keyboard_check(vk_down) - keyboard_check(vk_up)
if(keyboard_check(vk_shift)){
    movement_speed = movement_speed + 0.5
}
move_and_collide(hor*movement_speed,ver*movement_speed,[tilemap,obj_npc_parent],undefined,undefined,undefined,movement_speed,movement_speed)
movement_speed = 1

if(hor != 0 or ver != 0){
    if(ver > 0) {sprite_index = spr_player_walk_down} 
    else if(ver < 0) {sprite_index = spr_player_walk_up}
    else if(hor > 0) {sprite_index = spr_player_walk_right}
    else if(hor < 0) {sprite_index = spr_player_walk_left}
}else{
    if(sprite_index == spr_player_walk_down) {sprite_index = spr_player_walk_down}
    else if(sprite_index == spr_player_walk_up) {sprite_index = spr_player_idle_up}
    else if(sprite_index == spr_player_walk_right) {sprite_index = spr_player_idle_right}
    else if(sprite_index == spr_player_walk_left) {sprite_index = spr_player_idle_left}   
}

if(hp <= 0){
    game_restart()
}

