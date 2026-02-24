data = obj_battle_switch.data_enemy2
if(data == noone){
    instance_destroy()
    exit
}
sprite_index = data.sprite_index
obj_battle_manager.enemy_num++;
_target = noone
_action = noone
_self = obj_battle_enemy2