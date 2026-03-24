 obj_battle_dialog.current_char = 0
 obj_battle_dialog._string = $"{data.name} muore"
array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}] {data.name} muore")
obj_battle_manager.enemy_num--
    array_delete(obj_battle_manager.enemies,array_get_index(obj_battle_manager.enemies,_self),1)
    array_delete(obj_battle_manager.players,array_get_index(obj_battle_manager.players,_self),1)
    var _index = array_get_index(obj_battle_manager.order_players, _self);

    if (_index != -1) {
        array_delete(obj_battle_manager.order_players, _index, 1);
    }
   if(obj_battle_manager.check_state){
    obj_battle_manager.check_state = false
    obj_magic_parent.alarm[3] = 100
    instance_destroy()
    }else{
        alarm[2] = 100   
    }
    
