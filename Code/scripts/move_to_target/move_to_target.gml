function move_to_target(_x, _y, instance, _speed, _spr_right = noone, _spr_up = noone, _spr_left = noone, _spr_down = noone) {
    
    // 1. Controlliamo se siamo arrivati a destinazione
    var _dist = point_distance(instance.x, instance.y, _x, _y);
    if (_dist <= _speed) {
        instance.x = _x;
        instance.y = _y;
        return true; // Movimento completato
    }
    
    // 2. Calcola le differenze
    var _diff_x = _x - instance.x;
    var _diff_y = _y - instance.y;
    
    // Usiamo sign purissimo per il movimento di move_and_collide
    var _move_x = sign(_diff_x);
    var _move_y = sign(_diff_y);
    
    // 3. Gestione dello Sprite SENZA FLICKER
    // Scegliamo la direzione visiva basandoci sull'asse con maggiore distanza
    if (abs(_diff_x) > abs(_diff_y) + 1) {
        // Movimento prevalentemente Orizzontale
        if (_move_x > 0 && _spr_right != noone) instance.sprite_index = _spr_right;
        else if (_move_x < 0 && _spr_left != noone) instance.sprite_index = _spr_left;
    } 
    else if (abs(_diff_y) > abs(_diff_x) + 1) {
        // Movimento prevalentemente Verticale
        if (_move_y > 0 && _spr_down != noone) instance.sprite_index = _spr_down;
        else if (_move_y < 0 && _spr_up != noone) instance.sprite_index = _spr_up;
    }
    // NOTA: Se la differenza tra X e Y è minima (< 1px), NON cambiamo lo sprite_index,
    // mantenendo lo sprite dell'ultimo frame per evitare sfarfallii!

    // 4. Movimento effettivo
    with (instance) {
        move_and_collide(
            _move_x * _speed, 
            _move_y * _speed, 
            [tilemap, obj_npc_parent, layer_tilemap_get_id("layer_items_collide")]
        );
    }
    
    return false; // Sta ancora camminando
}