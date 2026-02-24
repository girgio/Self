if(data.hp <= 0 and !is_dead){
    data.hp = 0
    array_delete(obj_battle_manager.order_players,array_get_index(obj_battle_manager.order_players,_self),1)
    is_dead = true
}