_enemy.data.hp -= danno
_enemy_name = _enemy.data.name
obj_battle_dialog.current_char = 0
if(crit){
    obj_battle_dialog._string = $"COLPO CRITICO! {_enemy_name} subisce {danno} danni"
}else{
    obj_battle_dialog._string = $"{_enemy_name} subisce {danno} danni"
}
if(_enemy.data.hp > 0){
    alarm[1] = 100
}

