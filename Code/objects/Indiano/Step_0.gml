if(instance_exists(obj_dialogue)) exit;
    

var old_x = x;
var old_y = y;
hor = keyboard_check(vk_right) - keyboard_check(vk_left)
ver = keyboard_check(vk_down) - keyboard_check(vk_up)
if(keyboard_check(vk_shift)){
    movement_speed = movement_speed + 0.5
}

var len = point_distance(0,0,hor,ver);

// movimento con collisione
move_and_collide(hor * movement_speed, ver * movement_speed, tilemap);
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

ds_list_insert(position_history, 0, [x, y]);

if (ds_list_size(position_history) > history_length * 10) {
    ds_list_delete(position_history, ds_list_size(position_history)-1);
}

leader_is_moving = (x != old_x) || (y != old_y);
ds_list_insert(position_history, 0, [x, y]);
