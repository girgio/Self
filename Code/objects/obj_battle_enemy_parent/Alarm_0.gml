
if(obj_battle_manager.enemy_num <= 0){
        Restore_stat(obj_battle_player1)
        Restore_stat(obj_battle_player2)
        Restore_stat(obj_battle_player3)
        Restore_stat(obj_battle_player4)
        obj_battle_switch.win = true
        obj_battle_manager.holding = true
        var exp_obtained = obj_battle_switch.exp_battle
        obj_battle_dialog.current_char = 0
        obj_battle_dialog._string = $"Il party ha ottenuto {exp_obtained}"
        if(!obj_battle_player1.is_dead){
            obj_battle_player1.data.add_exp(exp_obtained)
        }
        if(!obj_battle_player2.is_dead){
            obj_battle_player2.data.add_exp(exp_obtained)
        }
        if(!obj_battle_player3.is_dead){
            obj_battle_player3.data.add_exp(exp_obtained)
        }
        if(!obj_battle_player3.is_dead){
            obj_battle_player4.data.add_exp(exp_obtained)
        }
    }else{
        obj_battle_manager.holding = false
    }
instance_destroy()