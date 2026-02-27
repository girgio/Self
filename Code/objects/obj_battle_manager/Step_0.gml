
if(_turn > 3 and !holding){
    var current_player = extract_max_speed_player(order_players)
    if(current_player == noone){
        _turn = 0
        _round++
        while(_turn <= 3 and players[_turn].is_dead){
            _turn++
        }
        obj_pointer._selezione = "azione"
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
                alarm[0] = 80
                
            }
            
       }
    }
}