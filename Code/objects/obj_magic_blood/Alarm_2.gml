_enemy._state = global.states.bleeding
var _info = $"[Round {obj_battle_manager._round}] {_enemy_name} sanguina"

 obj_battle_dialog.current_char = 0
obj_battle_dialog._string =$"{_enemy_name} sanguina"
array_push(obj_scroll_panel.moves,_info)
alarm[3] = 80