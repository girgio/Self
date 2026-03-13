_enemy._state = global.states.burn
var _info = $"[Round {obj_battle_manager._round}] {_enemy_name} va in fiamme"

 obj_battle_dialog.current_char = 0
obj_battle_dialog._string =$"{_enemy_name} è congelato"
array_push(obj_scroll_panel.moves,_info)
alarm[1] = 80