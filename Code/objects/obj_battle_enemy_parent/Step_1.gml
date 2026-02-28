if(obj_battle_manager._turn == 4){
    _action = obj_battle_light.Attacco
    n =  irandom_range(0,3)
    _target = obj_battle_manager.players[n]
    
    while(_target.is_dead){
        n = (n + 1) % 4
        _target = obj_battle_manager.players[n]
    }
}