if(instance_exists(obj_battle_switch) or instance_exists(obj_dialogue)) exit;
    
    
var battle_switch = instance_create_depth(0,0,0,obj_battle_switch)
var enemy1 = noone
var enemy2 = noone
var enemy3 = noone 
battle_switch.exp_battle = 0
if(other.enemy1 != noone){
    enemy1 = instance_create_depth(0,0,0,other.enemy1)
    battle_switch.exp_battle += enemy1.exp_given
}
if(other.enemy2 != noone){
    enemy2 = instance_create_depth(0,0,0,other.enemy2)
    battle_switch.exp_battle += enemy2.exp_given
}
if(other.enemy3 != noone){
    enemy3 = instance_create_depth(0,0,0,other.enemy3)
    battle_switch.exp_battle += enemy3.exp_given
}

battle_switch.data_player = self
battle_switch.data_enemy1 = enemy1
battle_switch.data_enemy2 = enemy2
battle_switch.data_enemy3 = enemy3
battle_switch.data_player2 = instance_find(obj_player2, 0);
battle_switch.data_player3 = instance_find(obj_player3, 0);
battle_switch.data_player4 = instance_find(obj_player4, 0);
battle_switch.data_enemy_overworld = other
battle_switch.current_room = room
instance_destroy(obj_dialogue)
room_goto(Battle_room)
