if(instance_exists(obj_battle_book) and obj_battle_book.first == false and this_magic == true){
    var perc = obj_battle_book.perc
    obj_battle_book.perc = 0
    this_magic = false
    instance_destroy(obj_battle_line)
    instance_destroy(obj_battle_book)
    var info = ""
    
    if(perc <= 25){
        _bonus = 0.75
        info = "Hai fatto cagare fratello"
    }else if(perc <= 50){
        _bonus = 1
        info = "stai nella media non hai peggiorato ne migliorato"
    }else if(perc <= 75){
        _bonus = 1.25
        info = "Bel colpo"
    }else{
        _bonus = 1.5
        info = "sei un mito"
    }
    obj_battle_dialog.current_char = 0
         obj_battle_dialog._string = info
with(obj_battle_red_check){
    instance_destroy()
}
    alarm[0] = 100
    show_debug_message(_bonus)
    danno *= _bonus
    danno = int64(danno)
}