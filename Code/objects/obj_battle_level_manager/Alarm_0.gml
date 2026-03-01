if(obj_battle_player1.data.levels_obtained > 0 ){
    var str_l = "livello"
    if(obj_battle_player1.data.levels_obtained>1){
        str_l = "livelli"
    }
    obj_battle_dialog.current_char = 0
    obj_battle_dialog._string = $"{obj_battle_player1.data.name} è salito di {obj_battle_player1.data.levels_obtained} {str_l}"
    alarm[1] = 60
}else if(obj_battle_player2.data.levels_obtained > 0){
    var str_l = "livello"
    if(obj_battle_player2.data.levels_obtained>1){
        str_l = "livelli"
    }
    obj_battle_dialog.current_char = 0
    obj_battle_dialog._string = $"{obj_battle_player2.data.name} è salito di {obj_battle_player2.data.levels_obtained} {str_l}"
    alarm[2] = 60
}else if(obj_battle_player3.data.levels_obtained > 0){
    var str_l = "livello"
    if(obj_battle_player3.data.levels_obtained>1){
        str_l = "livelli"
    }
    obj_battle_dialog.current_char = 0
    obj_battle_dialog._string = $"{obj_battle_player3.data.name} è salito di {obj_battle_player3.data.levels_obtained} {str_l}"
    alarm[3] = 60
}else if(obj_battle_player4.data.levels_obtained > 0){
    var str_l = "livello"
    if(obj_battle_player4.data.levels_obtained>1){
        str_l = "livelli"
    }
    obj_battle_dialog.current_char = 0
    obj_battle_dialog._string = $"{obj_battle_player4.data.name} è salito di {obj_battle_player4.data.levels_obtained} {str_l}"
    alarm[4] = 60
}else{
    room_goto(Room1)
}