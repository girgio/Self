
var roll_status = irandom_range(1,10)
obj_battle_dialog.current_char = 0
if(roll_status <= 6 and _enemy._state == noone){
    _enemy._state = global.states.sleep
    obj_battle_dialog._string = $"{_enemy.data.name} si addormenta"
    array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}] {_enemy.data.name} si addormenta")
    alarm[1] = 100
}else{
    obj_battle_dialog._string = $"{_enemy.data.name} NOn ha sonno"
    array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}] {_enemy.data.name} NOn ha sonno")
    alarm[1] = 80
}


