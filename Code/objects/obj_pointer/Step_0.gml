var target_type = "nemico"

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
        audio_play_sound(obj_music_manager.click,1,false)
        _y_perc += 0.1
        if(_y_perc > 0.44){
            _y_perc = 0.04
        }
    }
    if(keyboard_check_pressed(vk_up)){
        audio_play_sound(obj_music_manager.click,1,false)
        _y_perc -= 0.1
        if(_y_perc < 0.04){
            _y_perc = 0.44
        }
    }
    if(keyboard_check_pressed(ord("Z"))){
        audio_play_sound(obj_music_manager.click,1,false)
        if(_y_perc == obj_battle_light._y_perc){
            _manager.players[_manager._turn]._action = obj_battle_light.Attacco
            _selezione = "target"
            _x_target = _manager.enemies[0].x
            _i_target = 0
            var temp = _w
           _w = _h
           _h = temp 
            _text = true
        }else if(_y_perc == obj_battle_magic._y_perc){
            _selezione = "magic"
            _text = true
            _y_perc = 0.04
            i = 0
        }else if(_y_perc == obj_battle_item._y_perc){
            _selezione = "item"
            _text = true
            _y_perc = 0.04
            i = 0
        }
        else if(_y_perc == obj_battle_defend._y_perc and _manager.players[_manager._turn]._state != global.states.sleep){
             _manager.players[_manager._turn]._action = obj_battle_defend.Parata
            _manager.players[_manager._turn]._target = "nessuno"
            _manager.players[_manager._turn].defend = 0.75
            _manager.players[_manager._turn].sprite_index =  _manager.players[_manager._turn].defend_sprite
            obj_battle_dialog.current_char = 0
            obj_battle_dialog._string = $"{_manager.players[_manager._turn].data.name} si difende"
            alarm[0] = 60
        }else if(_y_perc == obj_battle_run._y_perc){
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
    }//else suoo wreeee
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
    
}else if (_selezione == "target" or _selezione_magia or _selezione_item) {
    if(_text){
        obj_battle_dialog.current_char = 0
        obj_battle_dialog._string = $"Chi vuoi colpire?"
        _text = false
    }

    if(target_type == "nemico"){
       if (keyboard_check_pressed(vk_right)) {
        audio_play_sound(obj_music_manager.click,1,false)
        _i_target++;
        _i_target = _i_target % _manager.enemy_num;
        _x_target = _manager.enemies[_i_target].x
    }

    if (keyboard_check_pressed(vk_left)) {
        audio_play_sound(obj_music_manager.click,1,false)
        _i_target--;
        _i_target = (_i_target + _manager.enemy_num) % _manager.enemy_num;
        _x_target = _manager.enemies[_i_target].x
    }
    
     if(keyboard_check_pressed(ord("Z"))){
        audio_play_sound(obj_music_manager.click,1,false)
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
        _y_perc = 0.04
        _text = true 
        } 
    }else if(target_type == "alleato_vivo"){
        _draw_alley_box = true
    	var i_alley = 0
           if (keyboard_check_pressed(vk_right)) {
        audio_play_sound(obj_music_manager.click,1,false)
        i_alley++;
        i_alley = i_alley % _manager.players;
            if(_manager.players[i_alley].is_dead){
                i_alley++;
            }
        _x_target = _manager.enemies[i_alley].x
     }

    if (keyboard_check_pressed(vk_left)) {
        audio_play_sound(obj_music_manager.click,1,false)
        _i_target--;
        _i_target = (_i_target + _manager.enemy_num) % _manager.enemy_num;
        _x_target = _manager.enemies[_i_target].x
        }
        
        if(keyboard_check_pressed(ord("Z"))){
        audio_play_sound(obj_music_manager.click,1,false)
        _manager.players[_manager._turn]._target = _manager.players[i_alley]
        _manager._turn++
        _selezione_magia = false
        while(_manager._turn <=3 and _manager.players[_manager._turn].is_dead){
            _manager._turn++
        }
        _selezione = "azione"
        if(_manager._turn > 3){
            _selezione = "attesa"
        }
        _y_perc = 0.04
        _text = true 
        } 
    }
    
    if(keyboard_check_pressed(ord("X"))){
        if(_selezione_magia){
            _selezione_magia = false
            _text = true
        }else{
            _selezione = "azione"
            _text = true
        }
        _draw_alley_box = false
    }
}else if(_selezione == "magic" and !_selezione_magia){
    var array_magics = _manager.players[_manager._turn].magics
    var num_magic = array_length(array_magics)
        
    if(num_magic > 0 and _text){
         obj_battle_dialog.current_char = 0
        obj_battle_dialog._string = $"{array_magics[i].description}"
        _text = false
    }
    
    if(keyboard_check_pressed(vk_down)){
        _y_perc += 0.05
        if(num_magic > 1){
            _text = true
            audio_play_sound(obj_music_manager.click,1,false)   
        }
        i = (i + 1) % num_magic
        if(_y_perc > 0.04+0.05*i){
            _y_perc = 0.04
        }
    }
    if(keyboard_check_pressed(vk_up)){
        i = (( (i - 1) % num_magic ) + num_magic) % num_magic
        if(num_magic > 1){
            _text = true
            audio_play_sound(obj_music_manager.click,1,false)   
        }
        _y_perc -= 0.05
        if(_y_perc < 0.04){
            _y_perc = 0.04+0.05*i
        }
    }
    
     if(keyboard_check_pressed(ord("Z"))){
        _manager.players[_manager._turn]._action = array_magics[i].Attacco
        audio_play_sound(obj_music_manager.click,1,false)
        target_type = array_magics[i]
        if(target_type == "nemico"){
              _text = true   
            
            _x_target = _manager.enemies[0].x
            _i_target = 0
            
            var temp = _w
            _w = _h
            _h = temp 
            _selezione_magia = true
            obj_battle_dialog.current_char = 0
            
        }else if(target_type == "all"){
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
            _y_perc = 0.04
            _text = true
            obj_battle_dialog.current_char = 0
        }
}