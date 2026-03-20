if(attacker._state == global.states.bleeding){
    attacker.data.hp -= int64(max(1,danno*global.perc_bleeding))
    obj_battle_dialog._string = $" {attacker.data.name} subisce {danno} danni per ferite aperte"
    array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}] {attacker.data.name} subisce {danno} danni per ferite aperte")
    alarm[3] = 100
}else{
    alarm[3] = 1
}
