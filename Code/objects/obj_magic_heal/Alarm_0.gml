if(_enemy.data.hp > 0){
    var _temp = _enemy.data.hp
    _enemy.data.hp += danno
    if(_enemy.data.hp >= _enemy.data.hp_max){
        danno = _enemy.data.hp_max - _temp
        _enemy.data.hp = _enemy.data.hp_max
    }
    _enemy_name = _enemy.data.name
    obj_battle_dialog.current_char = 0
    if(crit){
        obj_battle_dialog._string = $"COLPO CRITICO! {_enemy_name} viene curato di {danno} danni"
        array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}] COLPO CRITICO! {_enemy_name} viene curato di {danno} danni")
    }else{
        obj_battle_dialog._string = $"{_enemy_name}  viene curato di {danno} danni"
        array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}]  viene curato di {danno} danni")
    }
}else{
        obj_battle_dialog._string = $"{_enemy_name}  è morto, la cura falisce"
        array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}]  {_enemy_name}  è morto, la pozione falisce")
}



alarm[4] = 100

