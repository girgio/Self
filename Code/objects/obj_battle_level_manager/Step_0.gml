if((obj_battle_switch.win and !flag) or level_up_finish){
    flag = true
    if(level_up_finish){
        alarm[0] = 1
        level_up_finish = false    
    }else{
        alarm[0] = 120
    }
    
}