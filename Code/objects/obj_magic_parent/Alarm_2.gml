_enemy.state = global.states.burn
var _info = $"{_enemy_name} va in fiamme"

 obj_battle_dialog.current_char = 0
obj_battle_dialog._string = _info
array_push(obj_scroll_panel.moves,_info)
alarm[1] = 80
