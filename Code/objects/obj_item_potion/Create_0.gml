description = "Cura 20 HP"
function Attacco(player,target){
     obj_battle_manager.holding = true
     attacker = player
    if(player.data.mp < costo){
        obj_battle_dialog.current_char = 0
        obj_battle_dialog._string = $"{player.data.name} prova a laciare una magia,non ha abbastanza magia"
        alarm[1] = 120  
    }else{
        player.data.mp -= costo
        var _info = $"[Round {obj_battle_manager._round}] {player.data.name} usa {name} {target.data.name}"
         _enemy = target
         obj_battle_dialog.current_char = 0
         obj_battle_dialog._string = $"{player.data.name} usa {name} {target.data.name}"
         array_push(obj_scroll_panel.moves,_info)
         esito = Calcola_danno_magico(player,target,global.potenza_mossa.bassa)
         danno = esito.danno
         crit = esito.crit
         player.is_attacking = true
        alarm[0] = 120
        
         
    }
}