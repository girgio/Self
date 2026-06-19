function move_to_target(_x,_y,instance,_speed){//muove l'instanza alle cordinate x y
    // 1. Calcola la differenza tra il target e la posizione attuale dell'istanza
    var _diff_x = _x - instance.x;
    var _diff_y = _y - instance.y;
    
    // 2. Usa sign() per ottenere la direzione (-1, 0, o 1)
    var _hor = sign(_diff_x);
    var _ver = sign(_diff_y);
    
    if (_hor != 0 || _ver != 0) {
        instance.move_and_collide(
            _hor * _speed, 
            _ver * _speed, 
            [Indiano.tilemap, obj_npc_parent, layer_tilemap_get_id("layer_items_collide")]
        );
    }
}