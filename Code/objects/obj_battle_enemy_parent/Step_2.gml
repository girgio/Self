
if(data.hp <= 0){
    obj_battle_manager.enemy_num--
    array_delete(obj_battle_manager.enemies,array_get_index(obj_battle_manager.enemies,_self),1)
    array_delete(obj_battle_manager.players,array_get_index(obj_battle_manager.players,_self),1)
    array_delete(obj_battle_manager.order_players,array_get_index(obj_battle_manager.order_players,_self),1)
    
    instance_destroy()
    
    if(obj_battle_manager.enemy_num <= 0){
        obj_battle_switch.win = true
        room_goto(Room1)
    }
}
if(obj_battle_manager._turn == 0){
    _action = obj_battle_light.Attacco
    n =  irandom_range(0,3)
    _target = obj_battle_manager.players[n]
    
    while(_target.is_dead){
        n = (n + 1) % 4
        _target = obj_battle_manager.players[n]
    }
}