 obj_battle_dialog.current_char = 0
 obj_battle_dialog._string = $"{data.name} muore"
obj_battle_manager.enemy_num--
    array_delete(obj_battle_manager.enemies,array_get_index(obj_battle_manager.enemies,_self),1)
    array_delete(obj_battle_manager.players,array_get_index(obj_battle_manager.players,_self),1)
    array_delete(obj_battle_manager.order_players,array_get_index(obj_battle_manager.order_players,_self),1)
   alarm[0] = 100
    
