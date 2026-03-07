
if(obj_battle_switch.win) exit;
    
if(alarm[0] != -1) exit; //per controllare se si sta difendeno un player

if(_selezione == "azione"){
    _manager.players[_manager._turn].defend = 1
    _manager.players[_manager._turn].sprite_index = _manager.players[_manager._turn].default_sprite
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
            _i_target = 0
            var temp = _w
           _w = _h
           _h = temp 
            _text = true
        }else if(_y_perc == 0.13){
            _selezione = "magic"
            _text = true
            _y_perc = 0.03
        }
        else if(_y_perc == 0.33){
             _manager.players[_manager._turn]._action = obj_battle_defend.Parata
            _manager.players[_manager._turn]._target = "nessuno"
            _manager.players[_manager._turn].defend = 0.75
            _manager.players[_manager._turn].sprite_index =  _manager.players[_manager._turn].defend_sprite
            obj_battle_dialog.current_char = 0
            obj_battle_dialog._string = $"{_manager.players[_manager._turn].data.name} si difende"
            alarm[0] = 60
        }else if(_y_perc == 0.43){
            _manager.players[_manager._turn]._action = obj_battle_run.Fuga
            _manager.players[_manager._turn]._target = "nessuno"
             _manager._turn++
            while(_manager._turn <=3 and _manager.players[_manager._turn].is_dead){
                _manager._turn++
            }
            _text = true
            if(_manager._turn > 3){
                _selezione = "attesa"
            }
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
    
}else if (_selezione == "target" or _selezione_magia) {
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
        _selezione_magia = false
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
        if(_selezione_magia){
            _selezione_magia = false
            _text = true
        }else{
            _selezione = "azione"
            _text = true
        }
    }
}else if(_selezione == "magic" and !_selezione_magia){
    var array_magics = _manager.players[_manager._turn].magics
    var num_magic = array_length(array_magics)
    var i = 0
        
    if(num_magic > 0 and _text){
         obj_battle_dialog.current_char = 0
        obj_battle_dialog._string = $"{array_magics[i].description}"
        _text = false
    }
    
    if(keyboard_check_pressed(vk_down)){
        _y_perc += 0.1
        if(num_magic > 1){
            _text = true   
        }
        i = (i + 1) % num_magic
        if(_y_perc > 0.03+0.1*i){
            _y_perc = 0.03
        }
    }
    if(keyboard_check_pressed(vk_up)){
        i = (i + 1) % num_magic
        if(num_magic > 1){
            _text = true   
        }
        _y_perc -= 0.1
        if(_y_perc < 0.03){
            _y_perc = 0.03+0.1*i
        }
    }
    
     if(keyboard_check_pressed(ord("Z"))){
        _manager.players[_manager._turn]._action = array_magics[i].Attacco
        
        if(array_magics[i].target == "nemico"){
              _text = true   
            
            _x_target = _manager.enemies[0].x
            _i_target = 0
            
            var temp = _w
            _w = _h
            _h = temp 
            _selezione_magia = true
            obj_battle_dialog.current_char = 0
            
        }else if(array_magics[i].target == "all"){
            _manager.players[_manager._turn]._target = "all"
            _manager._turn++
            while(_manager._turn <=3 and _manager.players[_manager._turn].is_dead){
                _manager._turn++
            }
            _text = true
            if(_manager._turn > 3){
                _selezione = "attesa"
            }
        }
    }else if(keyboard_check_pressed(ord("X"))){
            _selezione = "azione"
            _text = true
            obj_battle_dialog.current_char = 0
        }
}