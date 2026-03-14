Restore_stat(obj_battle_player1)
        if(obj_battle_player1._state == noone){
            obj_battle_player1.data._state = noone
        }else {
             obj_battle_player1.data._state = obj_battle_player1._state 	
        }
        Restore_stat(obj_battle_player2)
        if(obj_battle_player2._state == noone){
            obj_battle_player2.data._state = noone
        }else {
             obj_battle_player2.data._state = obj_battle_player2._state 	
        }
        Restore_stat(obj_battle_player3)
        obj_battle_player3.data._state = obj_battle_player3._state 
        if(obj_battle_player3._state == noone){
            obj_battle_player3.data._state = noone
        }else {
             obj_battle_player3.data._state = obj_battle_player3._state 	
        }
        Restore_stat(obj_battle_player4)
        if(obj_battle_player4._state == noone){
            obj_battle_player4.data._state = noone
        }else {
             obj_battle_player4.data._state = obj_battle_player4._state 	
        }
room_goto(Room1)