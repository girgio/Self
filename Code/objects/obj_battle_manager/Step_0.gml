if(player_alive <= 0){
        game_restart()
    }

if(instance_exists(current_player) and !holding){
    //bruciatura
    if(current_player._state == global.states.burn and alarm[5] == -1){
        holding = true
        var danno = max(int64(current_player.data.hp_max*0.05),1) 
        var _info = $"{current_player.data.name} brucia e perde {danno} hp"

        obj_battle_dialog.current_char = 0
       obj_battle_dialog._string = _info
       array_push(obj_scroll_panel.moves,$"[Round {_round}] {_info}")
       current_player.data.hp -= danno
        alarm[5] = 80
    }
}
if(_turn > 3 and !holding and !obj_battle_switch.win){
    current_player = extract_max_speed_player(order_players)
    
    if(current_player == noone){
        _turn = 0
        _round++
        while(_turn <= 3 and players[_turn].is_dead){
            _turn++
        }
        obj_pointer._selezione = "azione"
        
        obj_pointer._y_perc = obj_battle_light._y_perc
        array_copy(order_players,0,players,0,array_length(players))
        
    }//congelamento
    else if(current_player._state == global.states.freeze and alarm[5] == -1 and alarm[6] == -1 and instance_exists(current_player) and current_player.data.hp > 0){
        holding = true
        
        
        var roll = irandom_range(1,10)
        
        if(roll <= 2){
            current_player._state = noone
            var _info = $"{current_player.data.name} si è scongelato"
            
            obj_battle_dialog.current_char = 0
            obj_battle_dialog._string = _info
            array_push(obj_scroll_panel.moves,$"[Round {_round}] {_info}")
            alarm[6] = 80
        }else{
        	var _info = $"{current_player.data.name} non agisce perchè ha freddo"

            obj_battle_dialog.current_char = 0
           obj_battle_dialog._string = _info
           array_push(obj_scroll_panel.moves,$"[Round {_round}] {_info}")
            alarm[5] = 80
        }
    }else if(current_player._state == global.states.sleep and instance_exists(current_player) and current_player.data.hp > 0 and alarm[5] == -1 and alarm[7] == -1){
        holding = true
        var _info = $"{current_player.data.name} non agisce perchè non ha voglia"

        obj_battle_dialog.current_char = 0
        obj_battle_dialog._string = _info
        array_push(obj_scroll_panel.moves,$"[Round {_round}] {_info}")
        
        var turn = ++current_player.sleep_turn
        
        if(turn >= 3){
            alarm[7] = 80
        }else{
            alarm[5] = 80    
        }
        
    }
    else{
       if(instance_exists(current_player) and current_player.data.hp > 0) {
           var target = current_player._target 
           
        if(target == "nessuno") {
                current_player._action(current_player)
            }else if(instance_exists(target) and target.data.hp > 0) {
                current_player._action(current_player,target)
            }else{
                holding = true
                obj_battle_dialog.current_char = 0
                obj_battle_dialog._string = $"{current_player.data.name} attacca a vuoto"
                array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}] {current_player.data.name} attacca a vuoto")
                alarm[0] = 80
                
            }
            
       }
    }
}