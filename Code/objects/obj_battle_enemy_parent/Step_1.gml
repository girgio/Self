if(obj_battle_manager._turn == 4 and data.hp > 0){
    _action = obj_magic_fire.Attacco
    n =  irandom_range(0,3)
    _target = obj_battle_manager.players[n]
    
    while(_target.is_dead){
        n = (n + 1) % 4
        _target = obj_battle_manager.players[n]
    }
}
if(data.hp <= 0 and (alarm[1] == -1) and (alarm[0] == -1)){
    alarm[1] = 100
    data.hp = 0
    obj_battle_manager.holding = true
}