_text = "Fuggi"
_y_perc = 0.43
_x_perc = 0.02
escape = true
function Fuga(p)
{
    obj_battle_manager.holding = true
    escape = true
    player = p
    _speed = player.data._speed 
    _turn = obj_battle_manager._round
    enemies = obj_battle_manager.enemies
    obj_battle_dialog.current_char = 0
    show_debug_message($"Velocità di {player.data.name}:{_speed}")
    obj_battle_dialog._string = $"{player.data.name} prova a fuggire"
    
    array_foreach(enemies,function(_element,_index){
        var result = random_range(0,3)
        show_debug_message($"Velocità di {_element.data.name}:{_element.data._speed}")
        show_debug_message($"roll da superare:{result}")
        var prob = (_speed + _turn)/_element.data._speed
        show_debug_message($"probabilità calcolata:{prob}")
        show_debug_message("")
        if(result > prob){
            escape = false
            return
        }
    })
    if(escape){
        alarm[0] = 80
    }else{
        alarm[1] = 80
    }
    
    
}