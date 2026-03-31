if(data.hp <= 0 and !is_dead){
    data.hp = 0
    alarm[0] = 100
    is_dead = true
    _state = noone
    obj_battle_manager.holding = true
    sleep_turn = 0
    array_delete(obj_battle_manager.order_players,array_get_index(obj_battle_manager.order_players,_self),1)
    obj_battle_manager.player_alive--
}