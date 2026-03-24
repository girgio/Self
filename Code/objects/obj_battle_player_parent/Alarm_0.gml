obj_battle_dialog.current_char = 0
 obj_battle_dialog._string = $"{data.name} muore"
array_push(obj_scroll_panel.moves,$"[Round {obj_battle_manager._round}] {data.name} muore")

if(obj_battle_manager.check_state){
    obj_battle_manager.check_state = false
    obj_magic_parent.alarm[3] = 100
}else{
    alarm[1] = 100   
}