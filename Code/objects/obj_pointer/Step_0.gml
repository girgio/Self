


if(_selezione == "azione"){
    if(_text){
        obj_battle_dialog.current_char = 0
        obj_battle_dialog._string = $"E' il turno di {_manager.players[_manager._turn].data.name}"
        _text = false
    }
    if(keyboard_check_pressed(vk_down)){
        _y_perc += 0.1
        if(_y_perc > 0.43){
            _y_perc = 0.03
        }
    }
    if(keyboard_check_pressed(vk_up)){
        _y_perc -= 0.1
        if(_y_perc < 0.03){
            _y_perc = 0.43
        }
    }
    if(keyboard_check_pressed(ord("Z"))){
        if(_y_perc == 0.03){
            _manager.players[_manager._turn]._action = obj_battle_light.Attacco
            _selezione = "target"
            _x_target = _manager.enemies[0].x
            var temp = _w
           _w = _h
           _h = temp 
            _text = true
        }
    }
    if(keyboard_check_pressed(ord("X")) and _manager._turn > 0){
        var original_turn = _manager._turn
        _manager._turn--
        while(_manager.players[_manager._turn].is_dead and _manager._turn <=3 ){
            _manager._turn--
            if(_manager._turn < 0){
                _manager._turn = original_turn
                break
            }
        }
        if(_manager._turn != original_turn){
            _text = true   
        }
    }
    
}else if (_selezione == "target") {
    if(_text){
        obj_battle_dialog.current_char = 0
        obj_battle_dialog._string = $"Chi vuoi colpire?"
        _text = false
    }

    if (keyboard_check_pressed(vk_right)) {
        _i_target++;
        _i_target = _i_target % _manager.enemy_num;
        _x_target = _manager.enemies[_i_target].x
    }

    if (keyboard_check_pressed(vk_left)) {
        _i_target--;
        _i_target = (_i_target + _manager.enemy_num) % _manager.enemy_num;
        _x_target = _manager.enemies[_i_target].x
    }
    
     if(keyboard_check_pressed(ord("Z"))){
        _manager.players[_manager._turn]._target = _manager.enemies[_i_target]
        _manager._turn++
        while(_manager._turn <=3 and _manager.players[_manager._turn].is_dead){
            _manager._turn++
        }
        _selezione = "azione"
        if(_manager._turn > 3){
            _selezione = "attesa"
        }
        _text = true
    }
    
    if(keyboard_check_pressed(ord("X"))){
        _selezione = "azione"
        _text = true
    }
    
   
    
}