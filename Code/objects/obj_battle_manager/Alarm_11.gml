if(instance_exists(obj_battle_enemy1)){
    players[i] = obj_battle_enemy1
    enemies[j] = obj_battle_enemy1
    i++
    j++
}
if(instance_exists(obj_battle_enemy2)){
    players[i] = obj_battle_enemy2
    enemies[j] = obj_battle_enemy2
    i++
    j++
    
    
}
if(instance_exists(obj_battle_enemy3)){
    players[i] = obj_battle_enemy3
    enemies[j] = obj_battle_enemy3
    i++
    j++
}

array_copy(order_players,0,players,0,array_length(players))