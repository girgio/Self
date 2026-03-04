description = "Il più semplice degli incantesimi. Produce una piccola fiamella. Piccola possibilità di bruciare"
function Attacco(player,target){
    var _info = $"{player.data.name} lancia fuoco su {target.data.name}"
    obj_battle_manager.holding = true
    _enemy = target
    obj_battle_dialog.current_char = 0
    obj_battle_dialog._string = _info
    array_push(obj_scroll_panel.moves,_info)
    esito = Calcola_danno_magico(player,target,global.potenza_mossa.bassa)
    danno = esito.danno
    crit = esito.crit
    player.is_attacking = true
    alarm[0] = 120
}