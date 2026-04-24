_enemy.data.hp += danno
_enemy_name = _enemy.data.name
obj_battle_dialog.current_char = 0
if(crit){
    obj_battle_dialog._string = $"COLPO CRITICO! {_enemy_name} viene curato di {danno} danni"
    array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}] COLPO CRITICO! {_enemy_name} viene curato di {danno} danni")
}else{
    obj_battle_dialog._string = $"{_enemy_name} subisce {danno} danni"
    array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}] {_enemy_name} subisce {danno} danni")
}



alarm[4] = 100

