if(instance_exists(obj_dialogue)) exit;
    
if(instance_exists(obj_battle_switch)) exit;

movement_h = target_x-x
movement_v = target_y - y
hor = clamp(movement_h,-1,1);
ver = clamp(movement_v,-1,1);
if(Indiano.hor == 0 and Indiano.ver == 0){
    hor = 0
    ver = 0
}
if(keyboard_check(vk_shift)){
    speed_m = speed_m + 0.5
}
move_and_collide(hor*speed_m,ver*speed_m,tilemap);
speed_m = 1
if(hp <= 0){
    instance_destroy()
}
if((target_x-x != 0 or target_y-y != 0) and(hor != 0 or ver != 0)){
    if(movement_v  > 0) {sprite_index = spr_player_walk_down} 
    else if(movement_v  < 0) {sprite_index = spr_player_walk_up}
    else if(movement_h > 0) {sprite_index = spr_player_walk_right}
    else if(movement_h < 0) {sprite_index = spr_player_walk_left}
}else{
    if(sprite_index == spr_player_walk_down) {sprite_index = spr_player_walk_down}
    else if(sprite_index == spr_player_walk_up) {sprite_index = spr_player_idle_up}
    else if(sprite_index == spr_player_walk_right) {sprite_index = spr_player_idle_right}
    else if(sprite_index == spr_player_walk_left) {sprite_index = spr_player_idle_left}   
}
