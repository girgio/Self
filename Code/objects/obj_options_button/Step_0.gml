x = obj_menu.x + obj_menu.sprite_width - 15 - sprite_width
depth = obj_menu.depth - 1
obj_quit_button.x = x
obj_quit_button.y = y + 84
if(is_over){
    image_speed = 12/60
}else{
    image_index = 0
    image_speed = 0
}