y = obj_text_music_1.y + sprite_height/2

if(obj_menu_manager.option_open and _first and alarm[0] == -1){
    x = obj_music_manager.music_volume*(obj_menu.lim_x2-obj_menu.lim_x1) + obj_menu.lim_x1
    alarm[0] = 10
}
depth = obj_menu.depth - 1
if(!isPressed) exit;
if(mouse_x <= obj_menu.lim_x1){
    x = obj_menu.lim_x1 + 2
}else if(mouse_x >= obj_menu.lim_x2){
    x = obj_menu.lim_x2 - 2
}else{
    x = mouse_x
}

if (mouse_check_button_released(mb_left)) {
    isPressed = false
}