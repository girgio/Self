
if (obj_cutscene_manager.start) {
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


var leader = global.party[0];
if (!instance_exists(leader)) exit; 

var old_x = x;
var old_y = y;
var history = leader.position_history;
var spacing = 20;

var base_speed = 1;     
var sprint_speed = 2;
var normal_gap = 64;    

if (keyboard_check(vk_shift) && leader.leader_is_moving) {
    move_speed = sprint_speed;
} else {
    move_speed = base_speed;
}

var target_index = spacing * follow_index;

if (ds_list_size(history) <= target_index) exit; // non c'è ancora abbastanza history

var target = history[| target_index];
var tx = target[0];
var ty = target[1];
hor = 0;
ver = 0;

var dist = point_distance(x, y, tx, ty);
show_debug_message("dist: " + string(dist));
var epsilon = 0.6;

if (!leader.leader_is_moving) {
    // --- Leader fermo: il follower si avvicina fino a "normal_gap" e poi si ferma ---
    if (dist > normal_gap) {
        var dir = point_direction(x, y, tx, ty);
        var speed_to_apply = min(dist - normal_gap, base_speed);
        hor = lengthdir_x(speed_to_apply, dir);
        ver = lengthdir_y(speed_to_apply, dir);
        x += hor;
        y += ver;

        if (ver > epsilon) sprite_index = spr_player_walk_down;
        else if (ver < -epsilon) sprite_index = spr_player_walk_up;
        else if (hor > epsilon) sprite_index = spr_player_walk_right;
        else if (hor < -epsilon) sprite_index = spr_player_walk_left;
    } else {
        if (sprite_index == spr_player_walk_down) sprite_index = spr_player_walk_down;
        else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
        else if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
        else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
    }
    exit;
}

// --- Leader in movimento: logica normale con boost di recupero ---
var catch_up_factor = 0.25;
var extra_gap = max(0, dist - normal_gap);
var effective_speed = move_speed + extra_gap * catch_up_factor;
effective_speed = min(effective_speed, sprint_speed * 2);

if (dist > 1) {
    var dir = point_direction(x, y, tx, ty);
    var speed_to_apply = min(dist, effective_speed);

    if (leader.hor != 0 && leader.ver != 0) {
        speed_to_apply = min(dist, effective_speed * sqrt(2));
    }

    hor = lengthdir_x(speed_to_apply, dir);
    ver = lengthdir_y(speed_to_apply, dir);
    x += hor;
    y += ver;
}

if (dist > 1) {
    if (ver > epsilon) sprite_index = spr_player_walk_down;
    else if (ver < -epsilon) sprite_index = spr_player_walk_up;
    else if (hor > epsilon) sprite_index = spr_player_walk_right;
    else if (hor < -epsilon) sprite_index = spr_player_walk_left;
} else {
    if (sprite_index == spr_player_walk_down) sprite_index = spr_player_walk_down;
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
    else if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
}

