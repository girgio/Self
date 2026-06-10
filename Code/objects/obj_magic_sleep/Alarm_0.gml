
var roll_status = irandom_range(1,10)
obj_battle_dialog.current_char = 0

if(_enemy._state != noone){
    obj_battle_dialog._string = $"{_enemy.data.name} è gia affetto da uno status"
    array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}] {_enemy.data.name} E' gia affetto da uno status")
    alarm[3] = 80
}else if(roll_status <= 6){
    _enemy._state = global.states.sleep
    obj_battle_dialog._string = $"{_enemy.data.name} si addormenta"
    array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}] {_enemy.data.name} si addormenta")
    alarm[3] = 100
}else{
    obj_battle_dialog._string = $"{_enemy.data.name} NOn ha sonno"
    array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}] {_enemy.data.name} NOn ha sonno")
    alarm[3] = 80
}


