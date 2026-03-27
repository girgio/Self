description = "Una ninna nanna che consiste nel non cantare niente, restando in silenzio si dorme meglio"
function Attacco(player,target){
    
    danno = 0
    attacker = player
     obj_battle_manager.holding = true
    if(player.data.mp < costo){
        obj_battle_dialog.current_char = 0
        obj_battle_dialog._string = $"{player.data.name} prova a laciare una magia,non ha abbastanza magia"
        alarm[1] = 120  
    }else{
        player.data.mp -= costo
        var _info = $"[Round {obj_battle_manager._round}] {player.data.name} lancia Ninna No su {target.data.name}"
         _enemy = target
         obj_battle_dialog.current_char = 0
         obj_battle_dialog._string = $"{player.data.name} lancia Ninna No su {target.data.name}"
         array_push(obj_scroll_panel.moves,_info)
         player.is_attacking = true
         alarm[0] = 120   
    }
}