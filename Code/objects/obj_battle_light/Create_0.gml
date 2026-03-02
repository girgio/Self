// Inherit the parent event
event_inherited();
function Attacco(player,target){
    obj_battle_manager.holding = true
    _enemy = target
    obj_battle_dialog.current_char = 0
    obj_battle_dialog._string = $"{player.data.name} attacca {target.data.name}"
    esito = Calcola_danno(player,target,global.potenza_mossa.bassa)
    danno = esito.danno
    crit = esito.crit
    player.is_attacking = true
    alarm[0] = 120
}

