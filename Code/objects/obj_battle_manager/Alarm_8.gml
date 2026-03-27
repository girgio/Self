var target = current_player._target 
           
        if(target == "nessuno") {
                current_player._action(current_player)
                holding = false
            }else if(instance_exists(target) and target.data.hp > 0) {
                current_player._action(current_player,target)
                holding = false
            } else{
                holding = true
                obj_battle_dialog.current_char = 0
                obj_battle_dialog._string = $"{current_player.data.name} attacca a vuoto"
                array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}] {current_player.data.name} attacca a vuoto")
                alarm[9] = 80
                alarm[8] = -1
                
            }