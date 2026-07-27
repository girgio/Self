layer_depth("layer_item2", obj_menu.depth + 1);

if(keyboard_check_pressed(vk_f11)){
    global.fullscreen = !global.fullscreen
}   

if (obj_cutscene_manager.start) {
    var _diff_x = target_x - x;
    var _diff_y = target_y - y;
    var _speed = 0.75
    
    // Calcoliamo la direzione
    var _hor = sign(_diff_x);
    var _ver = sign(_diff_y);
    
    // CONTROLLO ANTITREMOLIO: Se siamo più vicini della velocità stessa, 
    // saltiamo direttamente sul target e azzeriamo il movimento.
    if (abs(_diff_x) <= _speed) { x = target_x; _hor = 0; }
    if (abs(_diff_y) <= _speed) { y = target_y; _ver = 0; }
    
    // Movimento con collisioni (solo se non siamo già arrivati)
    if (_hor != 0 || _ver != 0) {
        move_and_collide(
            _hor * _speed, 
            _ver * _speed, 
            [Indiano.tilemap, obj_npc_parent, layer_tilemap_get_id("layer_items_collide")]
        );
    }
    

    if (_hor != 0 || _ver != 0) {
        if (_ver > 0)       { sprite_index = spr_player_walk_down; } 
        else if (_ver < 0)  { sprite_index = spr_player_walk_up; }
        else if (_hor > 0)  { sprite_index = spr_player_walk_right; }
        else if (_hor < 0)  { sprite_index = spr_player_walk_left; }
    } else {
        // Stato di Idle (Corretto il walk_down che diventava walk_down)
        if (sprite_index == spr_player_walk_down)       { sprite_index = spr_player_walk_down; }
        else if (sprite_index == spr_player_walk_up)    { sprite_index = spr_player_idle_up; }
        else if (sprite_index == spr_player_walk_right) { sprite_index = spr_player_idle_right; }
        else if (sprite_index == spr_player_walk_left)  { sprite_index = spr_player_idle_left; }   
    }
    
    exit;
}

if(obj_menu_manager.is_open){
    exit;   
}

if(instance_exists(obj_dialogue)) {
    if(sprite_index == spr_player_walk_down){
        sprite_index = spr_player_walk_down
    }else if(sprite_index == spr_player_walk_left){
        sprite_index = spr_player_idle_left
    }else if(sprite_index == spr_player_walk_right){
        sprite_index = spr_player_idle_right
    }else if(sprite_index == spr_player_walk_up){
        sprite_index = spr_player_idle_up
    }
    exit;

}


var old_x = x;
var old_y = y;
hor = keyboard_check(vk_right) - keyboard_check(vk_left)
ver = keyboard_check(vk_down) - keyboard_check(vk_up)


if(keyboard_check(vk_shift)){
    movement_speed = movement_speed + 0.5
}

var len = point_distance(0,0,hor,ver);


// movimento con collisione

if (hor != 0 or ver != 0) {
    if (ver > 0)      { sprite_index = spr_player_walk_down;  direction = 270; } 
    else if (ver < 0) { sprite_index = spr_player_walk_up;    direction = 90;  }
    else if (hor > 0) { sprite_index = spr_player_walk_right; direction = 0;   }
    else if (hor < 0) { sprite_index = spr_player_walk_left;  direction = 180; }
} else {
    if (sprite_index == spr_player_walk_down)       { sprite_index = spr_player_walk_down; } 
    else if (sprite_index == spr_player_walk_up)    { sprite_index = spr_player_idle_up; }
    else if (sprite_index == spr_player_walk_right) { sprite_index = spr_player_idle_right; }
    else if (sprite_index == spr_player_walk_left)  { sprite_index = spr_player_idle_left; }   
}

if(place_meeting(x,y-1,tilemap) && ver < 0){
    ver = 0
}
if(place_meeting(x,y+1,tilemap) && ver > 0){
    ver = 0
}
if(place_meeting(x+1,y,tilemap) && hor > 0){
    hor = 0
}
if(place_meeting(x-1,y,tilemap) && hor < 0){
    hor = 0
}

move_and_collide(hor * movement_speed, ver * movement_speed,[tilemap,obj_npc_parent,layer_tilemap_get_id("layer_items_collide")]);
movement_speed = 1

ds_list_insert(position_history, 0, [x, y]);

if (ds_list_size(position_history) > history_length * 10) {
    ds_list_delete(position_history, ds_list_size(position_history)-1);
}

leader_is_moving = (x != old_x) || (y != old_y);
