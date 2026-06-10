var _info =  $"{current_player.data.name} si riprende"
obj_battle_dialog.current_char = 0
obj_battle_dialog._string = _info
array_push(obj_scroll_panel.moves,$"[Round {_round}] {_info}")
current_player._state = noone
current_player.sleep_turn = 0
alarm[5] = 120
alarm[10] = -1