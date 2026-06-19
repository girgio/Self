
if (obj_cutscene_manager.start) {
    var _diff_x = target_x - x;
    var _diff_y = target_y - y;
    
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
    
    // Gestione degli Sprite (Corretto l'uso di _hor e _ver con il trattino)
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
var spacing = 30; 
if(keyboard_check(vk_shift) and leader.leader_is_moving){
    move_speed = move_speed + 0.5
}
var target_index = spacing * follow_index;

if (!leader.leader_is_moving) {

    if (sprite_index == spr_player_walk_down) sprite_index = spr_player_walk_down;

    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;

    else if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;

    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;

    exit;

}

if (ds_list_size(history) > target_index) {
    var target = history[| target_index];
    var tx = target[0];
    var ty = target[1];
    hor = 0
    ver = 0

    var dist = point_distance(x, y, tx, ty);

    // Se il follower è troppo lontano dal suo punto ideale, deve correre.
    // Usiamo una velocità che si adatta alla distanza per evitare scatti.
    if (dist > 1) {
        var dir = point_direction(x, y, tx, ty);
        
         var speed_to_apply = min(dist, move_speed);
        // RECUPERO DIAGONALE: 
        // Se il leader si muove a 4, il follower deve poter andare a 4 * 1.5 
        // per compensare la distanza maggiore in diagonale.
        if(leader.hor != 0 && leader.ver != 0 ){ 
            speed_to_apply = min(dist, move_speed * power(2,1/2));    
        }
        hor = lengthdir_x(speed_to_apply, dir);
        ver = lengthdir_y(speed_to_apply, dir)
        x += hor;
        y += ver;
    }

    // ---- GESTIONE SPRITE (Solo se il leader si muove o se il follower sta ancora recuperando) ----
    if (leader.leader_is_moving || dist > 1) {
    epsilon = 0.6
        if (ver > epsilon) sprite_index = spr_player_walk_down;
        else if (ver < -epsilon) sprite_index = spr_player_walk_up;
        else if (hor > epsilon) sprite_index = spr_player_walk_right;
        else if (hor < -epsilon) sprite_index = spr_player_walk_left;
} else {
    // IDLE: Quando il leader è fermo e il follower lo ha raggiunto
    if (sprite_index == spr_player_walk_down)       sprite_index = spr_player_walk_down;
    else if (sprite_index == spr_player_walk_up)    sprite_index = spr_player_idle_up;
    else if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left)  sprite_index = spr_player_idle_left;
}
    move_speed = 1
}


