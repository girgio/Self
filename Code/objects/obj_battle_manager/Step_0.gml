if(player_alive <= 0){
        game_restart()
    }
if(instance_exists(current_player) and !holding){
    if(current_player._state = global.states.burn and alarm[5] == -1){
        holding = true
        var danno = max(int64(current_player.data.hp_max*0.02),1) 
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
        
        obj_pointer._y_perc = 0.03
        array_copy(order_players,0,players,0,array_length(players))
        
    }else{
       if(instance_exists(current_player) and current_player.data.hp > 0) {
           var target = current_player._target 
           
        if(target == "nessuno") {
                current_player._action(current_player)
            }else if(instance_exists(target) and target.data.hp > 0) {
                current_player._action(current_player,target)
            } else{
                holding = true
                obj_battle_dialog.current_char = 0
                obj_battle_dialog._string = $"{current_player.data.name} attacca a vuoto"
                array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}] {current_player.data.name} attacca a vuoto")
                alarm[0] = 80
                
            }
            
       }
    }
}