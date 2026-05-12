if(!isPressed) exit;
if(mouse_x <= Option_menu.lim_x1){
    x = Option_menu.lim_x1 + 4
}else if(mouse_x >= Option_menu.lim_x2){
    x = Option_menu.lim_x2 - 4
}else{
    x = mouse_x
}

if (mouse_check_button_released(mb_left)) {
    isPressed = false
}