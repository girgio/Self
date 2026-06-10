if(room != Battle_room ){
    if(win){
        instance_destroy(data_enemy_overworld)
        win = false
    }
    
    alarm[0] = 60
}