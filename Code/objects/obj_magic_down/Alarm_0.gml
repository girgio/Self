
var roll_status = irandom_range(1,10)
obj_battle_dialog.current_char = 0

    obj_battle_dialog._string = $"A {_enemy.data.name} viene ridotta la difesa"
    array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}] {_enemy.data.name} E' gia affetto da uno statusviene ridotta la difesa")
    
    if(_enemy.mod_def <= -2){
        _enemy.mod_def = -2
    }else{
        _enemy.mod_def--
        _enemy.current_def /= global.modifiche_stat
    }
    audio_play_sound(global.sound_stat_down,0,false)
    alarm[1] = 100


