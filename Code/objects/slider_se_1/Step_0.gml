
y = obj_text_SFX_1.y + obj_text_SFX_1.sprite_height/2
depth = obj_menu.depth - 1
if(_first){
    _first = false
    exit
}
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