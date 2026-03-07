
data = obj_battle_switch.data_enemy1
if(data == noone){
    instance_destroy()
    exit
}
sprite_index = data.sprite_index
obj_battle_manager.enemy_num++;
_target = noone
_action = noone
_self = obj_battle_enemy1
current_atk = data.atk
current_def = data.def
current_speed = data._speed
current_luck = data.luck
current_matk = data.m_atk
is_attacking = false
defend = 1

//condizione di stato
_state = noone