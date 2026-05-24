if(_first){
    x = obj_music_manager.se_volume*(Option_menu.lim_x2-Option_menu.lim_x1) + Option_menu.lim_x1
}
if(!isPressed) exit;
if(mouse_x <= Option_menu.lim_x1){
    x = Option_menu.lim_x1 + 2
}else if(mouse_x >= Option_menu.lim_x2){
    x = Option_menu.lim_x2 - 2
}else{
    x = mouse_x
}
_first = false
if (mouse_check_button_released(mb_left)) {
    isPressed = false
}