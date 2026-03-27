var turn = ++current_player.sleep_turn
        
        if(turn >= 3){
            alarm[10] = 80
        }else{
            alarm[5] = 80    
        }