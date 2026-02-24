// Inherit the parent event
event_inherited();
function Attacco(player,target){
    obj_battle_manager.holding = true
    _enemy = target
    obj_battle_dialog.current_char = 0
    obj_battle_dialog._string = $"{player.data.name} attacca {target.data.name}"
    danno = Calcola_danno(player,target)
    alarm[0] = 150
}

