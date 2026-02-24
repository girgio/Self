obj_battle_player_parent.data.hp -= obj_battle_enemy_parent.data.damage
if(obj_battle_player_parent.data.hp <= 0){
    room_goto(obj_battle_switch.current_room)
}
alarm[2] = 60
