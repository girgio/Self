if(instance_exists(_enemy) and _enemy.data.hp > 0 and _enemy._state == global.states.sleep and danno > 0){
    _enemy._state = noone
    obj_battle_dialog._string = $" {_enemy.data.name} si sveglia a causa del colpo"
    array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}] {_enemy.data.name} si sveglia a causa del colpo")
    alarm[1] = 100    
    
    
}else{
    alarm[1] = 1
}